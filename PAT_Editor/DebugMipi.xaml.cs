using MT.TesterDriver;
using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Documents;

namespace PAT_Editor
{
    /// <summary>
    /// Interaction logic for DebugMipi.xaml
    /// </summary>
    public partial class DebugMipi : Window
    {
        private string filePEZ;
        private List<Mode> modes;
        List<ChannelGroup> channelGroups;
        private pe32h Digital;
        private bool isOpenATELoaded = false;

        public DebugMipi(string filePEZ, List<Mode> modes, List<ChannelGroup> channelGroups)
        {
            InitializeComponent();

            this.filePEZ = filePEZ;
            this.modes = modes;
            this.channelGroups = channelGroups;
            lvMode.ItemsSource = this.modes;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            try
            {
                if (isOpenATELoaded)
                    ShutdownOpenATE();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnDebug_Click(object sender, RoutedEventArgs e)
        {
            uint value = 0;
            if (uint.TryParse(txtbdno.Text, out value))
            {

            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnLoad_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StartuoOpenATE();
                LockFields();
                isOpenATELoaded = true;
                MessageBox.Show("OpenATE is loaded successfully!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnUnload_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                ShutdownOpenATE();
                UnlockFields();
                isOpenATELoaded = false;
                MessageBox.Show("OpenATE is unloaded successfully!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void chkbdno_Checked(object sender, RoutedEventArgs e)
        {
            txtbdno.IsReadOnly = false;
        }

        private void chkbdno_Unchecked(object sender, RoutedEventArgs e)
        {
            txtbdno.IsReadOnly = true;
        }

        #region private methods
        private void LogMessage(string msg)
        {
            if (txtMessage == null)
                return;

            txtMessage.Inlines.Add(new Run("===> " + DateTime.Now.ToString() + ": " + msg));
            txtMessage.Inlines.Add(new LineBreak());
            scvMessage.ScrollToEnd();
        }

        private void StartuoOpenATE()
        {
            Digital = new pe32h(true);
            if (Digital.Initialize() != 0)
            {
                //
            }
            if (Digital.lmload(1, 1, 0, filePEZ) < 0)
            {
                //
            }
            Digital.rd_pesno(1);
            Digital.set_rz(1, 1, 0x00000001);
            Digital.set_ro(1, 1, 0x00000000);
            Digital.set_rz(1, 2, 0x00000001);
            Digital.set_ro(1, 2, 0x00000000);
            Digital.set_addif(1, 0);
            int TSW = 10;
            int TSR = 70;
            int TS3 = 200;
            Digital.set_tp(1, 1, TSW);
            Digital.set_tp(1, 2, TSR);
            Digital.set_tp(1, 3, TS3);

            int edge1 = 1 * TSW / 10;
            int edge2 = 9 * TSW / 10;
            int edge3 = 6 * TSW / 10;
            int edgeStrobe = 9 * TSW / 10;
            Digital.set_tstart(1, 1, 1, edge1);
            Digital.set_tstop(1, 1, 1, edge3);
            Digital.set_tstart(1, 2, 1, edge1);
            Digital.set_tstop(1, 2, 1, edge2);
            Digital.set_tstrob(1, 2, 1, edgeStrobe);
            Digital.set_tstart(1, 3, 1, edge1);
            Digital.set_tstop(1, 3, 1, edge2);

            edge1 = 1 * TSR / 10;
            edge2 = 9 * TSR / 10;
            edge3 = 6 * TSR / 10;
            edgeStrobe = 9 * TSR / 10;
            Digital.set_tstart(1, 1, 2, edge1);
            Digital.set_tstop(1, 1, 2, edge3);
            Digital.set_tstart(1, 2, 2, edge1);
            Digital.set_tstop(1, 2, 2, edge2);
            Digital.set_tstrob(1, 2, 2, edgeStrobe);
            Digital.set_tstart(1, 3, 2, edge1);
            Digital.set_tstop(1, 3, 2, edge2);

            edge1 = 1 * TS3 / 10;
            edge2 = 9 * TS3 / 10;
            edge3 = 6 * TS3 / 10;
            edgeStrobe = 9 * TS3 / 10;
            Digital.set_tstart(1, 1, 3, edge1);
            Digital.set_tstop(1, 1, 3, edge3);
            Digital.set_tstart(1, 2, 3, edge1);
            Digital.set_tstop(1, 2, 3, edge2);
            Digital.set_tstrob(1, 2, 3, edgeStrobe);
            Digital.set_tstart(1, 3, 3, edge1);
            Digital.set_tstop(1, 3, 3, edge2);

            //SCLK
            Digital.set_vil(1, 1, 0.0);
            Digital.set_vih(1, 1, 1.8);

            Digital.set_vol(1, 1, 0.36);
            Digital.set_voh(1, 1, 1.44);

            //SDATA
            Digital.set_vil(1, 2, 0.0);
            Digital.set_vih(1, 2, 1.8);

            Digital.set_vol(1, 2, 0.36);
            Digital.set_voh(1, 2, 1.44);

            //VIO
            Digital.set_vil(1, 3, 0.0);
            Digital.set_vih(1, 3, 1.8);

            #region ApplicationStart
            Digital.cpu_df(1, 1, 0, 0); // reset CLK to run pattern
            Digital.cpu_df(1, 2, 0, 0); // reset DATA to run pattern
            Digital.cpu_df(1, 3, 0, 0); // reset VIO to run pattern
            #endregion
        }

        private void ShutdownOpenATE()
        {
            Digital.init();
        }

        private void LockFields()
        {
            btnSave.IsEnabled = false;
            btnLoad.IsEnabled = false;
            btnUnload.IsEnabled = true;
            btnDebug.IsEnabled = true;
        }

        private void UnlockFields()
        {
            btnSave.IsEnabled = true;
            btnLoad.IsEnabled = true;
            btnUnload.IsEnabled = false;
            btnDebug.IsEnabled = false;
        }
        #endregion
    }
}
