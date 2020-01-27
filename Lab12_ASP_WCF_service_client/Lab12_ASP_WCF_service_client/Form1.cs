using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab12_ASP_WCF_service_client
{
    public partial class Form1 : Form
    {
        private ServiceReference1.Service1Client client;

        public Form1()
        {
            InitializeComponent();

            client = new Lab12_ASP_WCF_service_client.ServiceReference1.Service1Client("BasicHttpBinding_IService1");

            this.client.Open();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void Button1_Click(object sender, EventArgs e)
        {
            int result = this.client.Sum(Int32.Parse(textBox1.Text), Int32.Parse(textBox2.Text));

            label4.Text = result.ToString();
        }

        private void Button2_Click(object sender, EventArgs e)
        {
            int result = this.client.Sub(Int32.Parse(textBox1.Text), Int32.Parse(textBox2.Text));

            label4.Text = result.ToString();
        }

        private void Button3_Click(object sender, EventArgs e)
        {
            string result = this.client.Concatanation(textBox1.Text, textBox2.Text);

            label4.Text = result;
        }
    }
}
