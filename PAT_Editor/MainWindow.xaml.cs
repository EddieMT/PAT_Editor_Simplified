using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Globalization;
using System.Windows.Forms;
using System.IO;

namespace PAT_Editor
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private PAT pat;
        private string sDataOf1C = "0";
        private TreeViewItem L1;
        private const string PREFIX = @"FC       1               ";
        private const string START_SEQUENCE_CONTROL = @"FC       1               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1               01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;";
        private const string BUS_PARK = @"FC       1               10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;";
        private List<string> listRegItemName = new List<string>();
        private Dictionary<string, string> dictCommandFrame = new Dictionary<string, string>();
        private const int LINE_COUNT_OF_ONE_REGITEM = 36;

        public MainWindow()
        {
            InitializeComponent();

            trv.Items.Clear();
            L1 = new TreeViewItem();
            L1.Header = "PAT";
            trv.Items.Add(L1);

            btnConfiguration.IsEnabled = false;
            txtPosOfClock.IsReadOnly = true;
            txtPosOfData.IsReadOnly = true;
            txtUserID.IsReadOnly = true;
            txtDataOf1C.IsReadOnly = true;
            txtData.IsReadOnly = true;
        }

        private void mitNew_Click(object sender, RoutedEventArgs e)
        {
            pat = new PAT() { PosOfClock = 0, PosOfData = 1, UserID = "0" };
            txtPosOfClock.Text = "0";
            txtPosOfData.Text = "1";
            txtUserID.Text = "0";
            txtDataOf1C.Text = sDataOf1C;
            txtData.Text = "0";

            btnConfiguration.IsEnabled = true;
            txtPosOfClock.IsReadOnly = false;
            txtPosOfData.IsReadOnly = false;
            txtUserID.IsReadOnly = false;
            txtDataOf1C.IsReadOnly = false;
        }

        private void mitLoad_Click(object sender, RoutedEventArgs e)
        {
            btnConfiguration.IsEnabled = true;
        }

        private void mitSave_Click(object sender, RoutedEventArgs e)
        {
            BuildDictCommandFrame();

            SaveFileDialog dialog = new SaveFileDialog();
            dialog.Filter = "PATFile|*.PAT";
            if (dialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                string fileName = dialog.FileName;
                string line = string.Empty;
                int startlinenumber = 0;
                int endlinenumber = 0;
                using (FileStream fs = new FileStream(fileName, FileMode.Create, FileAccess.Write))
                {
                    using (StreamWriter sw = new StreamWriter(fs))
                    {
                        foreach(var patItem in pat.PatItems)
                        {
                            endlinenumber = startlinenumber + LINE_COUNT_OF_ONE_REGITEM * listRegItemName.Count - 1;

                            line = string.Format("//--------------------------------------------{0} [{1} - {2}]-----------------------------------------------------------", patItem.Key, startlinenumber, endlinenumber);
                            sw.WriteLine(line);
                            foreach(var regItem in  patItem.Value.RegItems)
                            {
                                line = string.Format("// Register {0} : Data {1} -----------------------------------------------------------", regItem.Key, regItem.Value);
                                sw.WriteLine(line);
                                sw.WriteLine("// SSC: Start Sequence Control");
                                sw.WriteLine(START_SEQUENCE_CONTROL);
                                sw.WriteLine("// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])");
                                sw.Write(dictCommandFrame[regItem.Key]);
                                sw.WriteLine("// Data (8 bits + Parity)");
                                uint iValue = 0;
                                string sValue = string.Empty;
                                iValue = uint.Parse(regItem.Value, NumberStyles.HexNumber, CultureInfo.InvariantCulture);
                                sValue += Convert.ToString(iValue, 2).PadLeft(8, '0');
                                string sData = string.Empty;
                                sData += PREFIX + BuildData(sValue[0]) + ";// Data D7\n";
                                sData += PREFIX + BuildData(sValue[1]) + ";// Data D6\n";
                                sData += PREFIX + BuildData(sValue[2]) + ";// Data D5\n";
                                sData += PREFIX + BuildData(sValue[3]) + ";// Data D4\n";
                                sData += PREFIX + BuildData(sValue[4]) + ";// Data D3\n";
                                sData += PREFIX + BuildData(sValue[5]) + ";// Data D2\n";
                                sData += PREFIX + BuildData(sValue[6]) + ";// Data D1\n";
                                sData += PREFIX + BuildData(sValue[7]) + ";// Data D0\n";
                                sData += PREFIX + BuildData(GetParityBit(sValue)) + ";// Parity Bit (to make odd sum Data)\n";
                                sw.Write(sData);
                                sw.WriteLine("// Bus Park");
                                sw.WriteLine(BUS_PARK);
                            }
                            sw.WriteLine();

                            startlinenumber = endlinenumber + 1;
                        }
                    }
                }
                System.Windows.MessageBox.Show("Done!");
            }
        }

        private void btnConfiguration_Click(object sender, RoutedEventArgs e)
        {
            PATConfiguration config = new PATConfiguration(pat);
            config.ShowDialog();

            if (config.listPatItemName != null && config.listRegItemName != null)
            {
                PAT patNew = new PAT();
                patNew.PosOfClock = pat.PosOfClock;
                patNew.PosOfData = pat.PosOfData;
                patNew.UserID = pat.UserID;

                foreach (var patName in config.listPatItemName)
                {
                    if (pat.PatItems.Any(x => x.Key == patName))
                    {
                        PATItem patItem = pat.PatItems[patName];
                        PATItem patItemNew = new PATItem();
                        foreach (var regName in config.listRegItemName)
                        {
                            if (patItem.RegItems.Any(x => x.Key == regName))
                            {
                                patItemNew.RegItems.Add(regName, patItem.RegItems[regName]);
                            }
                            else
                            {
                                patItemNew.RegItems.Add(regName, "0");
                            }
                        }
                        patNew.PatItems.Add(patName, patItemNew);
                    }
                    else
                    {
                        PATItem patItemNew = new PATItem();
                        foreach (var regName in config.listRegItemName)
                        {
                            if (regName == "1C")
                                patItemNew.RegItems.Add(regName, sDataOf1C);
                            else
                                patItemNew.RegItems.Add(regName, "0");
                        }
                        patNew.PatItems.Add(patName, patItemNew);
                    }
                }

                pat = patNew;

                L1.Items.Clear();
                foreach (var patItem in pat.PatItems)
                {
                    TreeViewItem L2 = new TreeViewItem();
                    L2.Header = patItem.Key;
                    L1.Items.Add(L2);
                    foreach(var regitem in patItem.Value.RegItems)
                    {
                        TreeViewItem L3 = new TreeViewItem();
                        L3.Header = regitem.Key;
                        L2.Items.Add(L3);
                    }
                }

                listRegItemName = config.listRegItemName;
            }
        }

        private void trv_SelectedItemChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            TreeViewItem L3 = (TreeViewItem)trv.SelectedItem;
            if (L3 != null && L3.Parent is TreeViewItem)
            {
                TreeViewItem L2 = L3.Parent as TreeViewItem;
                if (L2.Parent is TreeViewItem)
                {
                    txtData.Text = pat.PatItems[L2.Header.ToString()].RegItems[L3.Header.ToString()];
                    if (L3.Header.ToString() != "1C")
                    {
                        txtData.IsReadOnly = false;
                    }
                    else
                    {
                        txtData.IsReadOnly = true;
                    }
                }
                else
                {
                    txtData.IsReadOnly = true;
                }
            }
            else
            {
                txtData.IsReadOnly = true;
            }
        }

        private void txtData_TextChanged(object sender, TextChangedEventArgs e)
        {
            TreeViewItem L3 = (TreeViewItem)trv.SelectedItem;
            if (L3 != null && L3.Parent is TreeViewItem)
            {
                TreeViewItem L2 = L3.Parent as TreeViewItem;
                if (L2.Parent is TreeViewItem)
                {
                    if (L3.Header.ToString() != "1C")
                    {
                        uint iValue = 0;
                        if (!uint.TryParse(txtData.Text, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out iValue))
                        {
                            System.Windows.MessageBox.Show("Unsigned integer!");
                            txtData.Text = pat.PatItems[L2.Header.ToString()].RegItems[L3.Header.ToString()];
                            txtData.Focus();
                            return;
                        }

                        if (iValue > 0xFF)
                        {
                            System.Windows.MessageBox.Show("Range 0 ~ FF!");
                            txtData.Text = pat.PatItems[L2.Header.ToString()].RegItems[L3.Header.ToString()];
                            txtData.Focus();
                            return;
                        }

                        pat.PatItems[L2.Header.ToString()].RegItems[L3.Header.ToString()] = txtData.Text;
                    }
                }
            }
        }

        private void txtDataOf1C_TextChanged(object sender, TextChangedEventArgs e)
        {
            uint iValue = 0;
            if (!uint.TryParse(txtDataOf1C.Text, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out iValue))
            {
                System.Windows.MessageBox.Show("Unsigned integer!");
                txtDataOf1C.Text = sDataOf1C;
                txtDataOf1C.Focus();
                return;
            }

            if (iValue > 0xFF)
            {
                System.Windows.MessageBox.Show("Range 0 ~ FF!");
                txtDataOf1C.Text = sDataOf1C;
                txtDataOf1C.Focus();
                return;
            }

            sDataOf1C = txtDataOf1C.Text;

            foreach(var patItem in pat.PatItems)
            {
                patItem.Value.RegItems["1C"] = sDataOf1C;
            }
        }

        private void txtPosOfClock_TextChanged(object sender, TextChangedEventArgs e)
        {
            int iValue = 0;
            if (!int.TryParse(txtPosOfClock.Text, out iValue))
            {
                System.Windows.MessageBox.Show("Integer!");
                txtPosOfClock.Text = pat.PosOfClock.ToString();
                txtPosOfClock.Focus();
                return;
            }

            if (iValue > 31 || iValue < 0)
            {
                System.Windows.MessageBox.Show("Range 0 ~ 31!");
                txtPosOfClock.Text = pat.PosOfClock.ToString();
                txtPosOfClock.Focus();
                return;
            }

            if (txtPosOfClock.Text == txtPosOfData.Text)
            {
                System.Windows.MessageBox.Show("Bit of Clock cannot be same as Bit of Data!");
                txtPosOfClock.Text = pat.PosOfClock.ToString();
                txtPosOfClock.Focus();
                return;
            }

            pat.PosOfClock = iValue;
        }

        private void txtPosOfData_TextChanged(object sender, TextChangedEventArgs e)
        {
            int iValue = 0;
            if (!int.TryParse(txtPosOfData.Text, out iValue))
            {
                System.Windows.MessageBox.Show("Integer!");
                txtPosOfData.Text = pat.PosOfData.ToString();
                txtPosOfData.Focus();
                return;
            }

            if (iValue > 31 || iValue < 0)
            {
                System.Windows.MessageBox.Show("Range 0 ~ 31!");
                txtPosOfData.Text = pat.PosOfData.ToString();
                txtPosOfData.Focus();
                return;
            }

            if (txtPosOfClock.Text == txtPosOfData.Text)
            {
                System.Windows.MessageBox.Show("Bit of Clock cannot be same as Bit of Data!");
                txtPosOfData.Text = pat.PosOfData.ToString();
                txtPosOfData.Focus();
                return;
            }

            pat.PosOfData = iValue;
        }

        private void txtUserID_TextChanged(object sender, TextChangedEventArgs e)
        {
            uint iValue = 0;
            if (!uint.TryParse(txtUserID.Text, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out iValue))
            {
                System.Windows.MessageBox.Show("Unsigned integer!");
                txtUserID.Text = pat.UserID;
                txtUserID.Focus();
                return;
            }

            if (iValue > 0xF)
            {
                System.Windows.MessageBox.Show("Range 0 ~ F!");
                txtUserID.Text = pat.UserID;
                txtUserID.Focus();
                return;
            }

            pat.UserID = txtUserID.Text;
        }

        #region private methods
        private string BuildData(char c)
        {
            string res = string.Empty;

            for (int i = 0; i < 32; i++)
            {
                if (i == pat.PosOfClock)
                {
                    res += "1";
                    continue;
                }

                if (i == pat.PosOfData)
                {
                    res += c;
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

        private void BuildDictCommandFrame()
        {
            dictCommandFrame.Clear();
            foreach (var regItemName in listRegItemName)
            {
                uint iValue = 0;
                string sValue = string.Empty;
                iValue = uint.Parse(txtUserID.Text, NumberStyles.HexNumber, CultureInfo.InvariantCulture);
                sValue += Convert.ToString(iValue, 2).PadLeft(4, '0');
                sValue += "010";
                iValue = uint.Parse(regItemName, NumberStyles.HexNumber, CultureInfo.InvariantCulture);
                sValue += Convert.ToString(iValue, 2).PadLeft(5, '0');

                string sCommandFrame = string.Empty;
                sCommandFrame += PREFIX + BuildData(sValue[0]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX + BuildData(sValue[1]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX + BuildData(sValue[2]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX + BuildData(sValue[3]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX + BuildData(sValue[4]) + ";// Write Command C7 (010: Write, 011: Read)\n";
                sCommandFrame += PREFIX + BuildData(sValue[5]) + ";// Write Command C6\n";
                sCommandFrame += PREFIX + BuildData(sValue[6]) + ";// Write Command C5\n";
                sCommandFrame += PREFIX + BuildData(sValue[7]) + ";// Reg Address C4\n";
                sCommandFrame += PREFIX + BuildData(sValue[8]) + ";// Reg Address C3\n";
                sCommandFrame += PREFIX + BuildData(sValue[9]) + ";// Reg Address C2\n";
                sCommandFrame += PREFIX + BuildData(sValue[10]) + ";// Reg Address C1\n";
                sCommandFrame += PREFIX + BuildData(sValue[11]) + ";// Reg Address C0\n";
                sCommandFrame += PREFIX + BuildData(GetParityBit(sValue)) + ";// Parity Bit (to make odd sum Cmd + Addr)\n";
                dictCommandFrame.Add(regItemName, sCommandFrame);
            }
        }
        #endregion
    }
}
