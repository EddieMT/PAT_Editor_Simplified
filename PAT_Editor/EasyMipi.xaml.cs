using ExcelDataReader;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
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
                    if (System.Windows.MessageBox.Show(outputFile + " does exist, do you want to overwrite it?", "Confirm", MessageBoxButton.YesNo, MessageBoxImage.Question, MessageBoxResult.No) == MessageBoxResult.No)
                        return;
                }

                List<Mode> modes = new List<Mode>();
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
                            mode.ChannelGroups = ParseChannelGroups(row[1].ToString(), row[2].ToString());
                            mode.UserIDs = ParseUserIDs(row[3].ToString());
                            mode.RegIDs = ParseRegIDs(row[4].ToString());
                            mode.Datas = ParseDatas(row[5].ToString());
                            mode.ReadWriteActions = ParseReadWriteActions(row[6].ToString());
                            startlinenumber = endlinenumber + 1;
                            mode.LineStart = startlinenumber;
                            endlinenumber = (36 * mode.ReadWriteActions.Count(x => x.Action == ReadWrite.Write) * mode.Datas.Count * mode.RegIDs.Count * mode.UserIDs.Count
                                + 37 * mode.ReadWriteActions.Count(x => x.Action == ReadWrite.Read) * mode.Datas.Count * mode.RegIDs.Count * mode.UserIDs.Count) + startlinenumber - 1;
                            mode.LineEnd = endlinenumber;
                            if (modes.Count > 0)
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
                string mipiChannel = "//MIPI-CHANNEL:";
                Dictionary<int, int> channelCombos = new Dictionary<int, int>();
                string mipiTS = "//MIPI-TS:";
                List<int> tsCombos = new List<int>();
                foreach (var mode in modes)
                {
                    foreach(var channelgroup in mode.ChannelGroups)
                    {
                        if (channelCombos.ContainsKey(channelgroup.Clock.ID))
                        {
                            if (channelCombos[channelgroup.Clock.ID] != channelgroup.Data.ID)
                            {
                                throw new Exception(string.Format("[Clock,Data] has confilct between [{0},{1}] and [{0},{2}]!", channelgroup.Clock.ID, channelCombos[channelgroup.Clock.ID], channelgroup.Data.ID));
                            }
                        }
                        else
                        {
                            if (channelCombos.ContainsValue(channelgroup.Data.ID))
                            {
                                throw new Exception(string.Format("[Clock,Data] has confilct between [{0},{1}] and [{2},{1}]!", channelgroup.Clock.ID, channelgroup.Data.ID, channelCombos.First(x => x.Value == channelgroup.Data.ID).Key));
                            }
                            else
                            {
                                channelCombos.Add(channelgroup.Clock.ID, channelgroup.Data.ID);
                            }
                        }
                    }

                    foreach(var action in mode.ReadWriteActions)
                    {
                        if (!tsCombos.Contains(action.TSID))
                        {
                            tsCombos.Add(action.TSID);
                        }
                    }
                }
                mipiTS += string.Join(",", tsCombos);
                foreach (var channelcombo in channelCombos)
                {
                    mipiChannel += string.Format("{0},{1}|", channelcombo.Key, channelcombo.Value);
                }

                var groupbylist = modes.GroupBy(x => x.Name);
                using (FileStream fs = new FileStream(outputFile, FileMode.Create, FileAccess.Write))
                {
                    using (StreamWriter sw = new StreamWriter(fs))
                    {
                        sw.WriteLine(mipiChannel.Substring(0, mipiChannel.Length - 1));
                        sw.WriteLine(mipiTS);
                        sw.WriteLine("//MIPI-START");
                        foreach (var mode in groupbylist)
                        {
                            var list = mode.ToList();
                            string line = string.Format("//{0}:{1}-{2}", mode.Key, list[0].LineStart, list[list.Count - 1].LineEnd);
                            sw.WriteLine(line);
                        }
                        sw.WriteLine("//MIPI-END");
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
                                            string prefix = "FC       1   TSID              ";
                                            prefix = prefix.Replace("ID", ReadWriteAction.TSID.ToString());
                                            sw.WriteLine(string.Format("// Register {0} : Data {1} -----------------------------------------------------------", RegID.ToString("X"), Data.ToString("X")));
                                            #region Start Sequence Control
                                            sw.WriteLine("// SSC: Start Sequence Control");
                                            sValue = "XXX00000010";
                                            string sSSC = string.Empty;
                                            sSSC += prefix + BuildData(sValue[0], mode.ChannelGroups, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[1], mode.ChannelGroups, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[2], mode.ChannelGroups, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[3], mode.ChannelGroups, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[4], mode.ChannelGroups, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[5], mode.ChannelGroups, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[6], mode.ChannelGroups, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[7], mode.ChannelGroups, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[8], mode.ChannelGroups, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[9], mode.ChannelGroups, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[10], mode.ChannelGroups, '0') + ";\n";
                                            sw.Write(sSSC);
                                            #endregion
                                            #region Command Frame
                                            sw.WriteLine("// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])");
                                            sValue = Convert.ToString(UserID, 2).PadLeft(4, '0');
                                            sValue += ReadWriteAction.Action == ReadWrite.Write ? "010" : "011";
                                            sValue += Convert.ToString(RegID, 2).PadLeft(5, '0');
                                            sValue += GetParityBit(sValue);
                                            string sCF = string.Empty;
                                            sCF += prefix + BuildData(sValue[0], mode.ChannelGroups) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[1], mode.ChannelGroups) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[2], mode.ChannelGroups) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[3], mode.ChannelGroups) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[4], mode.ChannelGroups) + ";// Write Command C7 (010: Write, 011: Read)\n";
                                            sCF += prefix + BuildData(sValue[5], mode.ChannelGroups) + ";// Write Command C6\n";
                                            sCF += prefix + BuildData(sValue[6], mode.ChannelGroups) + ";// Write Command C5\n";
                                            sCF += prefix + BuildData(sValue[7], mode.ChannelGroups) + ";// Reg Address C4\n";
                                            sCF += prefix + BuildData(sValue[8], mode.ChannelGroups) + ";// Reg Address C3\n";
                                            sCF += prefix + BuildData(sValue[9], mode.ChannelGroups) + ";// Reg Address C2\n";
                                            sCF += prefix + BuildData(sValue[10], mode.ChannelGroups) + ";// Reg Address C1\n";
                                            sCF += prefix + BuildData(sValue[11], mode.ChannelGroups) + ";// Reg Address C0\n";
                                            sCF += prefix + BuildData(sValue[12], mode.ChannelGroups) + ";// Parity Bit (to make odd sum Cmd + Addr)\n";
                                            if (ReadWriteAction.Action == ReadWrite.Read)
                                                sCF += prefix + BuildData('0', mode.ChannelGroups) + ";// Park Bit\n";
                                            sw.Write(sCF);
                                            #endregion
                                            #region Data
                                            sw.WriteLine("// Data (8 bits + Parity)");
                                            sValue = Convert.ToString(Data, 2).PadLeft(8, '0');
                                            sValue += GetParityBit(sValue);
                                            string sData = string.Empty;
                                            sData += prefix + BuildData(sValue[0], mode.ChannelGroups, isRead: (ReadWriteAction.Action == ReadWrite.Read)) + ";// Data D7\n";
                                            sData += prefix + BuildData(sValue[1], mode.ChannelGroups, isRead: (ReadWriteAction.Action == ReadWrite.Read)) + ";// Data D6\n";
                                            sData += prefix + BuildData(sValue[2], mode.ChannelGroups, isRead: (ReadWriteAction.Action == ReadWrite.Read)) + ";// Data D5\n";
                                            sData += prefix + BuildData(sValue[3], mode.ChannelGroups, isRead: (ReadWriteAction.Action == ReadWrite.Read)) + ";// Data D4\n";
                                            sData += prefix + BuildData(sValue[4], mode.ChannelGroups, isRead: (ReadWriteAction.Action == ReadWrite.Read)) + ";// Data D3\n";
                                            sData += prefix + BuildData(sValue[5], mode.ChannelGroups, isRead: (ReadWriteAction.Action == ReadWrite.Read)) + ";// Data D2\n";
                                            sData += prefix + BuildData(sValue[6], mode.ChannelGroups, isRead: (ReadWriteAction.Action == ReadWrite.Read)) + ";// Data D1\n";
                                            sData += prefix + BuildData(sValue[7], mode.ChannelGroups, isRead: (ReadWriteAction.Action == ReadWrite.Read)) + ";// Data D0\n";
                                            sData += prefix + BuildData(sValue[8], mode.ChannelGroups, isRead: (ReadWriteAction.Action == ReadWrite.Read)) + ";// Parity Bit (to make odd sum Data)\n";
                                            sw.Write(sData);
                                            #endregion
                                            #region Bus Park
                                            sw.WriteLine("// Bus Park");
                                            sValue = "0XX";
                                            string sBP = string.Empty;
                                            sBP += prefix + BuildData(sValue[0], mode.ChannelGroups) + ";// Bus Park (Drive 0 then Tri-State at CLK falling)\n";
                                            sBP += prefix + BuildData(sValue[1], mode.ChannelGroups, '0') + ";//\n";
                                            sBP += prefix + BuildData(sValue[2], mode.ChannelGroups, 'X') + ";//\n";
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

                String pe32exe = String.Format("{0}\\PECOMPILER\\pe32.exe", Environment.CurrentDirectory);
                string filePEZ = Path.ChangeExtension(outputFile, "PEZ");
                using (Process process = new Process())
                {
                    process.StartInfo.FileName = pe32exe;
                    process.StartInfo.Arguments = string.Format(" \"{0}\" \"{1}\"", outputFile, filePEZ);
                    process.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
                    process.Start();
                    process.WaitForExit();
                    process.Close();
                }

                System.Windows.MessageBox.Show("Both PAT & PEZ file have been generated successfully!\n\nYou can click the DEBUG button to test them in panel.");
                txtFilePAT.Text = outputFile;
            }
            catch (Exception ex)
            {
                System.Windows.MessageBox.Show(ex.Message);
            }
        }

        private void btnBrowsePAT_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                OpenFileDialog dlg = new OpenFileDialog();
                dlg.Filter = "PAT files|*.pat";
                if (dlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    txtFilePAT.Text = dlg.FileName;
                }
            }
            catch (Exception ex)
            {
                System.Windows.MessageBox.Show(ex.Message);
            }
        }

        private void btnDebugPAT_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txtFilePAT.Text))
                    throw new Exception("Invalid path of MIPI pat file!");

                string filePAT = txtFilePAT.Text;
                string filePEZ = Path.ChangeExtension(filePAT, "PEZ");
