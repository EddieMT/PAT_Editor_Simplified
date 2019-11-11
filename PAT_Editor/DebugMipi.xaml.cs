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
        private List<ChannelGroup> channelGroups;
        private List<TimingSet> timingSets;
        private pe32h Digital;

        public DebugMipi(string filePEZ, List<Mode> modes, List<ChannelGroup> channelGroups, List<TimingSet> timingSets)
        {
            InitializeComponent();

            this.filePEZ = filePEZ;
            this.modes = modes;
            this.channelGroups = channelGroups;
            this.timingSets = timingSets;
            lvMode.ItemsSource = this.modes;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                foreach (var timingset in timingSets)
                {
                    ucTS uc = new ucTS();
                    uc.SetLabel(timingset.ID);
                    stpTS.Children.Add(uc);
                }

#if REALHW
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
                int data = 0;
                foreach (var channelgroup in channelGroups)
                {
                    int offset = (int)channelgroup.Clock.ID - 1;
                    data = (data | (1 << offset));
                }
                Digital.set_rz(1, 1, data);
                Digital.set_ro(1, 1, 0);
#endif
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            try
            {
#if REALHW
                Digital.init();
#endif
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnSet_Click(object sender, RoutedEventArgs e)
        {
            try
            {
#if REALHW
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

                Digital.cpu_df(1, 1, 0, 0); // reset CLK to run pattern
                Digital.cpu_df(1, 2, 0, 0); // reset DATA to run pattern
                Digital.cpu_df(1, 3, 0, 0); // reset VIO to run pattern
#endif
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnDebug_Click(object sender, RoutedEventArgs e)
        {
#if REALHW
#endif
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {

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
#endregion

        
    }
}
