using MT.TesterDriver;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Media;

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
        private int pezMAX;
        private uint loopCount;
        private uint passCount;
        private uint failCount;
        private Mode selectedMode;
        private SolidColorBrush colorPass = Brushes.LawnGreen;
        private SolidColorBrush colorFail = Brushes.Red;
        private SolidColorBrush colorIgnore = Brushes.LightGray;
        private BackgroundWorker backgroundWorker;

        public DebugMipi(string filePEZ, List<Mode> modes, List<ChannelGroup> channelGroups, List<TimingSet> timingSets)
        {
            InitializeComponent();

            this.filePEZ = filePEZ;
            this.modes = modes;
            this.channelGroups = channelGroups;
            this.timingSets = timingSets;
            lvMode.ItemsSource = this.modes;

            backgroundWorker = new BackgroundWorker();
            backgroundWorker.WorkerReportsProgress = true;
            backgroundWorker.WorkerSupportsCancellation = true;
            backgroundWorker.DoWork += new DoWorkEventHandler(backgroundWorker_DoWork);
            backgroundWorker.ProgressChanged += new ProgressChangedEventHandler(backgroundWorker_ProgressChanged);
            backgroundWorker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(backgroundWorker_RunWorkerCompleted);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                foreach (var timingset in timingSets)
                {
                    ucTS uc = new ucTS();
                    uc.Set(timingset.ID);
                    stpTS.Children.Add(uc);
                }

                for (int i = 0; i < channelGroups.Count; i++)
                {
                    TabItem tabItem = new TabItem();
                    tabItem.Header = "Group" + (i + 1);
                    ucChannel uc = new ucChannel();
                    uc.Set(channelGroups[i]);
                    tabItem.Content = uc;
                    tabChannel.Items.Add(tabItem);
                }

#if REALHW
                Digital = new pe32h(true);
                LogMessage("Create pe32h instance successfully!");
                if (Digital.Initialize() != 0)
                {
                    LogMessage("Initialize pe32h failed!");
                }
                LogMessage("Initialize pe32h successfully!");
                pezMAX = Digital.lmload(1, 1, 0, filePEZ);
                if (pezMAX < 0)
                {
                    LogMessage("lmload failed!");
                }
                LogMessage("lmload successfully returns " + pezMAX + "!");
                Digital.rd_pesno(1);
                int data = 0;
                foreach (var channelgroup in channelGroups)
                {
                    int offset = channelgroup.Clock.ID - 1;
                    data = (data | (1 << offset));
                }
                Digital.set_rz(1, 1, data);
                LogMessage(string.Format("Digital.set_rz(1, 1, {0});", Convert.ToString(data, 2).PadLeft(32, '0')));
                Digital.set_ro(1, 1, 0);
                LogMessage(string.Format("Digital.set_ro(1, 1, {0});", Convert.ToString(0, 2).PadLeft(32, '0')));
#endif

                btnSet.IsEnabled = true;
                btnDebug.IsEnabled = false;
            }
            catch (Exception ex)
            {
                btnSet.IsEnabled = false;
                btnDebug.IsEnabled = false;
                MessageBox.Show(ex.Message);
                LogMessage(ex.Message);
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            try
            {
#if REALHW
                Digital.init();
                LogMessage("Init & exit pe32h successfully!");
#endif
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                LogMessage(ex.Message);
            }
        }

        private void btnSet_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                GetTimingSets();
                GetChannelGroups();
