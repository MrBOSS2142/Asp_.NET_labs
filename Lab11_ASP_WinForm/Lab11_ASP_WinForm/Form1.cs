using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab11_ASP_WinForm
{
    public partial class Form1 : Form
    {
        private ServiceReference1.SSLServiceSoapClient client;

        public Form1()
        {
            this.client = new ServiceReference1.SSLServiceSoapClient();

            InitializeComponent();
        }

        private void BtnAdd_Click(object sender, EventArgs e)
        {
            int result = client.Add(Int32.Parse(TxbX.Text), Int32.Parse(TxbY.Text));

            LabelResult.Text = result.ToString();

            lastsum.Text = client.GetLastSum().ToString();
        }

        private void BtnSub_Click(object sender, EventArgs e)
        {
            int result = client.Sub(Int32.Parse(TxbX.Text), Int32.Parse(TxbY.Text));

            LabelResult.Text = result.ToString();

            lastsub.Text = client.GetLastSub().ToString();
        }

        private void BtnMul_Click(object sender, EventArgs e)
        {
            int result = client.Mul(Int32.Parse(TxbX.Text), Int32.Parse(TxbY.Text));

            LabelResult.Text = result.ToString();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void Form1_Load_1(object sender, EventArgs e)
        {
            lastsum.Text = client.GetLastSum().ToString();
            lastsub.Text = client.GetLastSub().ToString();
        }

    }
}
