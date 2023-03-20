using Microsoft.Win32;
using Q1.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.Json;
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
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace Q1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private GuitarShopDBContext db = new GuitarShopDBContext();
        private string filePath;
        List<Customer> customers = new List<Customer>();
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            Load();
        }

        private void Load()
        {
            using(var db = new GuitarShopDBContext())
            {
                var customer = db.Customers.Select(e => new
                {
                    
                    email = e.Email,
                    password = e.Password,
                    firstname = e.FirstName,
                    lastname = e.LastName,
                    Address = e.Address,
                    male = e.IsPasswordChanged,
                    isFemale = !e.IsPasswordChanged
                }).ToList();
                lvEmployee.ItemsSource = customer;
            }
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            Customer customer = new Customer();
            customer.Email = txtEmail.Text;
            customer.Password = txtPassword.Text;
            customer.FirstName = txtFirstName.Text;
            customer.LastName = txtLastName.Text;
            customer.Address = txtcb.Text;
            bool ismale = true;
            if (male.IsChecked == true)
            {
                ismale = true;
            }
            db.Customers.Add(customer);
            db.SaveChanges();
            Load();
        }

        private void btnImport_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == true)
            {
                string json = File.ReadAllText(openFileDialog.FileName);
                customers = JsonSerializer.Deserialize<List<Customer>>(json);
            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            foreach (var custome in customers)
            {
                var old = db.Customers.SingleOrDefault(s => s.CustomerId == custome.CustomerId);
                if (old != null)
                {
                    old.Email = custome.Email;
                    old.Password = custome.Password;
                    old.FirstName = custome.FirstName;
                    old.LastName = custome.LastName;
                    old.Address = custome.Address;
                    old.IsPasswordChanged= custome.IsPasswordChanged;
                }
                else
                {
                    var newcustome = new Customer();
                    newcustome.Email= custome.Email;
                    newcustome.Password= custome.Password;
                    newcustome.FirstName= custome.FirstName;
                    newcustome.LastName= custome.LastName;
                    newcustome.Address= custome.Address;
                    newcustome.IsPasswordChanged= custome.IsPasswordChanged;
                    db.Add(custome);                   
                }
            }
            MessageBox.Show("Saved");
            db.SaveChanges();
            customers.Clear();
            Load();
        }
    }
}