#if REALHW
                if (tgbIgnoreError.IsChecked == true)
                {
                    Digital.set_addif(1, pezMAX);
                    LogMessage(string.Format("Digital.set_addif(1, {0});", pezMAX));
                }
                else
                {
                    Digital.set_addif(1, 0);
                    LogMessage(string.Format("Digital.set_addif(1, {0});", 0));
                }

                foreach (var ts in timingSets)
                {
                    Digital.set_tp(1, ts.ID, ts.data);
                    LogMessage(string.Format("Digital.set_tp(1, {0}, {1});", ts.ID, ts.data));
                }
                
                foreach(var cg in channelGroups)
                {
                    foreach (var ts in timingSets)
                    {
                        int start = (ts.data * cg.Clock.Start) / 100;
                        int stop = (ts.data * cg.Clock.Stop) / 100;
                        Digital.set_tstart(1, cg.Clock.ID, ts.ID, start);
                        LogMessage(string.Format("Digital.set_tstart(1, {0}, {1}, {2});", cg.Clock.ID, ts.ID, start));
                        Digital.set_tstop(1, cg.Clock.ID, ts.ID, stop);
                        LogMessage(string.Format("Digital.set_tstop(1, {0}, {1}, {2});", cg.Clock.ID, ts.ID, stop));

                        start = (ts.data * cg.Data.Start) / 100;
                        stop = (ts.data * cg.Data.Stop) / 100;
                        int strob = (ts.data * cg.Data.Strob) / 100;
                        Digital.set_tstart(1, cg.Data.ID, ts.ID, start);
                        LogMessage(string.Format("Digital.set_tstart(1, {0}, {1}, {2});", cg.Data.ID, ts.ID, start));
                        Digital.set_tstop(1, cg.Data.ID, ts.ID, stop);
                        LogMessage(string.Format("Digital.set_tstop(1, {0}, {1}, {2});", cg.Data.ID, ts.ID, stop));
                        Digital.set_tstrob(1, cg.Data.ID, ts.ID, strob);
                        LogMessage(string.Format("Digital.set_tstrob(1, {0}, {1}, {2});", cg.Data.ID, ts.ID, strob));

                        start = (ts.data * cg.VIO.Start) / 100;
                        stop = (ts.data * cg.VIO.Stop) / 100;
                        Digital.set_tstart(1, cg.VIO.ID, ts.ID, start);
                        LogMessage(string.Format("Digital.set_tstart(1, {0}, {1}, {2});", cg.VIO.ID, ts.ID, start));
                        Digital.set_tstop(1, cg.VIO.ID, ts.ID, stop);
                        LogMessage(string.Format("Digital.set_tstop(1, {0}, {1}, {2});", cg.VIO.ID, ts.ID, stop));
                    }

                    Digital.set_vil(1, cg.Clock.ID, cg.Clock.Vil);
                    LogMessage(string.Format("Digital.set_vil(1, {0}, {1});", cg.Clock.ID, cg.Clock.Vil));
                    Digital.set_vih(1, cg.Clock.ID, cg.Clock.Vih);
                    LogMessage(string.Format("Digital.set_vih(1, {0}, {1});", cg.Clock.ID, cg.Clock.Vih));
                    Digital.set_vol(1, cg.Clock.ID, cg.Clock.Vol);
                    LogMessage(string.Format("Digital.set_vol(1, {0}, {1});", cg.Clock.ID, cg.Clock.Vol));
                    Digital.set_voh(1, cg.Clock.ID, cg.Clock.Voh);
                    LogMessage(string.Format("Digital.set_voh(1, {0}, {1});", cg.Clock.ID, cg.Clock.Voh));
                    Digital.set_vil(1, cg.Data.ID, cg.Data.Vil);
                    LogMessage(string.Format("Digital.set_vil(1, {0}, {1});", cg.Data.ID, cg.Data.Vil));
                    Digital.set_vih(1, cg.Data.ID, cg.Data.Vih);
                    LogMessage(string.Format("Digital.set_vih(1, {0}, {1});", cg.Data.ID, cg.Data.Vih));
                    Digital.set_vol(1, cg.Data.ID, cg.Data.Vol);
                    LogMessage(string.Format("Digital.set_vol(1, {0}, {1});", cg.Data.ID, cg.Data.Vol));
                    Digital.set_voh(1, cg.Data.ID, cg.Data.Voh);
                    LogMessage(string.Format("Digital.set_voh(1, {0}, {1});", cg.Data.ID, cg.Data.Voh));
                    Digital.set_vil(1, cg.VIO.ID, cg.VIO.Vil);
                    LogMessage(string.Format("Digital.set_vil(1, {0}, {1});", cg.VIO.ID, cg.VIO.Vil));
                    Digital.set_vih(1, cg.VIO.ID, cg.VIO.Vih);
                    LogMessage(string.Format("Digital.set_vih(1, {0}, {1});", cg.VIO.ID, cg.VIO.Vih));

                    Digital.cpu_df(1, cg.Clock.ID, 0, 0);
                    LogMessage(string.Format("Digital.cpu_df(1, {0}, {1}, {2});", cg.Clock.ID, 0, 0));
                    Digital.cpu_df(1, cg.Data.ID, 0, 0);
                    LogMessage(string.Format("Digital.cpu_df(1, {0}, {1}, {2});", cg.Data.ID, 0, 0));
                    Digital.cpu_df(1, cg.VIO.ID, (cg.VIO.DrivePattern == DrivePattern.Pattern ? 0 : 1), (cg.VIO.DrivePattern == DrivePattern.Pattern ? 0 : cg.VIO.VIO_HL));
                    LogMessage(string.Format("Digital.cpu_df(1, {0}, {1}, {2});", cg.VIO.ID, (cg.VIO.DrivePattern == DrivePattern.Pattern ? 0 : 1), (cg.VIO.DrivePattern == DrivePattern.Pattern ? 0 : cg.VIO.VIO_HL)));
                }
