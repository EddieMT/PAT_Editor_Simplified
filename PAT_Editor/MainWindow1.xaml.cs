using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace PAT_Editor
{
    /// <summary>
    /// Interaction logic for MainWindow1.xaml
    /// </summary>
    public partial class MainWindow1 : Window
    {
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

        private const string PREFIX_WRITE = @"FC       1   TS1               ";
        private const string START_SEQUENCE_CONTROL_WRITE = @"FC       1   TS1               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1               01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;";
        private const string BUS_PARK_WRITE = @"FC       1   TS1               10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;";

        private const string PREFIX_READ = @"FC       1   TS2               ";
        private const string START_SEQUENCE_CONTROL_READ = @"FC       1   TS2               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2               01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2               00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;";
        private const string BUS_PARK_READ = @"FC       1   TS2               10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2               0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;";
        private const int posOfClock = 0;
        private const int posOfData = 1;
        private string userID;
        private string regID;
        private Dictionary<string, string> dictCommandFrame;

        public MainWindow1()
        {
            InitializeComponent();
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            userID = txtUserID.Text.ToUpper();
            regID = txtRegID.Text.PadLeft(2, '0').ToUpper();

            uint iValue = 0;
            if (!uint.TryParse(userID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out iValue))
            {
                System.Windows.MessageBox.Show("Unsigned integer!");
                txtUserID.Focus();
                return;
            }

            if (iValue > 0xF)
            {
                System.Windows.MessageBox.Show("Range 0 ~ F!");
                txtUserID.Focus();
                return;
            }

            if (!uint.TryParse(regID, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out iValue))
            {
                System.Windows.MessageBox.Show("Unsigned integer!");
                txtRegID.Focus();
                return;
            }

            if (iValue > 0x1F)
            {
                System.Windows.MessageBox.Show("Range 0 ~ 1F!");
                txtRegID.Focus();
                return;
            }

            BuildDictCommandFrame();

            SaveFileDialog dialog = new SaveFileDialog();
            dialog.Filter = "PATFile|*.PAT";
            if (dialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                string fileName = dialog.FileName;
                using (FileStream fs = new FileStream(fileName, FileMode.Create, FileAccess.Write))
                {
                    using (StreamWriter sw = new StreamWriter(fs))
                    {
                        for (int i = 0; i < 256; i++)
                        {
                            for (int j = 0; j < 2; j++)
                            {
                                writeData(sw, (j == 0) ? true : false, i);
                            }
                        }
                    }
                }
                System.Windows.MessageBox.Show("Done!");
            }
        }

        private void writeData(StreamWriter sw, bool isWrite, int data)
        {
            if (isWrite)
            {
                string line = string.Format("// Register {0} : Data {1} : {2} -----------------------------------------------------------", regID, Convert.ToString(data, 16).PadLeft(2, '0').ToUpper(), isWrite ? "Write" : "Read");
                sw.WriteLine(line);
                sw.WriteLine("// SSC: Start Sequence Control");
                sw.WriteLine(START_SEQUENCE_CONTROL_WRITE);
                sw.WriteLine("// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])");
                sw.Write(isWrite ? dictCommandFrame["W"] : dictCommandFrame["R"]);
                sw.WriteLine("// Data (8 bits + Parity)");
                string sValue = Convert.ToString(data, 2).PadLeft(8, '0');
                string sData = string.Empty;
                sData += PREFIX_WRITE + BuildData(sValue[0]) + ";// Data D7\n";
                sData += PREFIX_WRITE + BuildData(sValue[1]) + ";// Data D6\n";
                sData += PREFIX_WRITE + BuildData(sValue[2]) + ";// Data D5\n";
                sData += PREFIX_WRITE + BuildData(sValue[3]) + ";// Data D4\n";
                sData += PREFIX_WRITE + BuildData(sValue[4]) + ";// Data D3\n";
                sData += PREFIX_WRITE + BuildData(sValue[5]) + ";// Data D2\n";
                sData += PREFIX_WRITE + BuildData(sValue[6]) + ";// Data D1\n";
                sData += PREFIX_WRITE + BuildData(sValue[7]) + ";// Data D0\n";
                sData += PREFIX_WRITE + BuildData(GetParityBit(sValue)) + ";// Parity Bit (to make odd sum Data)\n";
                sw.Write(sData);
                sw.WriteLine("// Bus Park");
                sw.WriteLine(BUS_PARK_WRITE);
                sw.WriteLine();
            }
            else
            {
                string line = string.Format("// Register {0} : Data {1} : {2} -----------------------------------------------------------", regID, Convert.ToString(data, 16).PadLeft(2, '0').ToUpper(), isWrite ? "Write" : "Read");
                sw.WriteLine(line);
                sw.WriteLine("// SSC: Start Sequence Control");
                sw.WriteLine(START_SEQUENCE_CONTROL_READ);
                sw.WriteLine("// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])");
                sw.Write(isWrite ? dictCommandFrame["W"] : dictCommandFrame["R"]);
                sw.WriteLine("// Data (8 bits + Parity)");
                string sValue = Convert.ToString(data, 2).PadLeft(8, '0');
                string sData = string.Empty;
                sData += PREFIX_READ + BuildDataHL(sValue[0]) + ";// Data D7\n";
                sData += PREFIX_READ + BuildDataHL(sValue[1]) + ";// Data D6\n";
                sData += PREFIX_READ + BuildDataHL(sValue[2]) + ";// Data D5\n";
                sData += PREFIX_READ + BuildDataHL(sValue[3]) + ";// Data D4\n";
                sData += PREFIX_READ + BuildDataHL(sValue[4]) + ";// Data D3\n";
                sData += PREFIX_READ + BuildDataHL(sValue[5]) + ";// Data D2\n";
                sData += PREFIX_READ + BuildDataHL(sValue[6]) + ";// Data D1\n";
                sData += PREFIX_READ + BuildDataHL(sValue[7]) + ";// Data D0\n";
                sData += PREFIX_READ + BuildDataHL(GetParityBit(sValue)) + ";// Parity Bit (to make odd sum Data)\n";
                sw.Write(sData);
                sw.WriteLine("// Bus Park");
                sw.WriteLine(BUS_PARK_READ);
                sw.WriteLine();
            }
        }

        private void BuildDictCommandFrame()
        {
            dictCommandFrame = new Dictionary<string, string>();
            //010: Write, 011: Read
            BuildDictCommandFrame("010");
            BuildDictCommandFrame("011");
        }

        private void BuildDictCommandFrame(string v)
        {
            uint iValue = 0;
            string sValue = string.Empty;
            iValue = uint.Parse(userID, NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            sValue += Convert.ToString(iValue, 2).PadLeft(4, '0');
            sValue += v;
            iValue = uint.Parse(regID, NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            sValue += Convert.ToString(iValue, 2).PadLeft(5, '0');

            
            if (v == "011")
            {
                string sCommandFrame = string.Empty;
                sCommandFrame += PREFIX_READ + BuildData(sValue[0]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX_READ + BuildData(sValue[1]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX_READ + BuildData(sValue[2]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX_READ + BuildData(sValue[3]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX_READ + BuildData(sValue[4]) + ";// Write Command C7 (010: Write, 011: Read)\n";
                sCommandFrame += PREFIX_READ + BuildData(sValue[5]) + ";// Write Command C6\n";
                sCommandFrame += PREFIX_READ + BuildData(sValue[6]) + ";// Write Command C5\n";
                sCommandFrame += PREFIX_READ + BuildData(sValue[7]) + ";// Reg Address C4\n";
                sCommandFrame += PREFIX_READ + BuildData(sValue[8]) + ";// Reg Address C3\n";
                sCommandFrame += PREFIX_READ + BuildData(sValue[9]) + ";// Reg Address C2\n";
                sCommandFrame += PREFIX_READ + BuildData(sValue[10]) + ";// Reg Address C1\n";
                sCommandFrame += PREFIX_READ + BuildData(sValue[11]) + ";// Reg Address C0\n";
                sCommandFrame += PREFIX_READ + BuildData(GetParityBit(sValue)) + ";// Parity Bit (to make odd sum Cmd + Addr)\n";
                sCommandFrame += PREFIX_READ + "10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit\n";
                dictCommandFrame.Add("R", sCommandFrame);
            }
            else if(v == "010")
            {
                string sCommandFrame = string.Empty;
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[0]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[1]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[2]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[3]) + ";// Slave Addr\n";
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[4]) + ";// Write Command C7 (010: Write, 011: Read)\n";
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[5]) + ";// Write Command C6\n";
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[6]) + ";// Write Command C5\n";
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[7]) + ";// Reg Address C4\n";
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[8]) + ";// Reg Address C3\n";
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[9]) + ";// Reg Address C2\n";
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[10]) + ";// Reg Address C1\n";
                sCommandFrame += PREFIX_WRITE + BuildData(sValue[11]) + ";// Reg Address C0\n";
                sCommandFrame += PREFIX_WRITE + BuildData(GetParityBit(sValue)) + ";// Parity Bit (to make odd sum Cmd + Addr)\n";
                dictCommandFrame.Add("W", sCommandFrame);
            }
        }

        private string BuildData(char c)
        {
            string res = string.Empty;

            for (int i = 0; i < 32; i++)
            {
                if (i == posOfClock)
                {
                    res += "1";
                    continue;
                }

                if (i == posOfData)
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

        private string BuildDataHL(char c)
        {
            string res = string.Empty;

            for (int i = 0; i < 32; i++)
            {
                if (i == posOfClock)
                {
                    res += "1";
                    continue;
                }

                if (i == posOfData)
                {
                    if (c == '0')
                        res += "L";
                    else if (c == '1')
                        res += "H";
                    continue;
                }

                res += 'X';
            }

            return res;
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
