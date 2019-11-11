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
    /// Interaction logic for ucTS.xaml
    /// </summary>
    public partial class ucTS : UserControl
    {
        public ucTS()
        {
            InitializeComponent();
        }

        public void SetLabel(int num)
        {
            lblTS.Text += num.ToString();
        }

        public string GetSetting()
        {
            return txtTS.Text.Trim();
        }
    }
}