#endif

                btnDebug.IsEnabled = true;
            }
            catch (Exception ex)
            {
                btnDebug.IsEnabled = false;
                MessageBox.Show(ex.Message);
                LogMessage(ex.Message);
            }
        }

        private void btnDebug_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (btnDebug.Content.ToString() == "Debug")
                {
                    if (!uint.TryParse(txtLoopCount.Text.Trim(), out loopCount))
                    {
                        MessageBox.Show("Loop count should be integer!");
                        return;
                    }

                    if (lvMode.SelectedItems.Count > 1)
                    {
                        MessageBox.Show("Multi-select is not supportted!");
                        return;
                    }
                    else if (lvMode.SelectedItems.Count == 0)
                    {
                        MessageBox.Show("Please select one to debug!");
                        return;
                    }
                    else
                    {
                        selectedMode = (Mode)lvMode.SelectedValue;
                        LogMessage(string.Format("Debug {2} : RunDigitalPattern(1, {0}, {1});", selectedMode.LineStart, selectedMode.LineEnd, selectedMode.Name));
                        passCount = 0;
                        failCount = 0;
                        btnDebug.Content = "Stop";
                        btnSet.IsEnabled = false;
                        tgbIgnoreError.IsEnabled = false;
                        backgroundWorker.RunWorkerAsync();
                    }
                }
                else
                {
                    backgroundWorker.CancelAsync();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                LogMessage(ex.Message);
            }
        }

        private void backgroundWorker_DoWork(object sender, DoWorkEventArgs e)
        {
            for (int i = 0; i < loopCount; i++)
            {
                if (!backgroundWorker.CancellationPending)
                {
                    int status = 0;
#if REALHW
                    status = RunDigitalPattern(1, selectedMode.LineStart, selectedMode.LineEnd);
#endif
                    backgroundWorker.ReportProgress(status);
                }
                else
                {
                    break;
                }
            }
        }

        private void backgroundWorker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            if (tgbIgnoreError.IsChecked == false)
            {
                if (e.ProgressPercentage == 1)
                {
                    btnStatus.Background = colorPass;
                    passCount++;
                    lblPass.Text = passCount.ToString();
                    LogMessage("Count : " + (passCount + failCount) + "     Pass");
                }
                else
                {
                    btnStatus.Background = colorFail;
                    failCount++;
                    lblFail.Text = failCount.ToString();
                    LogMessage("Count : " + (passCount + failCount) + "     Fail");
                }
            }
            else
            {
                passCount++;
                LogMessage("Count : " + (passCount + failCount));
            }
        }

        private void backgroundWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            if (e.Error != null)
            {
                string errMsg = (e.Error.InnerException != null) ? e.Error.InnerException.Message : e.Error.Message;
                MessageBox.Show(errMsg);
            }
            else
            {
                LogMessage("Debug is completed!");
                btnDebug.Content = "Debug";
                btnSet.IsEnabled = true;
                tgbIgnoreError.IsEnabled = true;
            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {

        }

        private void tgbIgnoreError_Checked(object sender, RoutedEventArgs e)
        {
            if (btnStatus != null)
            {
                btnStatus.Background = colorIgnore;
                lblPass.Text = "N/A";
                lblFail.Text = "N/A";
            }
        }

        private void tgbIgnoreError_Unchecked(object sender, RoutedEventArgs e)
        {
            lblPass.Text = "0";
            lblFail.Text = "0";
        }

#region private methods
        private void LogMessage(string msg)
        {
            if (txtMessage != null)
            {
                txtMessage.Inlines.Add(new Run("===> " + DateTime.Now.ToString() + ": " + msg));
                txtMessage.Inlines.Add(new LineBreak());
                scvMessage.ScrollToEnd();
            }
        }

        private void GetTimingSets()
        {
            foreach(var child in stpTS.Children)
            {
                if (child is ucTS)
                {
                    ucTS uc = child as ucTS;
                    TimingSet ts = timingSets.First(x => x.ID == uc.ID);
                    uc.SetObj(ts);
                }
            }
        }

        private void GetChannelGroups()
        {
            foreach (var item in tabChannel.Items)
            {
                if (item is TabItem)
                {
                    TabItem ti = item as TabItem;
                    if (ti.Content is ucChannel)
                    {
                        ucChannel uc = ti.Content as ucChannel;
                        ChannelGroup cg = channelGroups.First(x => x.Clock.ID == uc.ID);
                        uc.SetObj(cg);
                    }
                }
            }

            for (int i = 0; i< channelGroups.Count; i++)
            {
                for (int j = i + 1; j < channelGroups.Count; j++)
                {
                    var cgi = channelGroups[i];
                    var cgj = channelGroups[j];
                    if (cgi.VIO.ID == cgj.Clock.ID || cgi.VIO.ID == cgj.Data.ID || cgi.VIO.ID == cgj.VIO.ID)
                    {
                        throw new Exception("VIO has duplicated channel no. - " + cgi.VIO.ID + "!");
                    }
                }
            }
        }

        private int RunDigitalPattern(int bdn, int lbeg, int lend)
        {
            int rst = 0;

            Digital.set_checkmode(bdn, 0);
            Digital.set_addbeg(bdn, lbeg);
            Digital.set_addend(bdn, lend);
            Digital.cycle(bdn, 0);
            Digital.fstart(bdn, 1);

            // Wait for sequencer to stop
            while (Digital.check_tprun(bdn) != 0) Util.WaitTime(1e-6);

            rst = Digital.check_tpass(bdn); // Return 1 is pass, else fail
            Digital.fstart(bdn, 0);

            //mts3_msg("FCCNT = %d", pe32_rd_fccnt(1));

            return rst;
        }
#endregion
    }
}
