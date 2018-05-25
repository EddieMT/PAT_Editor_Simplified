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
using System.Collections.ObjectModel;
using System.Globalization;

namespace PAT_Editor
{
    /// <summary>
    /// Interaction logic for PATConfiguration.xaml
    /// </summary>
    public partial class PATConfiguration : Window
    {
        public List<string> listPatItemName;
        public List<string> listRegItemName;

        private ObservableCollection<string> colPatItem = new ObservableCollection<string>();
        private ObservableCollection<string> colRegItem = new ObservableCollection<string>();

        private bool flag = true;

        public PATConfiguration(PAT pat)
        {
            InitializeComponent();
            
            foreach(var patItem in pat.PatItems)
            {
                colPatItem.Add(patItem.Key);

                if (flag)
                {
                    foreach (var regItem in patItem.Value.RegItems)
                    {
                        colRegItem.Add(regItem.Key);
                    }
                    flag = false;
                }
            }

            if (colRegItem.Count == 0)
            {
                colRegItem.Add("1C");
            }

            lstPatItem.ItemsSource = colPatItem;
            lstRegItem.ItemsSource = colRegItem;
        }

        #region PatItem
        private void btnPatItemAdd_Click(object sender, RoutedEventArgs e)
        {
            string s = txtPatItem.Text;

            if (string.IsNullOrEmpty(s))
            {
                MessageBox.Show("Could not be empty!");
                txtPatItem.Focus();
                return;
            }

            if (colPatItem.Contains(s))
            {
                MessageBox.Show("Duplicated!");
                txtPatItem.Focus();
                return;
            }

            colPatItem.Add(s);

            txtPatItem.Text = string.Empty;
            txtPatItem.Focus();
        }

        private void btnPatItemDel_Click(object sender, RoutedEventArgs e)
        {
            string item = (string)lstPatItem.SelectedItem;
            if (item != null)
            {
                colPatItem.Remove(item);
            }
        }

        private void btnPatItemUp_Click(object sender, RoutedEventArgs e)
        {
            string item = (string)lstPatItem.SelectedItem;
            if (item != null)
            {
                int index = colPatItem.IndexOf(item);
                if (index == 0)
                    return;
                colPatItem.RemoveAt(index);
                colPatItem.Insert(index - 1, item);
            }
        }

        private void btnPatItemDown_Click(object sender, RoutedEventArgs e)
        {
            string item = (string)lstPatItem.SelectedItem;
            if (item != null)
            {
                int index = colPatItem.IndexOf(item);
                if (index == colPatItem.Count - 1)
                    return;
                colPatItem.RemoveAt(index);
                colPatItem.Insert(index + 1, item);
            }
        }
        #endregion

        #region RegItem
        private void btnRegItemAdd_Click(object sender, RoutedEventArgs e)
        {
            string s = txtRegItem.Text.ToUpper().PadLeft(2, '0');

            if (string.IsNullOrEmpty(s))
            {
                MessageBox.Show("Could not be empty!");
                txtRegItem.Focus();
                return;
            }

            if (colRegItem.Contains(s))
            {
                MessageBox.Show("Duplicated!");
                txtRegItem.Focus();
                return;
            }

            uint value = 0;
            if (!uint.TryParse(s, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out value))
            {
                MessageBox.Show("Unsigned integer!");
                txtRegItem.Focus();
                return;
            }

            if (value > 0x1F)
            {
                MessageBox.Show("Range 0 ~ 1F!");
                txtRegItem.Focus();
                return;
            }

            colRegItem.Add(s);

            txtRegItem.Text = string.Empty;
            txtRegItem.Focus();
        }

        private void btnRegItemDel_Click(object sender, RoutedEventArgs e)
        {
            string item = (string)lstRegItem.SelectedItem;
            if (item != null)
            {
                if (item == "1C")
                {
                    MessageBox.Show("Cannot delete 1C!");
                    return;
                }
                colRegItem.Remove(item);
            }
        }

        private void btnRegItemUp_Click(object sender, RoutedEventArgs e)
        {
            string item = (string)lstRegItem.SelectedItem;
            if (item != null)
            {
                int index = colRegItem.IndexOf(item);
                if (index == 0 || index == 1)
                    return;
                colRegItem.RemoveAt(index);
                colRegItem.Insert(index - 1, item);
            }
        }

        private void btnRegItemDown_Click(object sender, RoutedEventArgs e)
        {
            string item = (string)lstRegItem.SelectedItem;
            if (item != null)
            {
                int index = colRegItem.IndexOf(item);
                if (index == colRegItem.Count - 1 || index == 0)
                    return;
                colRegItem.RemoveAt(index);
                colRegItem.Insert(index + 1, item);
            }
        }
        #endregion

        private void btnOK_Click(object sender, RoutedEventArgs e)
        {
            listPatItemName = colPatItem.ToList();
            listRegItemName = colRegItem.ToList();

            this.Close();
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
