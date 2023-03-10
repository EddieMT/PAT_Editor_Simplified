using ExcelDataReader;
using Newtonsoft.Json;
using NPOI.SS.UserModel;
using NPOI.SS.Util;
using NPOI.XSSF.UserModel;
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
                dlg.Filter = "Pattern配置文件|*.csv;*.xlsx";
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

                string fileExtension = Path.GetExtension(txtMipiConfigFilePath.Text).ToUpper();
                if (fileExtension == ".XLSX")
                {
                    GeneratePATbyXLSX(outputFile);
                }
                else
                {
                    GeneratePATbyCSV(outputFile);
                }

                GeneratePEZ(outputFile);
            }
            catch (IOException ex)
            {
                System.Windows.MessageBox.Show(ex.Message);
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

        #region private methods for version3

        private void GeneratePATbyXLSX(string filePAT)
        {
            BasicPatternSettings basicPatternSettings;
            MipiPatternSettings mipiPatternSettings = new MipiPatternSettings();
            GeneralPatternSettings generalPatternSettings = new GeneralPatternSettings();
            using (FileStream fs = new FileStream(txtMipiConfigFilePath.Text, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
            {
                IWorkbook workbook = new XSSFWorkbook(fs);

                ISheet sheetBasic = workbook.GetSheet("基础配置");
                if (sheetBasic == null)
                {
                    throw new Exception("未检测到基础配置，请检查Pattern配置文件！");
                }
                else
                {
                    basicPatternSettings = LoadBasicInfo(sheetBasic);
                }

                int startlinenumber = 0;
                ISheet sheetMIPI = workbook.GetSheet("MIPI配置");
                if (sheetMIPI != null)
                {
                    string cellValue = GetCellValue(sheetMIPI, 0, 0);
                    if (string.Compare(cellValue, "PRODUCT", true) == 0)
                    {
                        mipiPatternSettings = LoadMipiPatternVC(sheetMIPI, basicPatternSettings,ref startlinenumber);
                    }
                    else
                    {
                        mipiPatternSettings = LoadMipiPattern(sheetMIPI, basicPatternSettings, ref startlinenumber);
                    }
                }

                ISheet sheetGeneral = workbook.GetSheet("通用配置");
                if (sheetGeneral != null)
                {
                    generalPatternSettings = LoadGeneralPattern(sheetGeneral, basicPatternSettings, ref startlinenumber);
                }
            }

            using (FileStream fs = new FileStream(filePAT, FileMode.Create, FileAccess.Write))
            {
                using (StreamWriter sw = new StreamWriter(fs))
                {
                    string line = string.Empty;

                    #region write basicMipiSettings
                    sw.WriteLine("//Time Sets");
                    foreach (var timeSet in basicPatternSettings.TimeSets.Values)
                    {
                        sw.WriteLine("//{0}:{1}", timeSet.TSName, timeSet.SpeedRateByMHz);
                    }

                    sw.WriteLine("//Pin Map");
                    string pinName = "//Pin".PadRight(20);
                    string site1 = "Site1".PadRight(10);
                    string site2 = "Site2".PadRight(10);
                    string site3 = "Site3".PadRight(10);
                    string site4 = "Site4".PadRight(10);
                    string tsw = "TSW".PadRight(10);
                    string tsr = "TSR".PadRight(10);
                    line = pinName + site1 + site2 + site3 + site4 + tsw + tsr;
                    sw.WriteLine(line);
                    foreach(var pin in basicPatternSettings.PinMap.Values)
                    {
                        pinName = "//" + pin.PinName.PadRight(20);
                        site1 = (pin.Site1 != uint.MaxValue) ? pin.Site1.ToString().PadRight(10) : String.Empty.PadRight(10);
                        site2 = (pin.Site2 != uint.MaxValue) ? pin.Site2.ToString().PadRight(10) : String.Empty.PadRight(10);
                        site3 = (pin.Site3 != uint.MaxValue) ? pin.Site3.ToString().PadRight(10) : String.Empty.PadRight(10);
                        site4 = (pin.Site4 != uint.MaxValue) ? pin.Site4.ToString().PadRight(10) : String.Empty.PadRight(10);
                        tsw = pin.TSW.TSName.PadRight(10);
                        tsr = pin.TSR.TSName.PadRight(10);
                        line = pinName + site1 + site2 + site3 + site4 + tsw + tsr;
                        sw.WriteLine(line);
                    }

                    sw.WriteLine("//Clock Data Pairs");
                    if (basicPatternSettings.ChannelPairs.Count > 0)
                    {
                        List<string> channelPairs = new List<string>();
                        foreach (var pair in basicPatternSettings.ChannelPairs)
                        {
                            string channelPair = "{" + string.Format("{0},{1}", pair.Key, pair.Value) + "}";
                            channelPairs.Add(channelPair);
                        }
                        line = "//" + string.Join(" ", channelPairs);
                        sw.WriteLine(line);
                    }

                    sw.WriteLine("//Truth Table");
                    if (basicPatternSettings.TruthTable.Count > 0)
                    {
                        var firstDeviceMode = basicPatternSettings.TruthTable.First().Value;
                        line = "//Mode".PadRight(20);
                        foreach(var pin in firstDeviceMode.TruthValues.Keys)
                        {
                            line += pin.PinName.PadRight(20);
                        }
                        line += "TSW";
                        sw.WriteLine(line);

                        foreach(var deviceMode in basicPatternSettings.TruthTable.Values)
                        {
                            line = "//" + deviceMode.DeviceModeName.PadRight(20);
                            foreach (var truthValues in deviceMode.TruthValues.Values)
                            {
                                line += truthValues.PadRight(20);
                            }
                            line += deviceMode.TSW.TSName;
                            sw.WriteLine(line);
                        }
                    }
                    #endregion

                    sw.WriteLine();

                    #region summary line number
                    sw.WriteLine("//MIPI-START");
                    if (mipiPatternSettings.MipiModes.Count > 0)
                    {
                        foreach (var mipiMode in mipiPatternSettings.MipiModes.Values)
                        {
                            line = string.Format("//{0}:{1}-{2}", mipiMode.MipiModeName, mipiMode.LineStart, mipiMode.LineEnd);
                            sw.WriteLine(line);
                            foreach (var mipiGroup in mipiMode.MipiGroups.Values)
                            {
                                int stepIndex = 1;
                                foreach (var mipiStep in mipiGroup.MipiSteps)
                                {
                                    line = string.Format("////{0}[{1}]:{2}", mipiGroup.MipiGroupName, stepIndex, JsonConvert.SerializeObject(mipiStep.Summary));
                                    sw.WriteLine(line);
                                    stepIndex++;
                                }
                            }
                        }
                    }
                    if (generalPatternSettings.GeneralModes.Count > 0)
                    {
                        foreach (var generalMode in generalPatternSettings.GeneralModes.Values)
                        {
                            if (generalMode.TriggerAt > 0)
                                line = string.Format("//{0}:{1}-{2}-{3}", generalMode.GeneralModeName, generalMode.LineStart, generalMode.LineEnd, generalMode.TriggerLine);
                            else
                                line = string.Format("//{0}:{1}-{2}", generalMode.GeneralModeName, generalMode.LineStart, generalMode.LineEnd);
                            sw.WriteLine(line);
                        }
                    }
                    sw.WriteLine("//MIPI-END");
                    #endregion

                    #region write mipiModeSettings
                    if (mipiPatternSettings.MipiModes.Count > 0)
                    {
                        foreach(var mipiMode in mipiPatternSettings.MipiModes.Values)
                        {
                            sw.WriteLine(string.Format("//--------------------------------------------{0}-----------------------------------------------------------", mipiMode.MipiModeName));
                            foreach (var mipiGroup in mipiMode.MipiGroups.Values)
                            {
                                sw.WriteLine(string.Format("//--------------------------------------------{0}.{1}-----------------------------------------------------------", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                                string supplementalLine = "FC       {0}   {1}              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//";
                                int indexStep = 1;
                                foreach (var mipiStep in mipiGroup.MipiSteps)
                                {
                                    sw.WriteLine(string.Format("//--------------------------------------------{0}.{1}[{2}]-----------------------------------------------------------", mipiMode.MipiModeName, mipiGroup.MipiGroupName, indexStep));
                                    int indexCode = 1;
                                    foreach (var mipiCode in mipiStep.MipiCodes)
                                    {
                                        sw.WriteLine(string.Format("//--------------------------------------------{0}.{1}[{2}][{3}]-----------------------------------------------------------", mipiMode.MipiModeName, mipiGroup.MipiGroupName, indexStep, indexCode));
                                        if (mipiCode.MipiCodeType == ReadWrite.Delay)
                                        {
                                            string prefix = "FC       {0}   {1}              ";
                                            sw.WriteLine(string.Format("// DELAY({0})-----------------------------------------------------------", mipiCode.ElapsedMicroseconds));
                                            uint tempLineCount = mipiCode.ElapsedMicroseconds * mipiStep.CLK.TSW.SpeedRateByMHz;
                                            uint tempRemainder = tempLineCount % 1000;
                                            tempLineCount = (uint)Math.Ceiling((double)tempLineCount / 1000);
                                            for (int i = 1; i <= tempLineCount; i++)
                                            {
                                                if (i == tempLineCount)
                                                {
                                                    if (tempRemainder == 0)
                                                        prefix = string.Format(prefix, "1000", mipiStep.CLK.TSW.TSName);
                                                    else
                                                        prefix = string.Format(prefix, tempRemainder.ToString().PadRight(4), mipiStep.CLK.TSW.TSName);
                                                }
                                                else
                                                {
                                                    prefix = string.Format(prefix, "1000", mipiStep.CLK.TSW.TSName);
                                                }
                                                line = prefix + BuildData('0', mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";//\n";
                                                sw.WriteLine(line);
                                            }
                                        }
                                        else if (mipiCode.MipiCodeType == ReadWrite.Reset)
                                        {
                                            sw.WriteLine("// PATTERN_RESET-----------------------------------------------------------");
                                            for (int i = 0; i < 3; i++)
                                            {
                                                line = string.Format(supplementalLine, "1", "TS4");
                                                sw.WriteLine(line);
                                            }
                                        }
                                        else
                                        {
                                            string sValue = string.Empty;
                                            string prefix = "FC       1   {0}              ";
                                            if (mipiCode.MipiCodeType == ReadWrite.Read || mipiCode.MipiCodeType == ReadWrite.ExtendRead
                                                || mipiCode.MipiCodeType == ReadWrite.LongExtendRead || mipiCode.MipiCodeType == ReadWrite.UniversalExtendRead)
                                            {
                                                prefix = string.Format(prefix, mipiStep.CLK.TSR.TSName);
                                            }
                                            else
                                            {
                                                prefix = string.Format(prefix, mipiStep.CLK.TSW.TSName);
                                            }
                                            sw.WriteLine(string.Format("// Register {0} : Data {1} -----------------------------------------------------------", mipiCode.RegIDString, mipiCode.DataString));
                                            #region Start Sequence Control
                                            sw.WriteLine("// SSC: Start Sequence Control");
                                            sValue = "XXX00000010";
                                            string sSSC = string.Empty;
                                            sSSC += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[9], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";\n";
                                            sSSC += prefix + BuildData(sValue[10], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";\n";
                                            sw.Write(sSSC);
                                            #endregion
                                            #region Command Frame
                                            if (mipiCode.MipiCodeType == ReadWrite.Read || mipiCode.MipiCodeType == ReadWrite.Write)
                                            {
                                                sw.WriteLine("// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])");
                                                sValue = Convert.ToString(mipiCode.UserID, 2).PadLeft(4, '0');
                                                sValue += (mipiCode.MipiCodeType == ReadWrite.Write) ? "010" : "011";
                                                sValue += Convert.ToString(mipiCode.RegIDs[0], 2).PadLeft(5, '0');
                                                sValue += GetParityBit(sValue);
                                                string sCF = string.Empty;
                                                sCF += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C7 (010: Write, 011: Read)\n";
                                                sCF += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C6\n";
                                                sCF += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C5\n";
                                                sCF += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address C4\n";
                                                sCF += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address C3\n";
                                                sCF += prefix + BuildData(sValue[9], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address C2\n";
                                                sCF += prefix + BuildData(sValue[10], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address C1\n";
                                                sCF += prefix + BuildData(sValue[11], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address C0\n";
                                                sCF += prefix + BuildData(sValue[12], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Parity Bit\n";
                                                if (mipiCode.MipiCodeType == ReadWrite.Read)
                                                    sCF += prefix + BuildData('0', mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Park Bit\n";
                                                sw.Write(sCF);
                                            }
                                            else if (mipiCode.MipiCodeType == ReadWrite.ExtendRead || mipiCode.MipiCodeType == ReadWrite.ExtendWrite)
                                            {
                                                sw.WriteLine("// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])");
                                                sValue = Convert.ToString(mipiCode.UserID, 2).PadLeft(4, '0');
                                                sValue += (mipiCode.MipiCodeType == ReadWrite.ExtendWrite) ? "0000" : "0010";
                                                sValue += Convert.ToString(mipiCode.BC, 2).PadLeft(4, '0');
                                                sValue += GetParityBit(sValue);
                                                string sCF = string.Empty;
                                                sCF += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C7 (0000: Write, 0010: Read)\n";
                                                sCF += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C6\n";
                                                sCF += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C5\n";
                                                sCF += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C4\n";
                                                sCF += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC3\n";
                                                sCF += prefix + BuildData(sValue[9], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC2\n";
                                                sCF += prefix + BuildData(sValue[10], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC1\n";
                                                sCF += prefix + BuildData(sValue[11], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC0\n";
                                                sCF += prefix + BuildData(sValue[12], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Parity Bit\n";
                                                sw.Write(sCF);

                                                #region Reg Addr
                                                sw.WriteLine("// Reg Addr (8 bits)");
                                                sValue = Convert.ToString(mipiCode.RegIDs[0], 2).PadLeft(8, '0');
                                                sValue += GetParityBit(sValue);
                                                string sAddr = string.Empty;
                                                sAddr += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A7\n";
                                                sAddr += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A6\n";
                                                sAddr += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A5\n";
                                                sAddr += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A4\n";
                                                sAddr += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A3\n";
                                                sAddr += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A2\n";
                                                sAddr += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A1\n";
                                                sAddr += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A0\n";
                                                sAddr += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Parity Bit\n";
                                                if (mipiCode.MipiCodeType == ReadWrite.ExtendRead)
                                                    sAddr += prefix + BuildData('0', mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Bus Park\n";
                                                sw.Write(sAddr);
                                                #endregion
                                            }
                                            else if (mipiCode.MipiCodeType == ReadWrite.ZeroWrite)
                                            {
                                                sw.WriteLine("// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:7] + Reg Addr[6:0])");
                                                sValue = Convert.ToString(mipiCode.UserID, 2).PadLeft(4, '0');
                                                sValue += "1";
                                                sValue += Convert.ToString(mipiCode.Datas[0], 2).PadLeft(7, '0');
                                                sValue += GetParityBit(sValue);
                                                string sCF = string.Empty;
                                                sCF += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write\n";
                                                sCF += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Data D6\n";
                                                sCF += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Data D5\n";
                                                sCF += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Data D4\n";
                                                sCF += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Data D3\n";
                                                sCF += prefix + BuildData(sValue[9], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Data D2\n";
                                                sCF += prefix + BuildData(sValue[10], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Data D1\n";
                                                sCF += prefix + BuildData(sValue[11], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Data D0\n";
                                                sCF += prefix + BuildData(sValue[12], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Parity Bit\n";
                                                sw.Write(sCF);
                                            }
                                            else if (mipiCode.MipiCodeType == ReadWrite.MaskWrite)
                                            {
                                                sw.WriteLine("// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])");
                                                sValue = Convert.ToString(mipiCode.UserID, 2).PadLeft(4, '0');
                                                sValue += Convert.ToString(mipiCode.Command, 2).PadLeft(4, '0');
                                                sValue += Convert.ToString(mipiCode.BC, 2).PadLeft(4, '0');
                                                sValue += GetParityBit(sValue);
                                                string sCF = string.Empty;
                                                sCF += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C7 (0001)\n";
                                                sCF += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C6\n";
                                                sCF += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C5\n";
                                                sCF += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C4\n";
                                                sCF += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC3 (1001)\n";
                                                sCF += prefix + BuildData(sValue[9], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC2\n";
                                                sCF += prefix + BuildData(sValue[10], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC1\n";
                                                sCF += prefix + BuildData(sValue[11], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC0\n";
                                                sCF += prefix + BuildData(sValue[12], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Parity Bit\n";
                                                sw.Write(sCF);

                                                #region Reg Addr
                                                sw.WriteLine("// Reg Addr (8 bits)");
                                                sValue = Convert.ToString(mipiCode.RegIDs[0], 2).PadLeft(8, '0');
                                                sValue += GetParityBit(sValue);
                                                string sAddr = string.Empty;
                                                sAddr += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A7\n";
                                                sAddr += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A6\n";
                                                sAddr += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A5\n";
                                                sAddr += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A4\n";
                                                sAddr += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A3\n";
                                                sAddr += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A2\n";
                                                sAddr += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A1\n";
                                                sAddr += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A0\n";
                                                sAddr += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Parity Bit\n";
                                                sw.Write(sAddr);
                                                #endregion
                                            }
                                            else if (mipiCode.MipiCodeType == ReadWrite.LongExtendRead || mipiCode.MipiCodeType == ReadWrite.LongExtendWrite)
                                            {
                                                sw.WriteLine("// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])");
                                                sValue = Convert.ToString(mipiCode.UserID, 2).PadLeft(4, '0');
                                                sValue += Convert.ToString(mipiCode.Command, 2).PadLeft(5, '0');
                                                sValue += Convert.ToString(mipiCode.BC, 2).PadLeft(3, '0');
                                                sValue += GetParityBit(sValue);
                                                string sCF = string.Empty;
                                                sCF += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C7 (00110: Write, 00111: Read)\n";
                                                sCF += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C6\n";
                                                sCF += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C5\n";
                                                sCF += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C4\n";
                                                sCF += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C3\n";
                                                sCF += prefix + BuildData(sValue[9], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC2\n";
                                                sCF += prefix + BuildData(sValue[10], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC1\n";
                                                sCF += prefix + BuildData(sValue[11], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC0\n";
                                                sCF += prefix + BuildData(sValue[12], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Parity Bit\n";
                                                sw.Write(sCF);

                                                #region Reg Addr
                                                sw.WriteLine("// Reg Addr (8 bits)");
                                                for (int i = 0; i < mipiCode.RegIDs.Count; i++)
                                                {
                                                    sValue = Convert.ToString(mipiCode.RegIDs[i], 2).PadLeft(8, '0');
                                                    sValue += GetParityBit(sValue);
                                                    string sAddr = string.Empty;
                                                    sAddr += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A7\n";
                                                    sAddr += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A6\n";
                                                    sAddr += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A5\n";
                                                    sAddr += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A4\n";
                                                    sAddr += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A3\n";
                                                    sAddr += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A2\n";
                                                    sAddr += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A1\n";
                                                    sAddr += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A0\n";
                                                    sAddr += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Parity Bit\n";
                                                    if (mipiCode.MipiCodeType == ReadWrite.LongExtendRead && i == mipiCode.RegIDs.Count - 1)
                                                        sAddr += prefix + BuildData('0', mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Bus Park\n";
                                                    sw.Write(sAddr);
                                                }
                                                #endregion
                                            }
                                            else //if (mipiCode.MipiCodeType == ReadWrite.UniversalExtendRead || mipiCode.MipiCodeType == ReadWrite.UniversalExtendWrite)
                                            {
                                                sw.WriteLine("// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])");
                                                sValue = Convert.ToString(mipiCode.UserID, 2).PadLeft(4, '0');
                                                sValue += Convert.ToString(mipiCode.Command, 2).PadLeft(4, '0');
                                                sValue += Convert.ToString(mipiCode.BC, 2).PadLeft(4, '0');
                                                sValue += GetParityBit(sValue);
                                                string sCF = string.Empty;
                                                sCF += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Slave Addr\n";
                                                sCF += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C7\n";
                                                sCF += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C6\n";
                                                sCF += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C5\n";
                                                sCF += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Write Command C4\n";
                                                sCF += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC3\n";
                                                sCF += prefix + BuildData(sValue[9], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC2\n";
                                                sCF += prefix + BuildData(sValue[10], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC1\n";
                                                sCF += prefix + BuildData(sValue[11], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// BC0\n";
                                                sCF += prefix + BuildData(sValue[12], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Parity Bit\n";
                                                sw.Write(sCF);

                                                #region Reg Addr
                                                sw.WriteLine("// Reg Addr (8 bits)");
                                                for (int i = 0; i < mipiCode.RegIDs.Count; i++)
                                                {
                                                    sValue = Convert.ToString(mipiCode.RegIDs[i], 2).PadLeft(8, '0');
                                                    sValue += GetParityBit(sValue);
                                                    string sAddr = string.Empty;
                                                    sAddr += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A7\n";
                                                    sAddr += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A6\n";
                                                    sAddr += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A5\n";
                                                    sAddr += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A4\n";
                                                    sAddr += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A3\n";
                                                    sAddr += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A2\n";
                                                    sAddr += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A1\n";
                                                    sAddr += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Reg Address A0\n";
                                                    sAddr += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Parity Bit\n";
                                                    if (mipiCode.MipiCodeType == ReadWrite.UniversalExtendRead && i == mipiCode.RegIDs.Count - 1)
                                                        sAddr += prefix + BuildData('0', mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Bus Park\n";
                                                    sw.Write(sAddr);
                                                }
                                                #endregion
                                            }
                                            #endregion
                                            #region Data
                                            if (mipiCode.MipiCodeType != ReadWrite.ZeroWrite)
                                            // mipiCode.MipiCodeType == ReadWrite.Read || mipiCode.MipiCodeType == ReadWrite.Write
                                            // mipiCode.MipiCodeType == ReadWrite.ExtendRead || mipiCode.MipiCodeType == ReadWrite.ExtendWrite
                                            // mipiCode.MipiCodeType == ReadWrite.MaskWrite
                                            // mipiCode.MipiCodeType == ReadWrite.LongExtendRead || mipiCode.MipiCodeType == ReadWrite.LongExtendWrite
                                            // mipiCode.MipiCodeType == ReadWrite.UniversalExtendRead || mipiCode.MipiCodeType == ReadWrite.UniversalExtendWrite
                                            {
                                                for (int i = 0; i < mipiCode.Datas.Count; i++)
                                                {
                                                    sw.WriteLine("// Data (8 bits + Parity)");
                                                    sValue = Convert.ToString(mipiCode.Datas[i], 2).PadLeft(8, '0');
                                                    sValue += GetParityBit(sValue);
                                                    string sData = string.Empty;
                                                    bool isRead = mipiCode.MipiCodeType == ReadWrite.Read || mipiCode.MipiCodeType == ReadWrite.ExtendRead 
                                                        || mipiCode.MipiCodeType == ReadWrite.LongExtendRead || mipiCode.MipiCodeType == ReadWrite.UniversalExtendRead;
                                                    if (isRead)
                                                    {
                                                        sData += prefix + BuildData('0', mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, isRead: isRead) + ";// Data X\n";
                                                    }
                                                    sData += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, isRead: isRead) + ";// Data D7\n";
                                                    sData += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, isRead: isRead) + ";// Data D6\n";
                                                    sData += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, isRead: isRead) + ";// Data D5\n";
                                                    sData += prefix + BuildData(sValue[3], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, isRead: isRead) + ";// Data D4\n";
                                                    sData += prefix + BuildData(sValue[4], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, isRead: isRead) + ";// Data D3\n";
                                                    sData += prefix + BuildData(sValue[5], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, isRead: isRead) + ";// Data D2\n";
                                                    sData += prefix + BuildData(sValue[6], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, isRead: isRead) + ";// Data D1\n";
                                                    sData += prefix + BuildData(sValue[7], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, isRead: isRead) + ";// Data D0\n";
                                                    sData += prefix + BuildData(sValue[8], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, isRead: isRead) + ";// Parity Bit (to make odd sum Data)\n";
                                                    sw.Write(sData);
                                                }
                                            }
                                            #endregion
                                            #region Bus Park
                                            sw.WriteLine("// Bus Park");
                                            sValue = "000";
                                            string sBP = string.Empty;
                                            sBP += prefix + BuildData(sValue[0], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig) + ";// Bus Park (Drive 0 then Tri-State at CLK falling)\n";
                                            sBP += prefix + BuildData(sValue[1], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";//\n";
                                            sBP += prefix + BuildData(sValue[2], mipiStep.CLK, mipiStep.DATA, mipiStep.SiteConfig, '0') + ";//\n";
                                            sw.Write(sBP);
                                            #endregion
                                        }
                                        indexCode++;
                                    }
                                    indexStep++;
                                }

                                if (mipiGroup.PreElapsedMicroseconds > 0 && mipiGroup.SupplementalLineCount > 0)
                                {
                                    sw.WriteLine(string.Format("//--------------------------------------------{0}.{1} Supplemental Lines-----------------------------------------------------------", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                                    for (int i = 1; i <= mipiGroup.SupplementalLineCount; i++)
                                    { 
                                        if (i == mipiGroup.SupplementalLineCount)
                                        {
                                            line = string.Format(supplementalLine, mipiGroup.SupplementalLineRemainder.ToString().PadRight(4), mipiGroup.SupplementalTimeSet.TSName);
                                        }
                                        else
                                        {
                                            line = string.Format(supplementalLine, "1000", mipiGroup.SupplementalTimeSet.TSName);
                                        }
                                        sw.WriteLine(line);
                                    }
                                    sw.WriteLine();
                                }
                            }
                        }
                    }
                    #endregion

                    #region write generalPatternSettings
                    if (generalPatternSettings.GeneralModes.Count > 0)
                    {
                        string supplementalLine = "FC       {0}     {1}               {2};// {3}---{4}";
                        foreach (var generalMode in generalPatternSettings.GeneralModes.Values)
                        {
                            sw.WriteLine(string.Format("//--------------------------------------------{0}-----------------------------------------------------------", generalMode.GeneralModeName));
                            var lineNumber = generalMode.LineStart;
                            for (int i = 1; i <= generalMode.DeviceModes.Count; i++)
                            {
                                var pair = generalMode.DeviceModes[i - 1];
                                line = string.Format(supplementalLine, pair.Value.ToString().PadRight(4), pair.Key.TSW.TSName, BuildData(pair.Key, generalMode.SiteConfig), pair.Key.DeviceModeName, lineNumber);
                                if (i == generalMode.TriggerAt)
                                    line += "---trigger";
                                sw.WriteLine(line);
                                lineNumber++;
                            }
                        }
                    }
                    #endregion
                }
            }
        }

        private BasicPatternSettings LoadBasicInfo(ISheet ws)
        {
            int rowCount = ws.LastRowNum + 1; //得到行数 
            BasicPatternSettings basicMipiSettings = new BasicPatternSettings();

            int rowTS1 = 0;
            int rowTS2 = 1;
            int rowTS3 = 2;
            int rowTS4 = 3;
            int rowPinMapBegin = 5;
            for (int i = 0; i <= rowPinMapBegin; i++)
            {
                string key = GetCellValue(ws, i, 0);
                if (i <= rowTS4)
                {
                    string sSpeedRate = GetCellValue(ws, i, 1);
                    uint speedRate = 0;
                    if (i == rowTS1)
                    {
                        if (string.Compare(key, "TS1", true) == 0)
                        {
                            if (uint.TryParse(sSpeedRate, out speedRate))
                            {
                                basicMipiSettings.TimeSets.Add("TS1", new TimeSet("TS1", speedRate));
                            }
                            else
                            {
                                throw new Exception(string.Format("TS1检测到非法的mipi速率{0}MHz，请填入1，2，4，5，8，10，20，25，40，50里的数！", sSpeedRate));
                            }
                        }
                        else
                        {
                            throw new Exception("基础配置模板疑似被篡改，第1行第A列应为TS1！");
                        }
                    }
                    else if (i == rowTS2)
                    {
                        if (string.Compare(key, "TS2", true) == 0)
                        {
                            if (uint.TryParse(sSpeedRate, out speedRate))
                            {
                                basicMipiSettings.TimeSets.Add("TS2", new TimeSet("TS2", speedRate));
                            }
                            else
                            {
                                throw new Exception(string.Format("TS2检测到非法的mipi速率{0}MHz，请填入1，2，4，5，8，10，20，25，40，50里的数！", sSpeedRate));
                            }
                        }
                        else
                        {
                            throw new Exception("基础配置模板疑似被篡改，第2行第A列应为TS2！");
                        }
                    }
                    else if (i == rowTS3)
                    {
                        if (string.Compare(key, "TS3", true) == 0)
                        {
                            if (uint.TryParse(sSpeedRate, out speedRate))
                            {
                                basicMipiSettings.TimeSets.Add("TS3", new TimeSet("TS3", speedRate));
                            }
                            else
                            {
                                throw new Exception(string.Format("TS3检测到非法的mipi速率{0}MHz，请填入1，2，4，5，8，10，20，25，40，50里的数！", sSpeedRate));
                            }
                        }
                        else
                        {
                            throw new Exception("基础配置模板疑似被篡改，第3行第A列应为TS3！");
                        }
                    }
                    else
                    {
                        if (string.Compare(key, "TS4", true) == 0)
                        {
                            if (uint.TryParse(sSpeedRate, out speedRate))
                            {
                                basicMipiSettings.TimeSets.Add("TS4", new TimeSet("TS4", speedRate));
                            }
                            else
                            {
                                throw new Exception(string.Format("TS4检测到非法的mipi速率{0}MHz，请填入1，2，4，5，8，10，20，25，40，50里的数！", sSpeedRate));
                            }
                        }
                        else
                        {
                            throw new Exception("基础配置模板疑似被篡改，第4行第A列应为TS4！");
                        }
                    }
                }
                else
                {
                    if (i == rowPinMapBegin)
                    {
                        if (string.Compare(key, "PIN", true) == 0)
                        {
                            key = GetCellValue(ws, i, 1);
                            if (string.Compare(key, "SITE1", true) != 0)
                                throw new Exception("基础配置模板疑似被篡改，第6行第A列应为Site1！");
                            key = GetCellValue(ws, i, 2);
                            if (string.Compare(key, "SITE2", true) != 0)
                                throw new Exception("基础配置模板疑似被篡改，第6行第B列应为Site2！");
                            key = GetCellValue(ws, i, 3);
                            if (string.Compare(key, "SITE3", true) != 0)
                                throw new Exception("基础配置模板疑似被篡改，第6行第C列应为Site3！");
                            key = GetCellValue(ws, i, 4);
                            if (string.Compare(key, "SITE4", true) != 0)
                                throw new Exception("基础配置模板疑似被篡改，第6行第D列应为Site4！");
                            key = GetCellValue(ws, i, 5);
                            if (string.Compare(key, "TSW", true) != 0)
                                throw new Exception("基础配置模板疑似被篡改，第6行第E列应为TSW！");
                            key = GetCellValue(ws, i, 6);
                            if (string.Compare(key, "TSR", true) != 0)
                                throw new Exception("基础配置模板疑似被篡改，第6行第F列应为TSR！");
                        }
                        else
                        {
                            throw new Exception("基础配置模板疑似被篡改，第6行第A列应为Pin！");
                        }
                    }
                }
            }

            int colPin = 0;
            int colSite1 = 1;
            int colSite2 = 2;
            int colSite3 = 3;
            int colSite4 = 4;
            int colTSW = 5;
            int colTSR = 6;
            for (int i = rowPinMapBegin + 1; i < rowCount; i++)
            {
                Pin pin = new Pin();

                //colPin
                string cellValue = GetCellValue(ws, i, colPin);
                if (string.IsNullOrEmpty(cellValue))
                    continue;
                else
                    pin.PinName = cellValue;
                //colSite1
                uint channel = 0;
                cellValue = GetCellValue(ws, i, colSite1);
                if (string.IsNullOrEmpty(cellValue))
                    pin.Site1 = uint.MaxValue;
                else
                {
                    if (!uint.TryParse(cellValue, out channel))
                        throw new Exception(string.Format("{0}的Site1检测到非法的资源配置{1}，请填入1-7，9-15，17-23，25-27里的数！", pin.PinName, cellValue));
                    else
                    {
                        if (channel > 0 && channel < 28 && channel != 8 && channel != 16 && channel != 24)
                            pin.Site1 = channel;
                        else
                            throw new Exception(string.Format("{0}的Site1检测到非法的资源配置{1}，请填入1-7，9-15，17-23，25-27里的数！", pin.PinName, cellValue));
                    }
                }
                //colSite2
                cellValue = GetCellValue(ws, i, colSite2);
                if (string.IsNullOrEmpty(cellValue))
                    pin.Site2 = uint.MaxValue;
                else
                {
                    if (!uint.TryParse(cellValue, out channel))
                        throw new Exception(string.Format("{0}的Site2检测到非法的资源配置{1}，请填入1-7，9-15，17-23，25-27里的数！", pin.PinName, cellValue));
                    else
                    {
                        if (channel > 0 && channel < 28 && channel != 8 && channel != 16 && channel != 24)
                            pin.Site2 = channel;
                        else
                            throw new Exception(string.Format("{0}的Site2检测到非法的资源配置{1}，请填入1-7，9-15，17-23，25-27里的数！", pin.PinName, cellValue));
                    }
                }
                //colSite3
                cellValue = GetCellValue(ws, i, colSite3);
                if (string.IsNullOrEmpty(cellValue))
                    pin.Site3 = uint.MaxValue;
                else
                {
                    if (!uint.TryParse(cellValue, out channel))
                        throw new Exception(string.Format("{0}的Site3检测到非法的资源配置{1}，请填入1-7，9-15，17-23，25-27里的数！", pin.PinName, cellValue));
                    else
                    {
                        if (channel > 0 && channel < 28 && channel != 8 && channel != 16 && channel != 24)
                            pin.Site3 = channel;
                        else
                            throw new Exception(string.Format("{0}的Site3检测到非法的资源配置{1}，请填入1-7，9-15，17-23，25-27里的数！", pin.PinName, cellValue));
                    }
                }
                //colSite4
                cellValue = GetCellValue(ws, i, colSite4);
                if (string.IsNullOrEmpty(cellValue))
                    pin.Site4 = uint.MaxValue;
                else
                {
                    if (!uint.TryParse(cellValue, out channel))
                        throw new Exception(string.Format("{0}的Site4检测到非法的资源配置{1}，请填入1-7，9-15，17-23，25-27里的数！", pin.PinName, cellValue));
                    else
                    {
                        if (channel > 0 && channel < 28 && channel != 8 && channel != 16 && channel != 24)
                            pin.Site4 = channel;
                        else
                            throw new Exception(string.Format("{0}的Site4检测到非法的资源配置{1}，请填入1-7，9-15，17-23，25-27里的数！", pin.PinName, cellValue));
                    }
                }
                //colTSW
                cellValue = GetCellValue(ws, i, colTSW);
                if (string.Compare(cellValue, "TS1", true) == 0)
                    pin.TSW = basicMipiSettings.TimeSets["TS1"];
                else if (string.Compare(cellValue, "TS2", true) == 0)
                    pin.TSW = basicMipiSettings.TimeSets["TS2"];
                else if (string.Compare(cellValue, "TS3", true) == 0)
                    pin.TSW = basicMipiSettings.TimeSets["TS3"];
                else if (string.Compare(cellValue, "TS4", true) == 0)
                    pin.TSW = basicMipiSettings.TimeSets["TS4"];
                else
                    throw new Exception(string.Format("{0}的TSW检测到非法的TS配置{1}，请填入TS1,TS2,TS3或TS4！", pin.PinName, cellValue));
                //colTSR
                cellValue = GetCellValue(ws, i, colTSR);
                if (string.Compare(cellValue, "TS1", true) == 0)
                    pin.TSR = basicMipiSettings.TimeSets["TS1"];
                else if (string.Compare(cellValue, "TS2", true) == 0)
                    pin.TSR = basicMipiSettings.TimeSets["TS2"];
                else if (string.Compare(cellValue, "TS3", true) == 0)
                    pin.TSR = basicMipiSettings.TimeSets["TS3"];
                else if (string.Compare(cellValue, "TS4", true) == 0)
                    pin.TSR = basicMipiSettings.TimeSets["TS4"];
                else
                    throw new Exception(string.Format("{0}的TSR检测到非法的TS配置{1}，请填入TS1,TS2,TS3或TS4！", pin.PinName, cellValue));

                if (basicMipiSettings.PinMap.ContainsKey(pin.PinName))
                    throw new Exception(string.Format("Pin - {0}已存在，请确认！", pin.PinName));
                else
                    basicMipiSettings.PinMap.Add(pin.PinName, pin);
            }
            //var pinMapKeys = basicMipiSettings.PinMap.Keys.ToList();
            //for (int i = 0; i < basicMipiSettings.PinMap.Count; i++)
            //{
            //    for (int j = i + 1; j < basicMipiSettings.PinMap.Count; j++)
            //    {
            //        var iPin = basicMipiSettings.PinMap[pinMapKeys[i]];
            //        var jPin = basicMipiSettings.PinMap[pinMapKeys[j]];
            //        if (iPin.Site1 != uint.MaxValue)
            //        {
            //            if (iPin.Site1 == jPin.Site1)
            //                throw new Exception(string.Format("检测到{0}的Site1与{1}的Site1配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site1 == jPin.Site2)
            //                throw new Exception(string.Format("检测到{0}的Site1与{1}的Site2配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site1 == jPin.Site3)
            //                throw new Exception(string.Format("检测到{0}的Site1与{1}的Site3配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site1 == jPin.Site4)
            //                throw new Exception(string.Format("检测到{0}的Site1与{1}的Site4配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //        }
            //        if (iPin.Site2 != uint.MaxValue)
            //        {
            //            if (iPin.Site2 == jPin.Site1)
            //                throw new Exception(string.Format("检测到{0}的Site2与{1}的Site1配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site2 == jPin.Site2)
            //                throw new Exception(string.Format("检测到{0}的Site2与{1}的Site2配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site2 == jPin.Site3)
            //                throw new Exception(string.Format("检测到{0}的Site2与{1}的Site3配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site2 == jPin.Site4)
            //                throw new Exception(string.Format("检测到{0}的Site2与{1}的Site4配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //        }
            //        if (iPin.Site3 != uint.MaxValue)
            //        {
            //            if (iPin.Site3 == jPin.Site1)
            //                throw new Exception(string.Format("检测到{0}的Site3与{1}的Site1配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site3 == jPin.Site2)
            //                throw new Exception(string.Format("检测到{0}的Site3与{1}的Site2配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site3 == jPin.Site3)
            //                throw new Exception(string.Format("检测到{0}的Site3与{1}的Site3配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site3 == jPin.Site4)
            //                throw new Exception(string.Format("检测到{0}的Site3与{1}的Site4配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //        }
            //        if (iPin.Site4 != uint.MaxValue)
            //        {
            //            if (iPin.Site4 == jPin.Site1)
            //                throw new Exception(string.Format("检测到{0}的Site4与{1}的Site1配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site4 == jPin.Site2)
            //                throw new Exception(string.Format("检测到{0}的Site4与{1}的Site2配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site4 == jPin.Site3)
            //                throw new Exception(string.Format("检测到{0}的Site4与{1}的Site3配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //            if (iPin.Site4 == jPin.Site4)
            //                throw new Exception(string.Format("检测到{0}的Site4与{1}的Site4配置了同样的资源，请确认！", iPin.PinName, jPin.PinName));
            //        }
            //    }
            //}

            return basicMipiSettings;
        }

        private MipiPatternSettings LoadMipiPattern(ISheet ws, BasicPatternSettings basicMipiSettings, ref int startlinenumber)
        {
            int rowCount = ws.LastRowNum + 1; //得到行数 
            int colMipiMode = 0;  // MipiMode的位置
            int colMipiGroup = 1;  // MiPi Group(us)的位置
            int colCode = 2;  // Code的位置
            int colClk = 3;  // Clk的位置
            int colData = 4;  // Data的位置
            int colSite = 5; //Site的位置
            MipiPatternSettings mipiModeSettings = new MipiPatternSettings();
            startlinenumber = 3; //因为加入了RESET

            for (int rowIndex = 1; rowIndex < rowCount;)
            {
                List<CellRangeAddress> cellMipiModes = ws.MergedRegions.Where(x => x.FirstColumn == colMipiMode).ToList();
                if (cellMipiModes.Any(x => x.FirstRow == rowIndex))
                {
                    var cellMipiMode = cellMipiModes.First(x => x.FirstRow == rowIndex);
                    int cellMipiModeFirstRow = cellMipiMode.FirstRow;
                    int cellMipiModeLastRow = cellMipiMode.LastRow;
                    string sMipiMode = GetCellValue(ws, cellMipiModeFirstRow, colMipiMode);
                    if (string.IsNullOrEmpty(sMipiMode))
                        throw new Exception(string.Format("MIPI配置中，检测到为空的Mipi Mode，请确认!"));
                    MipiMode mipiMode = new MipiMode();
                    mipiMode.MipiModeName = sMipiMode;

                    for (rowIndex = cellMipiModeFirstRow; rowIndex <= cellMipiModeLastRow;)
                    {
                        List<CellRangeAddress> cellMipiGroups = ws.MergedRegions.Where(x => x.FirstColumn == colMipiGroup).ToList();
                        if (cellMipiGroups.Any(x=>x.FirstRow == rowIndex))
                        {
                            var cellMipiGroup = cellMipiGroups.First(x => x.FirstRow == rowIndex);
                            int cellMipiGroupFirstRow = cellMipiGroup.FirstRow;
                            int cellMipiGroupLastRow = cellMipiGroup.LastRow;
                            if (cellMipiGroupFirstRow > cellMipiModeLastRow)
                                break;
                            if (cellMipiGroupFirstRow >= cellMipiModeFirstRow && cellMipiGroupFirstRow <= cellMipiModeLastRow
                                && cellMipiGroupLastRow >= cellMipiModeFirstRow && cellMipiGroupLastRow <= cellMipiModeLastRow)
                            {
                                string sMipiGroup = GetCellValue(ws, cellMipiGroupFirstRow, colMipiGroup);
                                if (string.IsNullOrEmpty(sMipiGroup))
                                    sMipiGroup = mipiMode.MipiModeName;
                                MipiGroup mipiGroup = new MipiGroup();
                                if (sMipiGroup.IndexOf("(") == -1)
                                {
                                    mipiGroup.MipiGroupName = sMipiGroup;
                                    mipiGroup.PreElapsedMicroseconds = 0;
                                }
                                else
                                {
                                    mipiGroup.MipiGroupName = sMipiGroup.Substring(0, sMipiGroup.IndexOf("("));
                                    string sElapsedMicroseconds = sMipiGroup.Substring(sMipiGroup.IndexOf("(") + 1, sMipiGroup.LastIndexOf(")") - sMipiGroup.IndexOf("(") - 1);
                                    uint iElapsedMicroseconds = 0;
                                    if (!uint.TryParse(sElapsedMicroseconds, out iElapsedMicroseconds))
                                    {
                                        throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的时间参数，请确认必须为整型!", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                                    }
                                    mipiGroup.PreElapsedMicroseconds = iElapsedMicroseconds;
                                }

                                for (rowIndex = cellMipiGroupFirstRow; rowIndex <= cellMipiGroupLastRow; rowIndex++)
                                {
                                    string sCodes = GetCellValue(ws, rowIndex, colCode);
                                    string sCLK = GetCellValue(ws, rowIndex, colClk);
                                    string sDATA = GetCellValue(ws, rowIndex, colData);
                                    string sSite = GetCellValue(ws, rowIndex, colSite);
                                    if (string.IsNullOrEmpty(sCodes))
                                        throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在为空的Code，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                                    if (!basicMipiSettings.PinMap.Any(x => x.Key == sCLK))
                                        throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的CLK - {2}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK));
                                    if (!basicMipiSettings.PinMap.Any(x => x.Key == sDATA))
                                        throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的DATA - {2}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sDATA));
                                    if (basicMipiSettings.ChannelPairs.ContainsKey(sCLK))
                                    {
                                        if (basicMipiSettings.ChannelPairs[sCLK] != sDATA)
                                            throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组的{CLK，DATA} - {{2}，{3}} 与其他组{{2}，{4}}存在冲突，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK, sDATA, basicMipiSettings.ChannelPairs[sCLK]));
                                    }
                                    else
                                    {
                                        if (!basicMipiSettings.ChannelPairs.ContainsValue(sDATA))
                                            basicMipiSettings.ChannelPairs.Add(sCLK, sDATA);
                                        else
                                            throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组的{CLK，DATA} - {{2}，{3}} 与其他组{{4}，{3}}存在冲突，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK, sDATA, basicMipiSettings.ChannelPairs.First(x => x.Value == sDATA).Key));
                                    }
                                    MipiStep mipiStep = new MipiStep();
                                    mipiStep.CLK = basicMipiSettings.PinMap[sCLK];
                                    mipiStep.DATA = basicMipiSettings.PinMap[sDATA];
                                    mipiStep.SiteConfig = ParseSiteConfig(sSite);
                                    try
                                    {
                                        mipiStep.MipiCodes = ParseMipiCodes(sCodes);
                                        mipiStep.OriginalCodes = sCodes;
                                    }
                                    catch (Exception ex)
                                    {
                                        throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的Code，请确认!\n{2}", mipiMode.MipiModeName, mipiGroup.MipiGroupName, ex.Message));
                                    }
                                    mipiStep.CalculateLineCount();
                                    mipiGroup.MipiSteps.Add(mipiStep);
                                }
                                mipiGroup.CalculateLineCount();
                                mipiGroup.LineStart = startlinenumber;
                                startlinenumber = mipiGroup.LineEnd + 1;
                                if (mipiMode.MipiGroups.ContainsKey(mipiGroup.MipiGroupName))
                                {
                                    throw new Exception(string.Format("MIPI配置中，检测到{0}存在同名的组 - {1}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                                }
                                else
                                {
                                    mipiMode.MipiGroups.Add(mipiGroup.MipiGroupName, mipiGroup);
                                }
                            }
                            else
                            {
                                throw new Exception(string.Format("MIPI配置中，检测到{0}存在错误的Mipi Group分组，请确认!", mipiMode.MipiModeName));
                            }
                        }
                        else
                        {
                            string sMipiGroup = GetCellValue(ws, rowIndex, colMipiGroup);
                            if (string.IsNullOrEmpty(sMipiGroup))
                                sMipiGroup = mipiMode.MipiModeName;
                            MipiGroup mipiGroup = new MipiGroup();
                            if (sMipiGroup.IndexOf("(") == -1)
                            {
                                mipiGroup.MipiGroupName = sMipiGroup;
                                mipiGroup.PreElapsedMicroseconds = 0;
                            }
                            else
                            {
                                mipiGroup.MipiGroupName = sMipiGroup.Substring(0, sMipiGroup.IndexOf("("));
                                string sElapsedMicroseconds = sMipiGroup.Substring(sMipiGroup.IndexOf("(") + 1, sMipiGroup.LastIndexOf(")") - sMipiGroup.IndexOf("(") - 1);
                                uint iElapsedMicroseconds = 0;
                                if (!uint.TryParse(sElapsedMicroseconds, out iElapsedMicroseconds))
                                {
                                    throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的时间参数，请确认必须为整型!", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                                }
                                mipiGroup.PreElapsedMicroseconds = iElapsedMicroseconds;
                            }

                            string sCodes = GetCellValue(ws, rowIndex, colCode);
                            string sCLK = GetCellValue(ws, rowIndex, colClk);
                            string sDATA = GetCellValue(ws, rowIndex, colData);
                            string sSite = GetCellValue(ws, rowIndex, colSite);
                            if (string.IsNullOrEmpty(sCodes))
                                throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在为空的Code，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                            if (!basicMipiSettings.PinMap.Any(x => x.Key == sCLK))
                                throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的CLK - {2}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK));
                            if (!basicMipiSettings.PinMap.Any(x => x.Key == sDATA))
                                throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的DATA - {2}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sDATA));
                            if (basicMipiSettings.ChannelPairs.ContainsKey(sCLK))
                            {
                                if (basicMipiSettings.ChannelPairs[sCLK] != sDATA)
                                    throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组的{CLK，DATA} - {{2}，{3}} 与其他组{{2}，{4}}存在冲突，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK, sDATA, basicMipiSettings.ChannelPairs[sCLK]));
                            }
                            else
                            {
                                if (!basicMipiSettings.ChannelPairs.ContainsValue(sDATA))
                                    basicMipiSettings.ChannelPairs.Add(sCLK, sDATA);
                                else
                                    throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组的{CLK，DATA} - {{2}，{3}} 与其他组{{4}，{3}}存在冲突，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK, sDATA, basicMipiSettings.ChannelPairs.First(x => x.Value == sDATA).Key));
                            }
                            MipiStep mipiStep = new MipiStep();
                            mipiStep.CLK = basicMipiSettings.PinMap[sCLK];
                            mipiStep.DATA = basicMipiSettings.PinMap[sDATA];
                            mipiStep.SiteConfig = ParseSiteConfig(sSite);
                            try
                            {
                                mipiStep.MipiCodes = ParseMipiCodes(sCodes);
                                mipiStep.OriginalCodes = sCodes;
                            }
                            catch (Exception ex)
                            {
                                throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的Code，请确认!\n{2}", mipiMode.MipiModeName, mipiGroup.MipiGroupName, ex.Message));
                            }
                            mipiStep.CalculateLineCount();
                            mipiGroup.MipiSteps.Add(mipiStep);
                            mipiGroup.CalculateLineCount();
                            mipiGroup.LineStart = startlinenumber;
                            startlinenumber = mipiGroup.LineEnd + 1;
                            if (mipiMode.MipiGroups.ContainsKey(mipiGroup.MipiGroupName))
                            {
                                throw new Exception(string.Format("MIPI配置中，检测到{0}存在同名的组 - {1}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                            }
                            else
                            {
                                mipiMode.MipiGroups.Add(mipiGroup.MipiGroupName, mipiGroup);
                            }

                            rowIndex++;
                        }
                    }

                    if (mipiModeSettings.MipiModes.ContainsKey(mipiMode.MipiModeName))
                    {
                        throw new Exception(string.Format("MIPI配置中，检测到同名的Mipi Mode - {0}，请确认!", mipiMode.MipiModeName));
                    }
                    else
                    {
                        mipiModeSettings.MipiModes.Add(mipiMode.MipiModeName, mipiMode);
                    }
                }
                else
                {
                    string sMipiMode = GetCellValue(ws, rowIndex, colMipiMode);
                    if (string.IsNullOrEmpty(sMipiMode))
                        throw new Exception(string.Format("MIPI配置中，检测到为空的Mipi Mode，请确认!"));
                    MipiMode mipiMode = new MipiMode();
                    mipiMode.MipiModeName = sMipiMode;

                    string sMipiGroup = GetCellValue(ws, rowIndex, colMipiGroup);
                    if (string.IsNullOrEmpty(sMipiGroup))
                        sMipiGroup = mipiMode.MipiModeName;
                    MipiGroup mipiGroup = new MipiGroup();
                    if (sMipiGroup.IndexOf("(") == -1)
                    {
                        mipiGroup.MipiGroupName = sMipiGroup;
                        mipiGroup.PreElapsedMicroseconds = 0;
                    }
                    else
                    {
                        mipiGroup.MipiGroupName = sMipiGroup.Substring(0, sMipiGroup.IndexOf("("));
                        string sElapsedMicroseconds = sMipiGroup.Substring(sMipiGroup.IndexOf("(") + 1, sMipiGroup.LastIndexOf(")") - sMipiGroup.IndexOf("(") - 1);
                        uint iElapsedMicroseconds = 0;
                        if (!uint.TryParse(sElapsedMicroseconds, out iElapsedMicroseconds))
                        {
                            throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的时间参数，请确认必须为整型!", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                        }
                        mipiGroup.PreElapsedMicroseconds = iElapsedMicroseconds;
                    }

                    string sCodes = GetCellValue(ws, rowIndex, colCode);
                    string sCLK = GetCellValue(ws, rowIndex, colClk);
                    string sDATA = GetCellValue(ws, rowIndex, colData);
                    string sSite = GetCellValue(ws, rowIndex, colSite);
                    if (string.IsNullOrEmpty(sCodes))
                        throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在为空的Code，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                    if (!basicMipiSettings.PinMap.Any(x => x.Key == sCLK))
                        throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的CLK - {2}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK));
                    if (!basicMipiSettings.PinMap.Any(x => x.Key == sDATA))
                        throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的DATA - {2}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sDATA));
                    if (basicMipiSettings.ChannelPairs.ContainsKey(sCLK))
                    {
                        if (basicMipiSettings.ChannelPairs[sCLK] != sDATA)
                            throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组的{CLK，DATA} - {{2}，{3}} 与其他组{{2}，{4}}存在冲突，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK, sDATA, basicMipiSettings.ChannelPairs[sCLK]));
                    }
                    else
                    {
                        if (!basicMipiSettings.ChannelPairs.ContainsValue(sDATA))
                            basicMipiSettings.ChannelPairs.Add(sCLK, sDATA);
                        else
                            throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组的{CLK，DATA} - {{2}，{3}} 与其他组{{4}，{3}}存在冲突，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK, sDATA, basicMipiSettings.ChannelPairs.First(x => x.Value == sDATA).Key));
                    }
                    MipiStep mipiStep = new MipiStep();
                    mipiStep.CLK = basicMipiSettings.PinMap[sCLK];
                    mipiStep.DATA = basicMipiSettings.PinMap[sDATA];
                    mipiStep.SiteConfig = ParseSiteConfig(sSite);
                    try
                    {
                        mipiStep.MipiCodes = ParseMipiCodes(sCodes);
                        mipiStep.OriginalCodes = sCodes;
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的Code，请确认!\n{2}", mipiMode.MipiModeName, mipiGroup.MipiGroupName, ex.Message));
                    }
                    mipiStep.CalculateLineCount();
                    mipiGroup.MipiSteps.Add(mipiStep);
                    mipiGroup.CalculateLineCount();
                    mipiGroup.LineStart = startlinenumber;
                    startlinenumber = mipiGroup.LineEnd + 1;
                    if (mipiMode.MipiGroups.ContainsKey(mipiGroup.MipiGroupName))
                    {
                        throw new Exception(string.Format("MIPI配置中，检测到{0}存在同名的组 - {1}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                    }
                    else
                    {
                        mipiMode.MipiGroups.Add(mipiGroup.MipiGroupName, mipiGroup);
                    }

                    if (mipiModeSettings.MipiModes.ContainsKey(mipiMode.MipiModeName))
                    {
                        throw new Exception(string.Format("MIPI配置中，检测到同名的Mipi Mode - {0}，请确认!", mipiMode.MipiModeName));
                    }
                    else
                    {
                        mipiModeSettings.MipiModes.Add(mipiMode.MipiModeName, mipiMode);
                    }

                    rowIndex++;
                }
            }

            return mipiModeSettings;
        }

        private SiteConfig ParseSiteConfig(string sSite)
        {
            SiteConfig siteConfig = SiteConfig.SiteNull;

            if (sSite.Contains("1"))
                siteConfig = siteConfig | SiteConfig.Site1;
            if (sSite.Contains("2"))
                siteConfig = siteConfig | SiteConfig.Site2;
            if (sSite.Contains("3"))
                siteConfig = siteConfig | SiteConfig.Site3;
            if (sSite.Contains("4"))
                siteConfig = siteConfig | SiteConfig.Site4;

            if (siteConfig == SiteConfig.SiteNull)
                siteConfig = SiteConfig.SiteAll;

            return siteConfig;
        }

        private GeneralPatternSettings LoadGeneralPattern(ISheet ws, BasicPatternSettings basicMipiSettings, ref int startlinenumber)
        {
            if (ws.LastRowNum == 0)
                return new GeneralPatternSettings();

            string key = GetCellValue(ws, 0, 0);
            if (string.Compare(key, "DeviceMode", true) != 0)
                throw new Exception("通用配置模板疑似被篡改，请确认！如无需通用配置，可将整个sheet删除。");

            int rowCount = ws.LastRowNum + 1; //得到行数 
            int colPattern = 0;  // MipiMode的位置
            int colCode = 1;  // Code的位置
            int colSite = 2;  // Site的位置
            int rowPatternTitle = 0;
            for (int i = 1; i < rowCount; i++)
            {
                string titlePattern = GetCellValue(ws, i, colPattern).ToUpper().Trim();
                string titleCode = GetCellValue(ws, i, colCode).ToUpper().Trim();
                if (titlePattern == "PATTERN" && titleCode == "CODE")
                {
                    rowPatternTitle = i;
                    break;
                }
            }

            int rowIndex = 0;
            int colCount = ws.GetRow(rowIndex).LastCellNum;//得到列数
            List<string> pins = new List<string>();
            for (int columnIndex = 1; columnIndex < colCount; columnIndex++)
            {
                string cellValue = GetCellValue(ws, rowIndex, columnIndex);
                if (columnIndex == colCount - 1)
                {
                    if (cellValue != "TS")
                        throw new Exception("通用配置中，DeviceMode行最后一列应为TSW！");
                }
                else
                {
                    if (basicMipiSettings.PinMap.ContainsKey(cellValue))
                    {
                        if (!pins.Contains(cellValue))
                            pins.Add(cellValue);
                        else
                            throw new Exception(string.Format("通用配置中，DeviceMode行中出现重复的{0}，请确认！", cellValue));
                    }
                    else
                    {
                        throw new Exception(string.Format("通用配置中，DeviceMode行中的{0}未在PinMap中定义，请确认！", cellValue));
                    }
                }
            }

            rowIndex++;
            for (; rowIndex < rowPatternTitle; rowIndex++)
            {
                string cellValue = GetCellValue(ws, rowIndex, 0);
                if (string.IsNullOrEmpty(cellValue))
                    continue;
                else
                {
                    DeviceMode deviceMode = new DeviceMode();
                    deviceMode.DeviceModeName = cellValue;
                    for (int columnIndex = 1; columnIndex < colCount; columnIndex++)
                    {
                        cellValue = GetCellValue(ws, rowIndex, columnIndex);
                        if (columnIndex == colCount - 1)
                        {
                            if (string.Compare(cellValue, "TS1", true) == 0)
                                deviceMode.TSW = basicMipiSettings.TimeSets["TS1"];
                            else if (string.Compare(cellValue, "TS2", true) == 0)
                                deviceMode.TSW = basicMipiSettings.TimeSets["TS2"];
                            else if (string.Compare(cellValue, "TS3", true) == 0)
                                deviceMode.TSW = basicMipiSettings.TimeSets["TS3"];
                            else if (string.Compare(cellValue, "TS4", true) == 0)
                                deviceMode.TSW = basicMipiSettings.TimeSets["TS4"];
                            else
                                throw new Exception(string.Format("{0}的TS检测到非法的TS配置{1}，请填入TS1,TS2,TS3或TS4！", deviceMode.DeviceModeName, cellValue));
                        }
                        else
                        {
                            if (string.Compare(cellValue, "1", true) == 0
                                || string.Compare(cellValue, "0", true) == 0
                                || string.Compare(cellValue, "X", false) == 0)
                                deviceMode.TruthValues.Add(basicMipiSettings.PinMap[pins[columnIndex - 1]], cellValue);
                            else
                                throw new Exception(string.Format("{0}的{1}检测到非法的输入{2}，请填入0,1或X！", deviceMode.DeviceModeName, pins[columnIndex - 1], cellValue));
                        }
                    }

                    if (basicMipiSettings.TruthTable.ContainsKey(deviceMode.DeviceModeName))
                        throw new Exception(string.Format("DeviceMode - {0}已存在，请确认！", deviceMode.DeviceModeName));
                    else
                        basicMipiSettings.TruthTable.Add(deviceMode.DeviceModeName, deviceMode);
                }
            }

            rowIndex = rowPatternTitle + 1;
            GeneralPatternSettings generalPatternSettings = new GeneralPatternSettings();
            for (; rowIndex < rowCount; rowIndex++)
            {
                string sGeneralMode = GetCellValue(ws, rowIndex, colPattern);
                if (string.IsNullOrEmpty(sGeneralMode))
                    throw new Exception(string.Format("通用配置中，检测到为空的Pattern，请确认!"));
                GeneralMode generalMode = new GeneralMode();
                generalMode.GeneralModeName = sGeneralMode;

                string sCode = GetCellValue(ws, rowIndex, colCode);
                string sSite = GetCellValue(ws, rowIndex, colSite);
                if (string.IsNullOrEmpty(sCode))
                    throw new Exception(string.Format("通用配置中，检测到{0}存在为空的Code，请确认!", generalMode.GeneralModeName));
                if (sCode.EndsWith(";"))
                    sCode = sCode.Substring(0, sCode.Length - 1);
                for (int i = 1; i <= sCode.Split(';').Length; i++)
                {
                    string singleCode = sCode.Split(';')[i - 1];
                    if (singleCode.IndexOf("(") == -1)
                    {
                        if (basicMipiSettings.TruthTable.ContainsKey(singleCode))
                        {
                            generalMode.DeviceModes.Add(new KeyValuePair<DeviceMode, int>(basicMipiSettings.TruthTable[singleCode], 1));
                        }
                        else
                        {
                            throw new Exception(string.Format("通用配置中，检测到{0}存在无效的DeviceMode - {1}，请对照基础配置表进行确认!", generalMode.GeneralModeName, singleCode));
                        }
                    }
                    else
                    {
                        string sTimes = singleCode.Substring(singleCode.IndexOf("(") + 1, singleCode.LastIndexOf(")") - singleCode.IndexOf("(") - 1);
                        if(sTimes.ToUpper().StartsWith("TRIGGER"))
                        {
                            if (generalMode.TriggerAt > 0)
                            {
                                throw new Exception(string.Format("通用配置中，检测到{0}存在多个Trigger项，请确认!", generalMode.GeneralModeName));
                            }
                            else
                            {
                                generalMode.TriggerAt = i;
                            }

                            //Remove 'Trigger'
                            sTimes = sTimes.Substring(7);
                        }

                        int iTimes = 0;
                        if (!int.TryParse(sTimes, out iTimes))
                        {
                            throw new Exception(string.Format("通用配置中，检测到{0}存在无效配置，次数必须为整数，请确认!", generalMode.GeneralModeName));
                        }

                        if (iTimes > 1000)
                        {
                            throw new Exception(string.Format("通用配置中，检测到{0}存在无效配置，次数不能大于1000，请确认!", generalMode.GeneralModeName));
                        }

                        singleCode = singleCode.Substring(0, singleCode.IndexOf("("));
                        if (basicMipiSettings.TruthTable.ContainsKey(singleCode))
                        {
                            generalMode.DeviceModes.Add(new KeyValuePair<DeviceMode, int>(basicMipiSettings.TruthTable[singleCode], iTimes));
                        }
                        else
                        {
                            throw new Exception(string.Format("通用配置中，检测到{0}存在无效的DeviceMode - {1}，请对照基础配置表进行确认!", generalMode.GeneralModeName, singleCode));
                        }
                    }
                }
                generalMode.SiteConfig = ParseSiteConfig(sSite);
                generalMode.LineStart = startlinenumber;
                startlinenumber = generalMode.LineEnd + 1;

                if (generalPatternSettings.GeneralModes.ContainsKey(generalMode.GeneralModeName))
                {
                    throw new Exception(string.Format("通用配置中，检测到同名的Pattern - {0}，请确认!", generalMode.GeneralModeName));
                }
                else
                {
                    generalPatternSettings.GeneralModes.Add(generalMode.GeneralModeName, generalMode);
                }
            }

            return generalPatternSettings;
        }

        private MipiPatternSettings LoadMipiPatternVC(ISheet ws, BasicPatternSettings basicMipiSettings, ref int startlinenumber)
        {
            int rowCount = ws.LastRowNum + 1; //得到行数 
            int rowTitile = 5;
            int colMipiMode = 2;  // MipiMode的位置
            int colCode = 6;  // Code的位置
            int colClk = 7;  // Clk的位置
            int colData = 8;  // Data的位置
            int colLoopRequired = 9;  // LoopRequired的位置

            //Get colCount
            int colNumber = colLoopRequired;
            string colName = string.Empty;
            do
            {
                colNumber++;
                colName = GetCellValue(ws, rowTitile, colNumber);
            } while (!string.IsNullOrEmpty(colName));
            int colCount = colNumber;
            int additionalColCount = colCount - 10;//In VC template, the original column count is 10.
            if (additionalColCount > 0 && (additionalColCount % 3) != 0)
            {
                throw new Exception("MIPI配置中，检测到有额外未成对的Code/Clk/Data，请检查配置文件！");
            }

            MipiPatternSettings mipiModeSettings = new MipiPatternSettings();
            startlinenumber = 3; //因为加入了RESET

            for (int rowIndex = rowTitile + 1; rowIndex < rowCount; rowIndex++)
            {
                string sMipiMode = GetCellValue(ws, rowIndex, colMipiMode);
                if (string.IsNullOrEmpty(sMipiMode))
                    throw new Exception(string.Format("MIPI配置中，检测到为空的Mipi Mode，请确认!"));
                MipiMode mipiMode = new MipiMode();
                mipiMode.MipiModeName = sMipiMode;
                mipiMode.LoopRequired = GetCellValue(ws, rowIndex, colLoopRequired).ToUpper().Trim() == "Y" ? true : false;
                MipiGroup mipiGroup = new MipiGroup();
                mipiGroup.MipiGroupName = sMipiMode;
                mipiGroup.PreElapsedMicroseconds = 0;

                string sCodes = GetCellValue(ws, rowIndex, colCode);
                string sCLK = GetCellValue(ws, rowIndex, colClk);
                string sDATA = GetCellValue(ws, rowIndex, colData);
                if (string.IsNullOrEmpty(sCodes))
                    throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在为空的Code，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                if (!basicMipiSettings.PinMap.Any(x => x.Key == sCLK))
                    throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的CLK - {2}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK));
                if (!basicMipiSettings.PinMap.Any(x => x.Key == sDATA))
                    throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的DATA - {2}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sDATA));
                if (basicMipiSettings.ChannelPairs.ContainsKey(sCLK))
                {
                    if (basicMipiSettings.ChannelPairs[sCLK] != sDATA)
                        throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组的{CLK，DATA} - {{2}，{3}} 与其他组{{2}，{4}}存在冲突，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK, sDATA, basicMipiSettings.ChannelPairs[sCLK]));
                }
                else
                {
                    if (!basicMipiSettings.ChannelPairs.ContainsValue(sDATA))
                        basicMipiSettings.ChannelPairs.Add(sCLK, sDATA);
                    else
                        throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组的{CLK，DATA} - {{2}，{3}} 与其他组{{4}，{3}}存在冲突，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK, sDATA, basicMipiSettings.ChannelPairs.First(x => x.Value == sDATA).Key));
                }
                MipiStep mipiStep = new MipiStep();
                mipiStep.CLK = basicMipiSettings.PinMap[sCLK];
                mipiStep.DATA = basicMipiSettings.PinMap[sDATA];
                mipiStep.SiteConfig = ParseSiteConfig(string.Empty);
                try
                {
                    mipiStep.MipiCodes = ParseMipiCodes(sCodes);
                    mipiStep.OriginalCodes = sCodes;
                }
                catch (Exception ex)
                {
                    throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的Code，请确认!\n{2}", mipiMode.MipiModeName, mipiGroup.MipiGroupName, ex.Message));
                }
                mipiStep.CalculateLineCount();
                mipiGroup.MipiSteps.Add(mipiStep);

                if (additionalColCount > 0)
                {
                    for (int columnIndex = 10; columnIndex < colCount; )
                    {
                        sCodes = GetCellValue(ws, rowIndex, columnIndex);
                        if (!string.IsNullOrEmpty(sCodes))
                        {
                            sCLK = GetCellValue(ws, rowIndex, columnIndex + 1);
                            sDATA = GetCellValue(ws, rowIndex, columnIndex + 2);
                            if (!basicMipiSettings.PinMap.Any(x => x.Key == sCLK))
                                throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的CLK - {2}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK));
                            if (!basicMipiSettings.PinMap.Any(x => x.Key == sDATA))
                                throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的DATA - {2}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sDATA));
                            if (basicMipiSettings.ChannelPairs.ContainsKey(sCLK))
                            {
                                if (basicMipiSettings.ChannelPairs[sCLK] != sDATA)
                                    throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组的{CLK，DATA} - {{2}，{3}} 与其他组{{2}，{4}}存在冲突，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK, sDATA, basicMipiSettings.ChannelPairs[sCLK]));
                            }
                            else
                            {
                                if (!basicMipiSettings.ChannelPairs.ContainsValue(sDATA))
                                    basicMipiSettings.ChannelPairs.Add(sCLK, sDATA);
                                else
                                    throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组的{CLK，DATA} - {{2}，{3}} 与其他组{{4}，{3}}存在冲突，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName, sCLK, sDATA, basicMipiSettings.ChannelPairs.First(x => x.Value == sDATA).Key));
                            }
                            mipiStep = new MipiStep();
                            mipiStep.CLK = basicMipiSettings.PinMap[sCLK];
                            mipiStep.DATA = basicMipiSettings.PinMap[sDATA];
                            mipiStep.SiteConfig = ParseSiteConfig(string.Empty);
                            try
                            {
                                mipiStep.MipiCodes = ParseMipiCodes(sCodes);
                                mipiStep.OriginalCodes = sCodes;
                            }
                            catch (Exception ex)
                            {
                                throw new Exception(string.Format("MIPI配置中，检测到{0}的{1}组存在非法的Code，请确认!\n{2}", mipiMode.MipiModeName, mipiGroup.MipiGroupName, ex.Message));
                            }
                            mipiStep.CalculateLineCount();
                            mipiGroup.MipiSteps.Add(mipiStep);
                        }
                        columnIndex = columnIndex + 3;
                    }
                }

                mipiGroup.CalculateLineCount();
                mipiGroup.LineStart = startlinenumber;
                startlinenumber = mipiGroup.LineEnd + 1;
                if (mipiMode.MipiGroups.ContainsKey(mipiGroup.MipiGroupName))
                {
                    throw new Exception(string.Format("MIPI配置中，检测到{0}存在同名的组 - {1}，请确认!", mipiMode.MipiModeName, mipiGroup.MipiGroupName));
                }
                else
                {
                    mipiMode.MipiGroups.Add(mipiGroup.MipiGroupName, mipiGroup);
                }

                if (mipiModeSettings.MipiModes.ContainsKey(mipiMode.MipiModeName))
                {
                    throw new Exception(string.Format("MIPI配置中，检测到同名的Mipi Mode - {0}，请确认!", mipiMode.MipiModeName));
                }
                else
                {
                    mipiModeSettings.MipiModes.Add(mipiMode.MipiModeName, mipiMode);
                }
            }

            return mipiModeSettings;
        }

        private string GetCellValue(ISheet ws, int rowIndex, int colIndex)
        {
            IRow row = ws.GetRow(rowIndex);
            if (row == null)
                return "";
            ICell cell = row.GetCell(colIndex);
            if (cell == null)
                return "";
            else
                return ws.GetRow(rowIndex).GetCell(colIndex).ToString().Trim();
        }

        private List<MipiCode> ParseMipiCodes(string sCodes)
        {
            List<MipiCode> mipiCodes = new List<MipiCode>();
            string[] arrayCodes = sCodes.Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);
            foreach (string code in arrayCodes)
            {
                uint value = 0;
                string userID = string.Empty;
                string command = string.Empty;
                string bc = string.Empty;
                string regID = string.Empty;
                List<string> regIDs = new List<string>();
                string data = string.Empty;
                List<string> datas = new List<string>();

                MipiCode mipiCode = new MipiCode();
                if (code.ToUpper().StartsWith("DELAY"))
                {
                    mipiCode.MipiCodeType = ReadWrite.Delay;
                    var sElapsedMicroseconds = code.ToUpper().Replace("DELAY", "").Replace("(", "").Replace(")", "");
                    uint elapsedMicroseconds = 0;
                    if (uint.TryParse(sElapsedMicroseconds, out elapsedMicroseconds))
                    {
                        if (elapsedMicroseconds == 0)
                            throw new Exception(string.Format("非法的Delay时间 - {0}!", sElapsedMicroseconds));
                        else
                            mipiCode.ElapsedMicroseconds = elapsedMicroseconds;
                    }
                    else
                    {
                        throw new Exception(string.Format("非法的Delay时间 - {0}!", sElapsedMicroseconds));
                    }
                }
                else if (code.ToUpper().StartsWith("W") || code.ToUpper().StartsWith("R"))
                {
                    if (code.Length <= 4)
                        throw new Exception(string.Format("{0}格式错误！例W21C40，User ID为2，Register Address为1C，Data为40。", code));

                    mipiCode.MipiCodeType = code.ToUpper().StartsWith("W") ? ReadWrite.Write : ReadWrite.Read;

                    userID = code.Substring(1, 1);
                    if (uint.TryParse(userID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                    {
                        if (value > 0xF)
                        {
                            throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                        }
                        else
                        {
                            mipiCode.UserID = value;
                        }
                    }
                    else
                    {
                        throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                    }

                    command = code.ToUpper().StartsWith("W") ? "010" : "011";
                    mipiCode.Command = ParseStringToUInt(command);

                    mipiCode.BC = 0;

                    regID = code.Substring(2, 2);
                    if (uint.TryParse(regID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                    {
                        if (value > 0x1F)
                        {
                            throw new Exception(string.Format("{0}中的Register Address - {1}应该是[0,1F]之间的整型！", code, regID));
                        }
                        else
                        {
                            mipiCode.RegIDs.Add(value);
                        }
                    }
                    else
                    {
                        throw new Exception(string.Format("{0}中的Register Address - {1}应该是[0,1F]之间的整型！", code, regID));
                    }

                    data = code.Substring(4, code.Length - 4);
                    if (uint.TryParse(data, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                    {
                        if (value > 0xFF)
                        {
                            throw new Exception(string.Format("{0}中的Data - {1}应该是[0,FF]之间的整型！", code, data));
                        }
                        else
                        {
                            mipiCode.Datas.Add(value);
                        }
                    }
                    else
                    {
                        throw new Exception(string.Format("{0}中的Data - {1}应该是[0,FF]之间的整型！", code, data));
                    }
                }
                else if (code.ToUpper().StartsWith("EW") || code.ToUpper().StartsWith("ER"))
                {
                    if (code.Length <= 6)
                        throw new Exception(string.Format("{0}格式错误！例EW212DFFEE，User ID为2，BC为1，Register Address为2D，Data为FFEE。", code));

                    mipiCode.MipiCodeType = code.ToUpper().StartsWith("EW") ? ReadWrite.ExtendWrite : ReadWrite.ExtendRead;

                    userID = code.Substring(2, 1);
                    if (uint.TryParse(userID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                    {
                        if (value > 0xF)
                        {
                            throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                        }
                        else
                        {
                            mipiCode.UserID = value;
                        }
                    }
                    else
                    {
                        throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                    }

                    command = code.ToUpper().StartsWith("EW") ? "0000" : "0010";
                    mipiCode.Command = ParseStringToUInt(command);

                    bc = code.Substring(3, 1);
                    mipiCode.BC = uint.Parse(bc, NumberStyles.HexNumber, CultureInfo.InvariantCulture);
                    if (mipiCode.BC > 0xF)
                        throw new Exception(string.Format("{0}中的BC - {1}应该是[0,F]之间的整型！", code, bc));

                    regID = code.Substring(4, 2);
                    if (uint.TryParse(regID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                    {
                        if (value > 0xFF)
                        {
                            throw new Exception(string.Format("{0}中的Register Address - {1}应该是[0,FF]之间的整型！", code, regID));
                        }
                        else
                        {
                            mipiCode.RegIDs.Add(value);
                        }
                    }
                    else
                    {
                        throw new Exception(string.Format("{0}中的Register Address - {1}应该是[0,FF]之间的整型！", code, regID));
                    }

                    data = code.Substring(6, code.Length - 6);
                    if (data.Length % 2 == 1)
                    {
                        datas.Add(data.Substring(0, 1));
                        for (int i = 1; i < data.Length;)
                        {
                            datas.Add(data.Substring(i, 2));
                            i = i + 2;
                        }
                    }
                    else
                    {
                        for (int i = 0; i < data.Length;)
                        {
                            datas.Add(data.Substring(i, 2));
                            i = i + 2;
                        }
                    }
                    if (datas.Count > (0xF + 1))
                        throw new Exception(string.Format("{0}中的Data - {1}超出最大限制，128位！", code, data));
                    if (datas.Count != mipiCode.BC + 1)
                        throw new Exception(string.Format("{0}中的Data - {1}与BC - {2}位数不匹配！", code, data, bc));
                    for (int i = 0; i < datas.Count; i++)
                    {
                        string splittedData = datas[i];
                        if (uint.TryParse(splittedData, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                        {
                            if (value > 0xFF)
                            {
                                throw new Exception(string.Format("{0}中的第{2}段Data - {1}应该是[0,FF]之间的整型！", code, splittedData, i + 1));
                            }
                            else
                            {
                                mipiCode.Datas.Add(value);
                            }
                        }
                        else
                        {
                            throw new Exception(string.Format("{0}中的Data - {1}包含了非法的{2}，应该是[0,FF]之间的整型！", code, data, splittedData));
                        }
                    }
                }
                else if (code.ToUpper().StartsWith("ZW"))
                {
                    if (code.Length <= 5)
                        throw new Exception(string.Format("{0}格式错误！例ZW2003F，User ID为2，Register Address为00，Data为3F。", code));

                    mipiCode.MipiCodeType = ReadWrite.ZeroWrite;

                    userID = code.Substring(2, 1);
                    if (uint.TryParse(userID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                    {
                        if (value > 0xF)
                        {
                            throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                        }
                        else
                        {
                            mipiCode.UserID = value;
                        }
                    }
                    else
                    {
                        throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                    }

                    mipiCode.Command = 0;

                    mipiCode.BC = 0;

                    regID = code.Substring(3, 2);
                    if (regID != "00")
                        throw new Exception(string.Format("{0}格式错误！例ZW2003F，User ID为2，Register Address为00，Data为3F。", code));
                    mipiCode.RegIDs.Add(0);

                    data = code.Substring(5, code.Length - 5);
                    if (uint.TryParse(data, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                    {
                        if (value > 0x7F)
                        {
                            throw new Exception(string.Format("{0}中的Data - {1}应该是[0,7F]之间的整型！", code, data));
                        }
                        else
                        {
                            mipiCode.Datas.Add(value);
                        }
                    }
                    else
                    {
                        throw new Exception(string.Format("{0}中的Data - {1}应该是[0,7F]之间的整型！", code, data));
                    }
                }
                else if (code.ToUpper().StartsWith("MW"))
                {
                    if (code.Length <= 5)
                        throw new Exception(string.Format("{0}格式错误！例MW200FFFE，User ID为2，Register Address为00，Mask为FF，Data为FE。", code));

                    mipiCode.MipiCodeType = ReadWrite.MaskWrite;

                    userID = code.Substring(2, 1);
                    if (uint.TryParse(userID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                    {
                        if (value > 0xF)
                        {
                            throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                        }
                        else
                        {
                            mipiCode.UserID = value;
                        }
                    }
                    else
                    {
                        throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                    }

                    command = "0001";
                    mipiCode.Command = ParseStringToUInt(command);

                    bc = "1001";
                    mipiCode.BC = ParseStringToUInt(bc);

                    regID = code.Substring(3, 2);
                    if (uint.TryParse(regID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                    {
                        if (value > 0xFF)
                        {
                            throw new Exception(string.Format("{0}中的Register Address - {1}应该是[0,FF]之间的整型！", code, regID));
                        }
                        else
                        {
                            mipiCode.RegIDs.Add(value);
                        }
                    }
                    else
                    {
                        throw new Exception(string.Format("{0}中的Register Address - {1}应该是[0,FF]之间的整型！", code, regID));
                    }

                    data = code.Substring(5, code.Length - 5);
                    if (data.Length % 2 == 1)
                    {
                        datas.Add(data.Substring(0, 1));
                        for (int i = 1; i < data.Length;)
                        {
                            datas.Add(data.Substring(i, 2));
                            i = i + 2;
                        }
                    }
                    else
                    {
                        for (int i = 0; i < data.Length;)
                        {
                            datas.Add(data.Substring(i, 2));
                            i = i + 2;
                        }
                    }
                    if (datas.Count != 2)
                        throw new Exception(string.Format("{0}中的MaskData - {1}位数不匹配！", code, data));
                    for (int i = 0; i < datas.Count; i++)
                    {
                        string splittedData = datas[i];
                        if (uint.TryParse(splittedData, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                        {
                            if (value > 0xFF)
                            {
                                throw new Exception(string.Format("{0}中的第{2}段Data - {1}应该是[0,FF]之间的整型！", code, splittedData, i + 1));
                            }
                            else
                            {
                                mipiCode.Datas.Add(value);
                            }
                        }
                        else
                        {
                            throw new Exception(string.Format("{0}中的Data - {1}包含了非法的{2}，应该是[0,FF]之间的整型！", code, data, splittedData));
                        }
                    }
                }
                else if (code.ToUpper().StartsWith("LEW") || code.ToUpper().StartsWith("LER"))
                {
                    if (code.Length <= 9)
                        throw new Exception(string.Format("{0}格式错误！例LEW212D2BFFEE，User ID为2，BC为1，Register Address为2D2B，Data为FFEE。", code));

                    mipiCode.MipiCodeType = code.ToUpper().StartsWith("LEW") ? ReadWrite.LongExtendWrite : ReadWrite.LongExtendRead;

                    userID = code.Substring(3, 1);
                    if (uint.TryParse(userID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                    {
                        if (value > 0xF)
                        {
                            throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                        }
                        else
                        {
                            mipiCode.UserID = value;
                        }
                    }
                    else
                    {
                        throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                    }

                    command = code.ToUpper().StartsWith("LEW") ? "00110" : "00111";
                    mipiCode.Command = ParseStringToUInt(command);

                    bc = code.Substring(4, 1);
                    mipiCode.BC = uint.Parse(bc, NumberStyles.HexNumber, CultureInfo.InvariantCulture);
                    if (mipiCode.BC > 7)
                        throw new Exception(string.Format("{0}中的BC - {1}应该是[0,7]之间的整型！", code, bc));

                    regID = code.Substring(5, 4);
                    for (int i = 0; i < regID.Length;)
                    {
                        regIDs.Add(regID.Substring(i, 2));
                        i = i + 2;
                    }
                    if (regIDs.Count != 2)
                    {
                        throw new Exception(string.Format("{0}中的Register Address - {1}位数不匹配！", code, regID));
                    }
                    for (int i = 0; i < regIDs.Count; i++)
                    {
                        string splittedRegID = regIDs[i];
                        if (uint.TryParse(splittedRegID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                        {
                            if (value > 0xFF)
                            {
                                throw new Exception(string.Format("{0}中的第{2}段Register Address - {1}应该是[0,FF]之间的整型！", code, splittedRegID, i + 1));
                            }
                            else
                            {
                                mipiCode.RegIDs.Add(value);
                            }
                        }
                        else
                        {
                            throw new Exception(string.Format("{0}中的Register Address - {1}包含了非法的{2}，应该是[0,FF]之间的整型！", code, data, splittedRegID));
                        }
                    }

                    data = code.Substring(9, code.Length - 9);
                    if (data.Length % 2 == 1)
                    {
                        datas.Add(data.Substring(0, 1));
                        for (int i = 1; i < data.Length;)
                        {
                            datas.Add(data.Substring(i, 2));
                            i = i + 2;
                        }
                    }
                    else
                    {
                        for (int i = 0; i < data.Length;)
                        {
                            datas.Add(data.Substring(i, 2));
                            i = i + 2;
                        }
                    }
                    if (datas.Count > (7 + 1))
                        throw new Exception(string.Format("{0}中的Data - {1}超出最大限制，64位！", code, data));
                    if (datas.Count != mipiCode.BC + 1)
                        throw new Exception(string.Format("{0}中的Data - {1}与BC - {2}位数不匹配！", code, data, bc));
                    for (int i = 0; i < datas.Count; i++)
                    {
                        string splittedData = datas[i];
                        if (uint.TryParse(splittedData, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                        {
                            if (value > 0xFF)
                            {
                                throw new Exception(string.Format("{0}中的第{2}段Data - {1}应该是[0,FF]之间的整型！", code, splittedData, i + 1));
                            }
                            else
                            {
                                mipiCode.Datas.Add(value);
                            }
                        }
                        else
                        {
                            throw new Exception(string.Format("{0}中的Data - {1}包含了非法的{2}，应该是[0,FF]之间的整型！", code, data, splittedData));
                        }
                    }
                }
                else if (code.ToUpper().StartsWith("UEW") || code.ToUpper().StartsWith("UER"))
                {
                    var codes = code.Split('_');
                    if (codes.Length != 3)
                        throw new Exception(string.Format("{0}格式错误！例UEW2AA_2D2B22_FFEEDDCCBB，User ID为2，Command为A，BC为A，Register Address为2D2B22，Data为FFEEDDCCBB。", code));

                    mipiCode.MipiCodeType = code.ToUpper().StartsWith("UEW") ? ReadWrite.UniversalExtendWrite : ReadWrite.UniversalExtendRead;
                    
                    userID = code.Substring(3, 1);
                    if (uint.TryParse(userID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                    {
                        if (value > 0xF)
                        {
                            throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                        }
                        else
                        {
                            mipiCode.UserID = value;
                        }
                    }
                    else
                    {
                        throw new Exception(string.Format("{0}中的User ID - {1}应该是[0,F]之间的整型！", code, userID));
                    }

                    command = code.Substring(4, 1);
                    mipiCode.Command = uint.Parse(command, NumberStyles.HexNumber, CultureInfo.InvariantCulture);

                    bc = code.Substring(5, 1);
                    mipiCode.BC = uint.Parse(bc, NumberStyles.HexNumber, CultureInfo.InvariantCulture);
                    if (mipiCode.BC > 0xF)
                        throw new Exception(string.Format("{0}中的BC - {1}应该是[0,F]之间的整型！", code, bc));

                    regID = codes[1];
                    if (regID.Length % 2 == 1)
                    {
                        regIDs.Add(regID.Substring(0, 1));
                        for (int i = 1; i < regID.Length;)
                        {
                            regIDs.Add(regID.Substring(i, 2));
                            i = i + 2;
                        }
                    }
                    else
                    {
                        for (int i = 0; i < regID.Length;)
                        {
                            regIDs.Add(regID.Substring(i, 2));
                            i = i + 2;
                        }
                    }
                    for (int i = 0; i < regIDs.Count; i++)
                    {
                        string splittedRegID = regIDs[i];
                        if (uint.TryParse(splittedRegID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                        {
                            if (value > 0xFF)
                            {
                                throw new Exception(string.Format("{0}中的第{2}段Register Address - {1}应该是[0,FF]之间的整型！", code, splittedRegID, i + 1));
                            }
                            else
                            {
                                mipiCode.RegIDs.Add(value);
                            }
                        }
                        else
                        {
                            throw new Exception(string.Format("{0}中的Register Address - {1}包含了非法的{2}，应该是[0,FF]之间的整型！", code, data, splittedRegID));
                        }
                    }

                    data = codes[2];
                    if (data.Length % 2 == 1)
                    {
                        datas.Add(data.Substring(0, 1));
                        for (int i = 1; i < data.Length;)
                        {
                            datas.Add(data.Substring(i, 2));
                            i = i + 2;
                        }
                    }
                    else
                    {
                        for (int i = 0; i < data.Length;)
                        {
                            datas.Add(data.Substring(i, 2));
                            i = i + 2;
                        }
                    }
                    for (int i = 0; i < datas.Count; i++)
                    {
                        string splittedData = datas[i];
                        if (uint.TryParse(splittedData, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
                        {
                            if (value > 0xFF)
                            {
                                throw new Exception(string.Format("{0}中的第{2}段Data - {1}应该是[0,FF]之间的整型！", code, splittedData, i + 1));
                            }
                            else
                            {
                                mipiCode.Datas.Add(value);
                            }
                        }
                        else
                        {
                            throw new Exception(string.Format("{0}中的Data - {1}包含了非法的{2}，应该是[0,FF]之间的整型！", code, data, splittedData));
                        }
                    }
                }
                else
                {
                    throw new Exception(String.Format("仅支持以W、R、ZW、MW、EW、ER、LEW、LER、UEW、UER或DELAY开头的Code，{0}为非法Code，请修正!", code));
                }

                mipiCodes.Add(mipiCode);
            }
            return mipiCodes;
        }

        private uint ParseStringToUInt(string str1)
        {
            uint res = 0;
            for (int i = 0; i < str1.Length; i++)
            {
                if (str1[i] == '1')
                {
                    res += (uint)Math.Pow(2, str1.Length - i - 1);
                }
                else if (str1[i] == '0')
                {
                    res += 0;
                }
                else
                {
                    throw new Exception("Invalid binary string!");
                }
            }
            return res;
        }

        private string BuildData(char data, Pin pinCLK, Pin pinDATA, SiteConfig siteConfig, char clock = '1', bool isRead = false)
        {
            string res = string.Empty;

            for (uint i = 1; i <= 32; i++)
            {
                if ((pinCLK.Site1 == i && siteConfig.HasFlag(SiteConfig.Site1)) 
                    || (pinCLK.Site2 == i && siteConfig.HasFlag(SiteConfig.Site2)) 
                    || (pinCLK.Site3 == i && siteConfig.HasFlag(SiteConfig.Site3)) 
                    || (pinCLK.Site4 == i && siteConfig.HasFlag(SiteConfig.Site4)))
                {
                    res += clock;
                    continue;
                }

                if ((pinDATA.Site1 == i && siteConfig.HasFlag(SiteConfig.Site1)) 
                    || (pinDATA.Site2 == i && siteConfig.HasFlag(SiteConfig.Site2)) 
                    || (pinDATA.Site3 == i && siteConfig.HasFlag(SiteConfig.Site3)) 
                    || (pinDATA.Site4 == i && siteConfig.HasFlag(SiteConfig.Site4)))
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

        private string BuildData(DeviceMode deviceMode ,SiteConfig siteConfig)
        {
            string res = string.Empty.PadRight(32, 'X');
            foreach (var truthValue in deviceMode.TruthValues)
            {
                if (truthValue.Key.Site1 != uint.MaxValue && siteConfig.HasFlag(SiteConfig.Site1))
                {
                    res = res.Remove((int)truthValue.Key.Site1 - 1, 1);
                    res = res.Insert((int)truthValue.Key.Site1 - 1, truthValue.Value);
                }
                if (truthValue.Key.Site2 != uint.MaxValue && siteConfig.HasFlag(SiteConfig.Site2))
                {
                    res = res.Remove((int)truthValue.Key.Site2 - 1, 1);
                    res = res.Insert((int)truthValue.Key.Site2 - 1, truthValue.Value);
                }
                if (truthValue.Key.Site3 != uint.MaxValue && siteConfig.HasFlag(SiteConfig.Site3))
                {
                    res = res.Remove((int)truthValue.Key.Site3 - 1, 1);
                    res = res.Insert((int)truthValue.Key.Site3 - 1, truthValue.Value);
                }
                if (truthValue.Key.Site4 != uint.MaxValue && siteConfig.HasFlag(SiteConfig.Site4))
                {
                    res = res.Remove((int)truthValue.Key.Site4 - 1, 1);
                    res = res.Insert((int)truthValue.Key.Site4 - 1, truthValue.Value);
                }
            }
            return res;
        }

        #endregion

        #region private methods for version2

        private void GeneratePATbyCSV(string filePAT)
        {
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
                    int validLine = 0;
                    bool existNullLine = false;
                    foreach (DataRow row in sheet.Rows)
                    {
                        //if (row.ItemArray.All(x => x.ToString() == "") || (row.ItemArray.Where(x => x.ToString() == "").Count() + row.ItemArray.Count(x => x.ToString().Contains(" ") == true) == 7))
                        if (row.ItemArray.All(x => x.ToString() != ""))
                        {
                            if (existNullLine)
                            {
                                throw new Exception(string.Format("Current Line - {0} is blank, please check the config file! ", validLine + 1));
                            }
                            validLine++;
                        }
                        else
                        {
                            existNullLine = true;
                            continue;
                        }
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
                        endlinenumber = (36 * mode.ReadWriteActions.Count(x => x.Action == ReadWrite.Write) * mode.Datas.Where(x => x / 256 < 1).Count() * mode.RegIDs.Where(x => x <= 0x1f).Count() * mode.UserIDs.Count
                        + 37 * mode.ReadWriteActions.Count(x => x.Action == ReadWrite.Read) * mode.Datas.Where(x => x / 256 < 1).Count() * mode.RegIDs.Where(x => x <= 0x1f).Count() * mode.UserIDs.Count)
                        + ((36 + 9) * mode.ReadWriteActions.Count(x => x.Action == ReadWrite.Write) * mode.Datas.Where(x => x / 256 < 1).Count() * (mode.RegIDs.Count - mode.RegIDs.Where(x => x <= 0x1f).Count()) * mode.UserIDs.Count
                        + (36 + 18) * mode.ReadWriteActions.Count(x => x.Action == ReadWrite.Write) * (mode.Datas.Count - mode.Datas.Where(x => x / 256 < 1).Count()) * (mode.RegIDs.Count - mode.RegIDs.Where(x => x <= 0x1f).Count()) * mode.UserIDs.Count
                        + (36 + 18) * mode.ReadWriteActions.Count(x => x.Action == ReadWrite.Write) * (mode.Datas.Count - mode.Datas.Where(x => x / 256 < 1).Count()) * mode.RegIDs.Where(x => x <= 0x1f).Count() * mode.UserIDs.Count
                        + (37 + 9) * mode.ReadWriteActions.Count(x => x.Action == ReadWrite.Read) * mode.Datas.Where(x => x / 256 < 1).Count() * (mode.RegIDs.Count - mode.RegIDs.Where(x => x <= 0x1f).Count()) * mode.UserIDs.Count
                        + (37 + 18) * mode.ReadWriteActions.Count(x => x.Action == ReadWrite.Read) * (mode.Datas.Count - mode.Datas.Where(x => x / 256 < 1).Count()) * (mode.RegIDs.Count - mode.RegIDs.Where(x => x <= 0x1f).Count()) * mode.UserIDs.Count
                        + (37 + 18) * mode.ReadWriteActions.Count(x => x.Action == ReadWrite.Read) * (mode.Datas.Count - mode.Datas.Where(x => x / 256 < 1).Count()) * mode.RegIDs.Where(x => x <= 0x1f).Count() * mode.UserIDs.Count)
                        + startlinenumber - 1;
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
                foreach (var channelgroup in mode.ChannelGroups)
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

                foreach (var action in mode.ReadWriteActions)
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
            using (FileStream fs = new FileStream(filePAT, FileMode.Create, FileAccess.Write))
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

            using (FileStream fs = new FileStream(filePAT, FileMode.Append, FileAccess.Write))
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
                                    List<uint> dataArr = new List<uint>();
                                    if (Data <= 0xFF)
                                    {
                                        dataArr.Add(Data);
                                    }
                                    else
                                    {
                                        uint dataFir = Data >> 8 & 0xFF;
                                        uint dataSec = Data & 0xFF;
                                        dataArr.Add(dataFir);
                                        dataArr.Add(dataSec);
                                    }
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
                                        if (RegID <= 0x1F && Data <= 0xFF)
                                        {
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
                                        }
                                        else
                                        {
                                            sValue = Convert.ToString(UserID, 2).PadLeft(4, '0');
                                            sValue += ReadWriteAction.Action == ReadWrite.Write ? "0000" : "0010";
                                            if (dataArr.Count() == 1)
                                                sValue += "0000";
                                            else if (dataArr.Count() == 2)
                                            {
                                                sValue += "0001";
                                            }

                                            sValue += GetParityBit(sValue);

                                            string sCF = string.Empty;
                                            sCF += prefix + BuildData(sValue[0], mode.ChannelGroups) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[1], mode.ChannelGroups) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[2], mode.ChannelGroups) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[3], mode.ChannelGroups) + ";// Slave Addr\n";
                                            sCF += prefix + BuildData(sValue[4], mode.ChannelGroups) + ";// Write Command C7 (0000: Write, 0010: Read)\n";
                                            sCF += prefix + BuildData(sValue[5], mode.ChannelGroups) + ";// Write Command C6\n";
                                            sCF += prefix + BuildData(sValue[6], mode.ChannelGroups) + ";// Write Command C5\n";
                                            sCF += prefix + BuildData(sValue[7], mode.ChannelGroups) + ";// Write Command C4\n";
                                            sCF += prefix + BuildData(sValue[8], mode.ChannelGroups) + ";// BC3\n";
                                            sCF += prefix + BuildData(sValue[9], mode.ChannelGroups) + ";// BC2\n";
                                            sCF += prefix + BuildData(sValue[10], mode.ChannelGroups) + ";// BC1\n";
                                            sCF += prefix + BuildData(sValue[11], mode.ChannelGroups) + ";// BC0\n";
                                            sCF += prefix + BuildData(sValue[12], mode.ChannelGroups) + ";// Parity Bit (to make odd sum Cmd + Addr)\n";
                                            sw.Write(sCF);
                                            #region Address
                                            sw.WriteLine("// Address (8 bits + Parity)");

                                            sValue = Convert.ToString(RegID, 2).PadLeft(8, '0');
                                            sValue += GetParityBit(sValue);
                                            string sAddr = string.Empty;
                                            sAddr += prefix + BuildData(sValue[0], mode.ChannelGroups) + ";// Reg Address A7\n";
                                            sAddr += prefix + BuildData(sValue[1], mode.ChannelGroups) + ";// Reg Address A6\n";
                                            sAddr += prefix + BuildData(sValue[2], mode.ChannelGroups) + ";// Reg Address A5\n";
                                            sAddr += prefix + BuildData(sValue[3], mode.ChannelGroups) + ";// Reg Address A4\n";
                                            sAddr += prefix + BuildData(sValue[4], mode.ChannelGroups) + ";// Reg Address A3\n";
                                            sAddr += prefix + BuildData(sValue[5], mode.ChannelGroups) + ";// Reg Address A2\n";
                                            sAddr += prefix + BuildData(sValue[6], mode.ChannelGroups) + ";// Reg Address A1\n";
                                            sAddr += prefix + BuildData(sValue[7], mode.ChannelGroups) + ";// Reg Address A0\n";
                                            sAddr += prefix + BuildData(sValue[8], mode.ChannelGroups) + ";// Parity Bit (to make odd sum Cmd + Addr)\n";
                                            if (ReadWriteAction.Action == ReadWrite.Read)
                                                sAddr += prefix + BuildData('0', mode.ChannelGroups) + ";// Park Bit\n";
                                            sw.Write(sAddr);
                                            #endregion
                                        }
                                        #endregion
                                        #region Data
                                        //if dataArr is 16bits, it will write dataArr's high 8bits and low 8bits in sequence
                                        for (int i = 0; i < dataArr.Count; i++)
                                        {
                                            sw.WriteLine("// Data (8 bits + Parity)");
                                            sValue = Convert.ToString(dataArr[i], 2).PadLeft(8, '0');
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
                                        }
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
        }

        private void GeneratePEZ(string filePAT)
        {
            String pe32exe = String.Format("{0}\\PECOMPILER\\pe32.exe", Environment.CurrentDirectory);
            string filePEZ = Path.ChangeExtension(filePAT, "PEZ");
            using (Process process = new Process())
            {
                process.StartInfo.FileName = pe32exe;
                process.StartInfo.Arguments = string.Format(" \"{0}\" \"{1}\"", filePAT, filePEZ);
                process.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
                process.Start();
                process.WaitForExit();
                process.Close();

                //如下模式可以从process中读取信息
                //如果成功，OutputDataReceived的e.Data不为空
                //如果有错，ErrorDataReceived的e.Data不为空
                //介于此，可以利用ErrorDataReceived，不为空则报错，为空则报成功
                //process.StartInfo.UseShellExecute = false;
                //process.StartInfo.RedirectStandardInput = true;
                //process.StartInfo.RedirectStandardOutput = true;
                //process.StartInfo.RedirectStandardError = true;
                //process.ErrorDataReceived += Process_ErrorDataReceived;
                //process.OutputDataReceived += Process_OutputDataReceived;
                //process.Start();
                //process.BeginOutputReadLine();
                //process.BeginErrorReadLine();
            }

            System.Windows.MessageBox.Show("Both PAT & PEZ file have been generated successfully!\n\nYou can click the DEBUG button to test them in panel.");
            txtFilePAT.Text = filePAT;
        }

        private void Process_OutputDataReceived(object sender, DataReceivedEventArgs e)
        {
            throw new NotImplementedException();
        }

        private void Process_ErrorDataReceived(object sender, DataReceivedEventArgs e)
        {
            throw new NotImplementedException();
        }

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
            else if (regIDs.Length == 2)
            {
                uint valueStart = 0;
                if (uint.TryParse(regIDs[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture, out valueStart))
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
                if (uint.TryParse(regIDs[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture, out valueEnd))
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
                    if (value > 0xFFFF)
                    {
                        throw new Exception("Range 0 ~ FFFF!");
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
                    if (valueStart > 0xFFFF)
                    {
                        throw new Exception("Range 0 ~ FFFF!");
                    }
                }
                else
                        {
                            throw new Exception("Unsigned integer!");
                        }

                uint valueEnd = 0;
                if (uint.TryParse(datas[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture, out valueEnd))
                {
                    if (valueEnd > 0xFFFF)
                    {
                        throw new Exception("Range 0 ~ FFFF!");
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
                            if (line.ToUpper().Trim().StartsWith("////"))
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
}
