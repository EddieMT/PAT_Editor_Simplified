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
using System.Windows.Shapes;

namespace PAT_Editor
{
    /// <summary>
    /// Interaction logic for DebugMipi.xaml
    /// </summary>
    public partial class DebugMipi : Window
    {
        string filePEZ;
        List<Mode> modes;

        public DebugMipi(string filePEZ, List<Mode> modes)
        {
            InitializeComponent();

            this.filePEZ = filePEZ;
            this.modes = modes;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {

        }
    }
}
