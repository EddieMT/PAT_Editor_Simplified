using System;
using System.Collections.Generic;
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

namespace PAT_Editor
{
    /// <summary>
    /// Interaction logic for ucChannel.xaml
    /// </summary>
    public partial class ucChannel : UserControl
    {
        public int ID { get; set; }
        List<int> listDrive = new List<int>() { 0, 1 };
        public ucChannel()
        {
            InitializeComponent();

            cboDrive.ItemsSource = listDrive;
            cboDrive.SelectedItem = 0;
            rdbPattern.IsChecked = true;
        }

        public void Set(ChannelGroup channelGroup)
        {
            ID = channelGroup.Clock.ID;
            lblClockID.Text = channelGroup.Clock.ID.ToString();
            lblDataID.Text = channelGroup.Data.ID.ToString();
        }

        public void SetObj(ChannelGroup cg)
        {
            int iValue = 0;
            double dValue = 0;

            if (int.TryParse(txtVioID.Text.Trim(), out iValue))
            {
                if (iValue >= 1 && iValue <= 32)
                {
                    if (cg.Clock.ID == iValue || cg.Data.ID == iValue)
                        throw new Exception("Channel No. of VIO should not be same as clock's and data's!");
                    else
                        cg.VIO.ID = iValue;
                }
                else
                    throw new Exception("Channel No. of VIO should be within 1 - 32!");
            }
            else
            {
                throw new Exception("Channel No. of VIO should be integer!");
            }

            if (double.TryParse(txtClockVil.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.Clock.Vil = dValue;
                else
                    throw new Exception(cg.Clock.ID + "'s vil should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.Clock.ID + "'s vil should be double!");
            }

            if (double.TryParse(txtClockVih.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.Clock.Vih = dValue;
                else
                    throw new Exception(cg.Clock.ID + "'s vih should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.Clock.ID + "'s vih should be double!");
            }

            if (double.TryParse(txtClockVol.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.Clock.Vol = dValue;
                else
                    throw new Exception(cg.Clock.ID + "'s vol should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.Clock.ID + "'s vol should be double!");
            }

            if (double.TryParse(txtClockVoh.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.Clock.Voh = dValue;
                else
                    throw new Exception(cg.Clock.ID + "'s voh should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.Clock.ID + "'s voh should be double!");
            }

            if (double.TryParse(txtDataVil.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.Data.Vil = dValue;
                else
                    throw new Exception(cg.Data.ID + "'s vil should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.Data.ID + "'s vil should be double!");
            }

            if (double.TryParse(txtDataVih.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.Data.Vih = dValue;
                else
                    throw new Exception(cg.Data.ID + "'s vih should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.Data.ID + "'s vih should be double!");
            }

            if (double.TryParse(txtDataVol.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.Data.Vol = dValue;
                else
                    throw new Exception(cg.Data.ID + "'s vol should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.Data.ID + "'s vol should be double!");
            }

            if (double.TryParse(txtDataVoh.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.Data.Voh = dValue;
                else
                    throw new Exception(cg.Data.ID + "'s voh should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.Data.ID + "'s voh should be double!");
            }

            if (double.TryParse(txtVioVil.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.VIO.Vil = dValue;
                else
                    throw new Exception(cg.VIO.ID + "'s vil should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.VIO.ID + "'s vil should be double!");
            }

            if (double.TryParse(txtVioVih.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.VIO.Vih = dValue;
                else
                    throw new Exception(cg.VIO.ID + "'s vih should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.VIO.ID + "'s vih should be double!");
            }

            if (double.TryParse(txtVioVol.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.VIO.Vol = dValue;
                else
                    throw new Exception(cg.VIO.ID + "'s vol should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.VIO.ID + "'s vol should be double!");
            }

            if (double.TryParse(txtVioVoh.Text.Trim(), out dValue))
            {
                if (dValue >= 0 && dValue <= 6)
                    cg.VIO.Voh = dValue;
                else
                    throw new Exception(cg.VIO.ID + "'s voh should be within 0v - 6v!");
            }
            else
            {
                throw new Exception(cg.VIO.ID + "'s voh should be double!");
            }

            if (int.TryParse(txtClockStart.Text.Trim(), out iValue))
            {
                if (iValue >= 0 && iValue <= 100)
                    cg.Clock.Start = iValue;
                else
                    throw new Exception(cg.Clock.ID + "'s percentage of start should be within 0 - 100!");
            }
            else
            {
                throw new Exception(cg.Clock.ID + "'s percentage of start should be integer!");
            }

            if (int.TryParse(txtClockStop.Text.Trim(), out iValue))
            {
                if (iValue >= 0 && iValue <= 100)
                    cg.Clock.Stop = iValue;
                else
                    throw new Exception(cg.Clock.ID + "'s percentage of stop should be within 0 - 100!");
            }
            else
            {
                throw new Exception(cg.Clock.ID + "'s percentage of stop should be integer!");
            }

            if (int.TryParse(txtDataStart.Text.Trim(), out iValue))
            {
                if (iValue >= 0 && iValue <= 100)
                    cg.Data.Start = iValue;
                else
                    throw new Exception(cg.Data.ID + "'s percentage of start should be within 0 - 100!");
            }
            else
            {
                throw new Exception(cg.Data.ID + "'s percentage of start should be integer!");
            }

            if (int.TryParse(txtDataStrob.Text.Trim(), out iValue))
            {
                if (iValue >= 0 && iValue <= 100)
                    cg.Data.Strob = iValue;
                else
                    throw new Exception(cg.Data.ID + "'s percentage of Strob should be within 0 - 100!");
            }
            else
            {
                throw new Exception(cg.Data.ID + "'s percentage of Strob should be integer!");
            }

            if (int.TryParse(txtDataStop.Text.Trim(), out iValue))
            {
                if (iValue >= 0 && iValue <= 100)
                    cg.Data.Stop = iValue;
                else
                    throw new Exception(cg.Data.ID + "'s percentage of stop should be within 0 - 100!");
            }
            else
            {
                throw new Exception(cg.Data.ID + "'s percentage of stop should be integer!");
            }

            if (int.TryParse(txtVioStart.Text.Trim(), out iValue))
            {
                if (iValue >= 0 && iValue <= 100)
                    cg.VIO.Start = iValue;
                else
                    throw new Exception(cg.VIO.ID + "'s percentage of start should be within 0 - 100!");
            }
            else
            {
                throw new Exception(cg.VIO.ID + "'s percentage of start should be integer!");
            }

            if (int.TryParse(txtVioStop.Text.Trim(), out iValue))
            {
                if (iValue >= 0 && iValue <= 100)
                    cg.VIO.Stop = iValue;
                else
                    throw new Exception(cg.VIO.ID + "'s percentage of stop should be within 0 - 100!");
            }
            else
            {
                throw new Exception(cg.VIO.ID + "'s percentage of stop should be integer!");
            }

            if (rdbPattern.IsChecked == true)
            {
                cg.VIO.DrivePattern = DrivePattern.Pattern;
            }
            else
            {
                cg.VIO.DrivePattern = DrivePattern.Drive;
                cg.VIO.VIO_HL = (int)cboDrive.SelectedValue;
            }
        }

        private void Pattern_Checked(object sender, RoutedEventArgs e)
        {
            cboDrive.Visibility = Visibility.Hidden;
        }

        private void Drive_Checked(object sender, RoutedEventArgs e)
        {
            cboDrive.Visibility = Visibility.Visible;
        }
    }
}
