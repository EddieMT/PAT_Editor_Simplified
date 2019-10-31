using ExcelDataReader;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Forms;

namespace PAT_Editor
{
    /// <summary>
    /// Interaction logic for EasyMipi.xaml
    /// </summary>
    public partial class EasyMipi : Window
    {
        List<Mode> modes;

        public EasyMipi()
        {
            InitializeComponent();
        }

        private void btnBrowse_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                OpenFileDialog dlg = new OpenFileDialog();
                dlg.Filter = "CSV files|*.csv";
                if (dlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    txtMipiConfigFilePath.Text = dlg.FileName;
                }
                else
                {
                    return;
                }

                modes = new List<Mode>();
                int startlinenumber = 0;
                int endlinenumber = -1;
                using (var stream = File.Open(txtMipiConfigFilePath.Text, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
                {
                    using (var reader = ExcelReaderFactory.CreateCsvReader(stream))
                    {
                        // The result of each spreadsheet is in result.Tables
                        var result = reader.AsDataSet();
                        var sheet = result.Tables[0];
                        foreach (DataRow row in sheet.Rows)
                        {
                            if (row[0].ToString().ToUpper() == "PATITEM")
                                continue;

                            Mode mode = new Mode();
                            mode.Name = row[0].ToString();
                            mode.BitsOfClock = ParseBitsOfClock(row[1].ToString());
                            mode.BitsOfData = ParseBitsOfData(row[2].ToString());
                            var intersection = mode.BitsOfClock.Intersect(mode.BitsOfData);
                            if (intersection.Count() > 0)
                            {
                                throw new Exception(mode.Name + " has same bit setting(s) " + string.Join(",", intersection) + " in BitOfCLK and BitOfData!");
                            }
                            mode.UserIDs = ParseUserIDs(row[3].ToString());
                            mode.RegIDs = ParseRegIDs(row[4].ToString());
                            mode.Datas = ParseDatas(row[5].ToString());
                            mode.ReadWriteActions = ParseReadWriteActions(row[6].ToString());
                            startlinenumber = endlinenumber + 1;
                            mode.LineStart = startlinenumber;
                            endlinenumber = (36 * mode.ReadWriteActions.Count * mode.Datas.Count * mode.RegIDs.Count * mode.UserIDs.Count) + startlinenumber - 1;
                            mode.LineEnd = endlinenumber;
                            if (modes.Count > 1)
                            {
                                if (modes.Any(x => x.Name == mode.Name) && modes[modes.Count - 1].Name != mode.Name)
                                {
                                    throw new Exception(mode.Name + " should be set together!");
                                }
                            }
                            modes.Add(mode);
                        }
                    }
                }
                if (modes.Count == 0)
                    throw new Exception("Cannot find any MIPI setting!");
                btnGenerate.IsEnabled = true;
            }
            catch(Exception ex)
            {
                System.Windows.MessageBox.Show(ex.Message);
            }
        }