#if REALHW
                if (!File.Exists(filePEZ))
                {
                    System.Windows.MessageBox.Show("Underlying PEZ file, " + filePEZ + ", does not exist, please generate it via OpenATE tool first!");
                    return;
                }
#endif

                Tuple<List<Mode>, List<ChannelGroup>, List<TimingSet>> pat = ParsePAT(filePAT);
                DebugMipi dialog = new DebugMipi(filePEZ, pat.Item1, pat.Item2, pat.Item3);
                dialog.ShowDialog();
            }
            catch (Exception ex)
            {
                System.Windows.MessageBox.Show(ex.Message);
            }
        }

#region private methods

        private List<ChannelGroup> ParseChannelGroups(string ChnsOfClock, string ChnsOfData)
        {
            List<ChannelGroup> values = new List<ChannelGroup>();
            string[] clockChannels = ChnsOfClock.Split(',');
            string[] dataChannels = ChnsOfData.Split(',');
            if (clockChannels.Length > 0 && dataChannels.Length > 0 && clockChannels.Length == dataChannels.Length)
            {
                int channel = 0;
                for (int i = 0; i < clockChannels.Length; i++)
                {
                    ChannelGroup value = new ChannelGroup();

                    if (int.TryParse(clockChannels[i], out channel))
                    {
                        if (channel >= 1 && channel <= 32)
                        {
                            value.Clock.ID = channel;
                        }
                        else
                            throw new Exception(ChnsOfClock + "should be within 1 ~ 32!");
                    }
                    else
                    {
                        throw new Exception(ChnsOfClock + " should be unsigned integer!");
                    }

                    if (int.TryParse(dataChannels[i], out channel))
                    {
                        if (channel >= 1 && channel <= 32)
                        {
                            value.Data.ID = channel;
                        }
                        else
                            throw new Exception(ChnsOfData + "should be within 1 ~ 32!");
                    }
                    else
                    {
                        throw new Exception(ChnsOfData + " should be unsigned integer!");
                    }

                    values.Add(value);
                }
                return values;
            }
            else
            {
                throw new Exception("Invalid ChannelOfClock - " + ChnsOfClock + " and ChannelOfData - " + ChnsOfData + "!");
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
                    if (uint.TryParse(ReadWriteActions.Substring(1), out value))
                        action.TSID = (int)value;
                    else
                        throw new Exception("Invalid TS - " + ReadWriteActions + "!");
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
                    if (uint.TryParse(actions[0].Substring(1), out value))
                        action1.TSID = (int)value;
                    else
                        throw new Exception("Invalid TS - " + actions[0] + "!");
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
                    if (uint.TryParse(actions[1].Substring(1), out value))
                        action2.TSID = (int)value;
                    else
                        throw new Exception("Invalid TS - " + actions[1] + "!");
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

        private string BuildData(char data, List<ChannelGroup> channelGroups, char clock = '1', bool isRead = false)
        {
            string res = string.Empty;

            for (uint i = 1; i <= 32; i++)
            {
                if (channelGroups.Any(x => x.Clock.ID == i))
                {
                    res += clock;
                    continue;
                }

                if (channelGroups.Any(x => x.Data.ID == i))
                {
                    if (isRead)
                        res += (data == '0' ? "L" : "H");
                    else
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

        private Tuple<List<Mode>, List<ChannelGroup>, List<TimingSet>> ParsePAT(string filePAT)
        {
            try
            {
                List<Mode> availableModes = new List<Mode>();
                List<ChannelGroup> availableChannelGroups = new List<ChannelGroup>();
                List<TimingSet> availableTimingSets = new List<TimingSet>();

                using (FileStream fs = new FileStream(filePAT, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
                {
                    using (StreamReader sr = new StreamReader(fs))
                    {
                        bool valid = false;
                        string line = string.Empty;
                        while ((line = sr.ReadLine()) != null)
                        {
                            if (line == string.Empty)
                                continue;
                            else if (line.ToUpper().Trim().StartsWith("//MIPI-CHANNEL"))
                            {
                                line = line.Split(':')[1].Trim();
                                string[] channelGroups = line.Split('|');
                                foreach(var channelgroup in channelGroups)
                                {
                                    int iClock = 0;
                                    int iData = 0;
                                    string sClock = channelgroup.Split(',')[0];
                                    string sData = channelgroup.Split(',')[1];
                                    if (!int.TryParse(sClock, out iClock))
                                        throw new Exception("Invalid channel in " + line);
                                    if (!int.TryParse(sData, out iData))
                                        throw new Exception("Invalid channel in " + line);
                                    ChannelGroup cg = new ChannelGroup();
                                    cg.Clock.ID = iClock;
                                    cg.Data.ID = iData;
                                    availableChannelGroups.Add(cg);
                                }
                            }
                            else if (line.ToUpper().Trim().StartsWith("//MIPI-TS"))
                            {
                                line = line.Split(':')[1].Trim();
                                string[] timingSets = line.Split(',');
                                foreach (var timingset in timingSets)
                                {
                                    int id = 0;
                                    if (!int.TryParse(timingset, out id))
                                        throw new Exception("Invalid timing set in " + line);
                                    TimingSet ts = new TimingSet() { ID = id };
                                    availableTimingSets.Add(ts);
                                }
                            }
                            else if (line.ToUpper().Trim().StartsWith("//MIPI-START"))
                                valid = true;
                            else if (line.ToUpper().Trim().StartsWith("//MIPI-END"))
                                break;
                            else
                            {
                                if (valid)
                                {
                                    line = line.Substring(2);
                                    string name = line.Split(':')[0].Trim();
                                    string start = line.Split(':')[1].Trim().Split('-')[0].Trim();
                                    string end = line.Split(':')[1].Trim().Split('-')[1].Trim();
                                    int iStart = 0;
                                    if (!int.TryParse(start, out iStart))
                                        throw new Exception("Invalid line in " + line);
                                    int iEnd = 0;
                                    if (!int.TryParse(end, out iEnd))
                                        throw new Exception("Invalid line in " + line);
                                    Mode mode = new Mode() { Name = name, LineStart = iStart, LineEnd = iEnd };
                                    availableModes.Add(mode);
                                }
                            }
                        }
                        sr.Close();
                    }
                }

                if (availableModes.Count == 0)
                    throw new Exception("No available mode detected!");

                if (availableChannelGroups.Count == 0)
                    throw new Exception("No available channel detected!");

                if (availableTimingSets.Count == 0)
                    throw new Exception("No available timing set detected!");

                return Tuple.Create(availableModes, availableChannelGroups, availableTimingSets);
            }
            catch(Exception ex)
            {
                throw new Exception("Invalid format in " + filePAT + ", please check the header section!\n\n" + ex.Message);
            }
        }

#endregion
    }

    public class Mode
    {
        public string Name { get; set; }
        public List<uint> BitsOfClock { get; set; } = new List<uint>();
        public List<uint> BitsOfData { get; set; } = new List<uint>();
        public List<ChannelGroup> ChannelGroups { get; set; } = new List<ChannelGroup>();
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
        public int TSID { get; set; }
    }

    public enum ReadWrite
    {
        Read,
        Write
    }

    public class ChannelGroup
    {
        public Channel Clock { get; set; } = new Channel();
        public Channel Data { get; set; } = new Channel();
        public Channel VIO { get; set; } = new Channel();
    }

    public class Channel
    {
        public int ID { get; set; }
        public DrivePattern DrivePattern { get; set; }
        public double Vil { get; set; }
        public double Vih { get; set; }
        public double Vol { get; set; }
        public double Voh { get; set; }
        public int Start { get; set; }
        public int Stop { get; set; }
        public int Strob { get; set; }
        public int VIO_HL { get; set; }
    }

    public enum DrivePattern
    {
        Pattern,
        Drive
    }

    public class TimingSet
    {
        public int ID { get; set; }
        public int data { get; set; }
    }
}
