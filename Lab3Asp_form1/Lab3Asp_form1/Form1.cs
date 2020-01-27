using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Text;
using System.Net;
using System.IO;

namespace Lab3Asp_form1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            {

                string data = String.Format("ParmA={0}&ParmB={1}", parmA.Text, parmB.Text);
                byte[] databyte = Encoding.UTF8.GetBytes(data);
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create($"http://localhost:86/postsum.ssl");
                request.ContentType = "application/x-www-form-urlencoded";
                request.ContentLength = databyte.Length;
                request.Method = "POST";
                request.GetRequestStream().Write(databyte, 0, databyte.Length);
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());

                this.Result.Text = reader.ReadToEnd();

            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}