        private void btnGenerate_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txtMipiConfigFilePath.Text))
                    throw new Exception("Invalid path of MIPI config file!");

                string outputFile = Path.ChangeExtension(txtMipiConfigFilePath.Text, "PAT");
                if (File.Exists(outputFile))
                {
                    if (System.Windows.MessageBox.Show(outputFile + "does exist, do you want to overwrite it?", "Confirm", MessageBoxButton.YesNo, MessageBoxImage.Question, MessageBoxResult.No) == MessageBoxResult.No)
                        return;
                }

                var groupbylist = modes.GroupBy(x => x.Name);
                using (FileStream fs = new FileStream(outputFile, FileMode.Create, FileAccess.Write))
                {
                    using (StreamWriter sw = new StreamWriter(fs))
                    {
                        foreach(var mode in groupbylist)
                        {
                            var list = mode.ToList();
                            string line = string.Format("//{0}:{1}-{2}", mode.Key, list[0].LineStart, list[list.Count - 1].LineEnd);
                            sw.WriteLine(line);
                        }
                        sw.WriteLine();
                    }
                }

                using (FileStream fs = new FileStream(outputFile, FileMode.Append, FileAccess.Write))
                {
                    using (StreamWriter sw = new StreamWriter(fs))
                    {
                        foreach (var mode in modes)
                        {
                            sw.WriteLine(string.Format("//--------------------------------------------{0}-----------------------------------------------------------", mode.Name));
                            foreach (var UserID in mode.UserIDs)
                            {
                                foreach (var RegID in mode.RegIDs)
                                {
                                    foreach (var Data in mode.Datas)
                                    {
                                        foreach (var ReadWriteAction in mode.ReadWriteActions)
                                        {
                                            string sValue = string.Empty;
                                            string prefix = "FC       1   TSX              ";
                                            prefix = prefix.Replace("TSX", ReadWriteAction.TSX);
                                            sw.WriteLine(string.Format("// Register {0} : Data {1} -----------------------------------------------------------", RegID, Data));
                                            #region Start Sequence Control
                                            sw.WriteLine("// SSC: Start Sequence Control");
                                            sValue = "XXX00000010";
                                            string sSSC = string.Empty;
                                            sSSC += prefix + BuildData(sValue[0], mode.BitsOfClock, mode.BitsOfData, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[1], mode.BitsOfClock, mode.BitsOfData, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[2], mode.BitsOfClock, mode.BitsOfData, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[3], mode.BitsOfClock, mode.BitsOfData, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[4], mode.BitsOfClock, mode.BitsOfData, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[5], mode.BitsOfClock, mode.BitsOfData, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[6], mode.BitsOfClock, mode.BitsOfData, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[7], mode.BitsOfClock, mode.BitsOfData, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[8], mode.BitsOfClock, mode.BitsOfData, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[9], mode.BitsOfClock, mode.BitsOfData, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[10], mode.BitsOfClock, mode.BitsOfData, '0') + ";\n";
                                            sw.Write(sSSC);
                                            #endregion
                                            #region Command Frame
                                            sw.WriteLine("// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])");
                                            sValue = Convert.ToString(UserID, 2).PadLeft(4, '0');
                                            sValue += ReadWriteAction.Action == ReadWrite.Write ? "010" : "011";
                                            sValue += Convert.ToString(RegID, 2).PadLeft(5, '0');
                                            sValue += GetParityBit(sValue);
                                            string sCF = string.Empty;
                                            sCF += prefix + BuildData(sValue[0], mode.BitsOfClock, mode.BitsOfData) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[1], mode.BitsOfClock, mode.BitsOfData) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[2], mode.BitsOfClock, mode.BitsOfData) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[3], mode.BitsOfClock, mode.BitsOfData) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[4], mode.BitsOfClock, mode.BitsOfData) + ";// Write Command C7 (010: Write, 011: Read)\n";
                                            sCF += prefix + BuildData(sValue[5], mode.BitsOfClock, mode.BitsOfData) + ";// Write Command C6\n";
                                            sCF += prefix + BuildData(sValue[6], mode.BitsOfClock, mode.BitsOfData) + ";// Write Command C5\n";
                                            sCF += prefix + BuildData(sValue[7], mode.BitsOfClock, mode.BitsOfData) + ";// Reg Address C4\n";
                                            sCF += prefix + BuildData(sValue[8], mode.BitsOfClock, mode.BitsOfData) + ";// Reg Address C3\n";
                                            sCF += prefix + BuildData(sValue[9], mode.BitsOfClock, mode.BitsOfData) + ";// Reg Address C2\n";
                                            sCF += prefix + BuildData(sValue[10], mode.BitsOfClock, mode.BitsOfData) + ";// Reg Address C1\n";
                                            sCF += prefix + BuildData(sValue[11], mode.BitsOfClock, mode.BitsOfData) + ";// Reg Address C0\n";
                                            sCF += prefix + BuildData(sValue[12], mode.BitsOfClock, mode.BitsOfData) + ";// Parity Bit (to make odd sum Cmd + Addr)\n";
                                            sw.Write(sCF);
                                            #endregion
                                            #region Data
                                            sw.WriteLine("// Data (8 bits + Parity)");
                                            sValue = Convert.ToString(Data, 2).PadLeft(8, '0');
                                            sValue += GetParityBit(sValue);
                                            string sData = string.Empty;
                                            sData += prefix + BuildData(sValue[0], mode.BitsOfClock, mode.BitsOfData) + ";// Data D7\n";
                                            sData += prefix + BuildData(sValue[1], mode.BitsOfClock, mode.BitsOfData) + ";// Data D6\n";
                                            sData += prefix + BuildData(sValue[2], mode.BitsOfClock, mode.BitsOfData) + ";// Data D5\n";
                                            sData += prefix + BuildData(sValue[3], mode.BitsOfClock, mode.BitsOfData) + ";// Data D4\n";
                                            sData += prefix + BuildData(sValue[4], mode.BitsOfClock, mode.BitsOfData) + ";// Data D3\n";
                                            sData += prefix + BuildData(sValue[5], mode.BitsOfClock, mode.BitsOfData) + ";// Data D2\n";
                                            sData += prefix + BuildData(sValue[6], mode.BitsOfClock, mode.BitsOfData) + ";// Data D1\n";
                                            sData += prefix + BuildData(sValue[7], mode.BitsOfClock, mode.BitsOfData) + ";// Data D0\n";
                                            sData += prefix + BuildData(sValue[8], mode.BitsOfClock, mode.BitsOfData) + ";// Parity Bit (to make odd sum Data)\n";
                                            sw.Write(sData);
                                            #endregion
                                            #region Bus Park
                                            sw.WriteLine("// Bus Park");
                                            sValue = "0XX";
                                            string sBP = string.Empty;
                                            sBP += prefix + BuildData(sValue[0], mode.BitsOfClock, mode.BitsOfData) + ";// Bus Park (Drive 0 then Tri-State at CLK falling)\n";
                                            sBP += prefix + BuildData(sValue[1], mode.BitsOfClock, mode.BitsOfData, '0') + ";//\n";
                                            sBP += prefix + BuildData(sValue[2], mode.BitsOfClock, mode.BitsOfData, '0') + ";//\n";
                                            sw.Write(sBP);
                                            #endregion
                                            sw.WriteLine();
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                btnGenerate.IsEnabled = false;
                System.Windows.MessageBox.Show("Done!");
            }
            catch (Exception ex)
            {
                System.Windows.MessageBox.Show(ex.Message);
            }
        }

        #region private methods

        private List<uint> ParseBitsOfClock(string BitsOfClock)
        {
            List<uint> values = new List<uint>();
            string[] bits = BitsOfClock.Split(',');
            if (bits.Length >= 1 && bits.Length <= 32)
            {
                uint value = 0;
                foreach (var bit in bits)
                {
                    if (uint.TryParse(bit, out value))
                    {
                        if (value <= 32 && value >= 1)
                        {
                            if (!values.Contains(value))
                                values.Add(value);
                            else
                                throw new Exception("Duplicated!");
                        }
                        else
                            throw new Exception("Range 1 ~ 32!");
                    }
                    else
                    {
                        throw new Exception("Unsigned integer!");
                    }
                }
                return values;
            }
            else
            {
                throw new Exception("Invalid BitOfClock - " + BitsOfClock + "!");
            }
        }

        private List<uint> ParseBitsOfData(string BitsOfData)
        {
            List<uint> values = new List<uint>();
            string[] bits = BitsOfData.Split(',');
            if (bits.Length >= 1 && bits.Length <= 32)
            {
                uint value = 0;
                foreach (var bit in bits)
                {
                    if (uint.TryParse(bit, out value))
                    {
                        if (value <= 32 && value >= 1)
                        {
                            if (!values.Contains(value))
                                values.Add(value);
                            else
                                throw new Exception("Duplicated!");
                        }
                        else
                            throw new Exception("Range 1 ~ 32!");
                    }
                    else
                    {
                        throw new Exception("Unsigned integer!");
                    }
                }
                return values;
            }
            else
            {
                throw new Exception("Invalid BitOfData - " + BitsOfData + "!");
            }
        }

        private List<uint> ParseUserIDs(string UserIDs)
        {
            List<uint> values = new List<uint>();
            string[] userIDs = UserIDs.Split('-');
            if (userIDs.Length == 1)
            {
                uint value = 0;
                if (uint.TryParse(UserIDs, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                {
                    if (value > 0xF)
                    {
                        throw new Exception("Range 0 ~ F!");
                    }
                    else
                    {
                        return new List<uint>() { value };
                    }
                }
                else
                {
                    throw new Exception("Unsigned integer!");
                }
            }
            else if (userIDs.Length == 2)
            {
                uint valueStart = 0;
                if (uint.TryParse(userIDs[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture, out valueStart))
                {
                    if (valueStart > 0xF)
                    {
                        throw new Exception("Range 0 ~ F!");
                    }
                }
                else
                {
                    throw new Exception("Unsigned integer!");
                }

                uint valueEnd = 0;
                if (uint.TryParse(userIDs[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture, out valueEnd))
                {
                    if (valueEnd > 0xF)
                    {
                        throw new Exception("Range 0 ~ F!");
                    }
                }
                else
                {
                    throw new Exception("Unsigned integer!");
                }

                if (valueStart >= valueEnd)
                    throw new Exception(userIDs[1] + "should be greater than " + userIDs[0] + "!");

                for(uint i = valueStart; i <= valueEnd; i++)
                {
                    values.Add(i);
                }
                return values;
            }
            else
            {
                throw new Exception("Invalid UserID - " + UserIDs + "!");
            }
        }

        private List<uint> ParseRegIDs(string RegIDs)
        {
            List<uint> values = new List<uint>();
            string[] regIDs = RegIDs.Split('-');
            if (regIDs.Length == 1)
            {
                uint value = 0;
                if (uint.TryParse(RegIDs, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                {
                    if (value > 0x1F)
                    {
                        throw new Exception("Range 0 ~ 1F!");
                    }
                    else
                    {
                        return new List<uint>() { value };
                    }
                }
                else
                {
                    throw new Exception("Unsigned integer!");
                }
            }
            else if (regIDs.Length == 2)
            {
                uint valueStart = 0;
                if (uint.TryParse(regIDs[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture, out valueStart))
                {
                    if (valueStart > 0x1F)
                    {
                        throw new Exception("Range 0 ~ 1F!");
                    }
                }
                else
                {
                    throw new Exception("Unsigned integer!");
                }

                uint valueEnd = 0;
                if (uint.TryParse(regIDs[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture, out valueEnd))
                {
                    if (valueEnd > 0x1F)
                    {
                        throw new Exception("Range 0 ~ 1F!");
                    }
                }
                else
                {
                    throw new Exception("Unsigned integer!");
                }

                if (valueStart >= valueEnd)
                    throw new Exception(regIDs[1] + "should be greater than " + regIDs[0] + "!");

                for (uint i = valueStart; i <= valueEnd; i++)
                {
                    values.Add(i);
                }
                return values;
            }
            else
            {
                throw new Exception("Invalid RegID - " + RegIDs + "!");
            }
        }

        private List<uint> ParseDatas(string Datas)
        {
            List<uint> values = new List<uint>();
            string[] datas = Datas.Split('-');
            if (datas.Length == 1)
            {
                uint value = 0;
                if (uint.TryParse(Datas, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                {
                    if (value > 0xFF)
                    {
                        throw new Exception("Range 0 ~ FF!");
                    }
                    else
                    {
                        return new List<uint>() { value };
                    }
                }
                else
                {
                    throw new Exception("Unsigned integer!");
                }
            }
            else if (datas.Length == 2)
            {
                uint valueStart = 0;
                if (uint.TryParse(datas[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture, out valueStart))
                {
                    if (valueStart > 0xFF)
                    {
                        throw new Exception("Range 0 ~ FF!");
                    }
                }
                else
                {
                    throw new Exception("Unsigned integer!");
                }

                uint valueEnd = 0;
                if (uint.TryParse(datas[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture, out valueEnd))
                {
                    if (valueEnd > 0xFF)
                    {
                        throw new Exception("Range 0 ~ FF!");
                    }
                }
                else
                {
                    throw new Exception("Unsigned integer!");
                }

                if (valueStart >= valueEnd)
                    throw new Exception(datas[1] + "should be greater than " + datas[0] + "!");

                for (uint i = valueStart; i <= valueEnd; i++)
                {
                    values.Add(i);
                }
                return values;
            }
            else
            {
                throw new Exception("Invalid Data - " + Datas + "!");
            }
        }

        private List<ReadWriteAction> ParseReadWriteActions(string ReadWriteActions)
        {
            string[] actions = ReadWriteActions.Split('-');
            if (actions.Length == 1)
            {
                uint value = 0;
                if (uint.TryParse(ReadWriteActions.Substring(1), out value))
                {
                    ReadWriteAction action = new ReadWriteAction();
                    if (ReadWriteActions.ToUpper().StartsWith("W"))
                        action.Action = ReadWrite.Write;
                    else if (ReadWriteActions.ToUpper().StartsWith("R"))
                        action.Action = ReadWrite.Read;
                    else
                        throw new Exception("Invalid W/R - " + ReadWriteActions + "!");
                    action.TSX = "TS" + ReadWriteActions.Substring(1);
                    return new List<ReadWriteAction>() { action };
                }
                else
                {
                    throw new Exception("Invalid TS - " + ReadWriteActions + "!");
                }
            }
            else if (actions.Length == 2)
            {
                ReadWriteAction action1 = new ReadWriteAction();
                ReadWriteAction action2 = new ReadWriteAction();
                uint value = 0;
                if (uint.TryParse(actions[0].Substring(1), out value))
                {
                    if (actions[0].ToUpper().StartsWith("W"))
                        action1.Action = ReadWrite.Write;
                    else if (actions[0].ToUpper().StartsWith("R"))
                        action1.Action = ReadWrite.Read;
                    else
                        throw new Exception("Invalid W/R - " + actions[0] + "!");
                    action1.TSX = "TS" + actions[0].Substring(1);
                }
                else
                {
                    throw new Exception("Invalid TS - " + actions[0] + "!");
                }

                if (uint.TryParse(actions[1].Substring(1), out value))
                {
                    
                    if (actions[1].ToUpper().StartsWith("W"))
                        action2.Action = ReadWrite.Write;
                    else if (actions[1].ToUpper().StartsWith("R"))
                        action2.Action = ReadWrite.Read;
                    else
                        throw new Exception("Invalid W/R - " + actions[1] + "!");
                    action2.TSX = "TS" + actions[1].Substring(1);
                }
                else
                {
                    throw new Exception("Invalid TS - " + actions[1] + "!");
                }

                if (action1.Action == action2.Action)
                    throw new Exception("Duplicated W/R!");

                return new List<ReadWriteAction>() { action1, action2 };
            }
            else
            {
                throw new Exception("Invalid W/R TS - " + ReadWriteActions + "!");
            }
        }

        private string BuildData(char data, List<uint> bitsOfClock, List<uint> bitsofData, char clock = '1')
        {
            string res = string.Empty;

            for (uint i = 1; i <= 32; i++)
            {
                if (bitsOfClock.Contains(i))
                {
                    res += clock;
                    continue;
                }

                if (bitsofData.Contains(i))
                {
                    res += data;
                    continue;
                }

                res += 'X';
            }

            return res;
        }

        private char GetParityBit(string sValue)
        {
            int count = sValue.Count(x => x == '1');
            if (count % 2 == 0)
                return '1';
            else
                return '0';
        }

        #endregion
    }

    public class Mode
    {
        public string Name { get; set; }
        public List<uint> BitsOfClock { get; set; } = new List<uint>();
        public List<uint> BitsOfData { get; set; } = new List<uint>();
        public List<uint> UserIDs { get; set; } = new List<uint>();
        public List<uint> RegIDs { get; set; } = new List<uint>();
        public List<uint> Datas { get; set; } = new List<uint>();
        public List<ReadWriteAction> ReadWriteActions { get; set; } = new List<ReadWriteAction>();
        public int LineStart { get; set; }
        public int LineEnd { get; set; }
    }

    public class ReadWriteAction
    {
        public ReadWrite Action { get; set; }
        public string TSX { get; set; }
    }

    public enum ReadWrite
    {
        Read,
        Write
    }
}
