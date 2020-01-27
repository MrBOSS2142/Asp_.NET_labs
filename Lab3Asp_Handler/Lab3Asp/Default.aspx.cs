using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Text;
using System.Net;
using System.IO;

namespace Lab3Asp
{
    public partial class _Default : Page
    {
        private object aaa;
        private object bbb;
        protected void Page_Load(object sender, EventArgs e)
        {
            aaa = this.parmA.Text;
            bbb = this.parmB.Text;
        }

        protected void buttonGet_Click(object sender, EventArgs e)
        {
            try
            {
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create($"http://localhost:86/get.ssl?parma={aaa}&parmb={bbb}");
                request.Method = "GET";
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());

                this.Result.Text = reader.ReadToEnd();
            }
            catch (WebException ex)
            {
                Response.Write(ex.Status);
                Response.Write("<br/>" + ex.Message);
            }
        }

        protected void buttonPost_Click(object sender, EventArgs e)
        {
            try
            {
                string data = String.Format("ParmA={0}&ParmB={1}", parmA.Text, parmB.Text);
                byte[] databyte = Encoding.UTF8.GetBytes(data);
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create($"http://localhost:86/post.ssl");
                request.ContentType = "application/x-www-form-urlencoded";
                request.ContentLength = databyte.Length;
                request.Method = "POST";
                request.GetRequestStream().Write(databyte, 0, databyte.Length);
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());

                this.Result.Text = reader.ReadToEnd();
            }
            catch (WebException ex)
            {
                Response.Write(ex.Status);
                Response.Write("<br/>" + ex.Message);
            }
        }

        protected void buttonPut_Click(object sender, EventArgs e)
        {
            try
            {
                string data = String.Format("ParmA={0}&ParmB={1}", parmA.Text, parmB.Text);
                byte[] databyte = Encoding.UTF8.GetBytes(data);
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create($"http://localhost:86/put.ssl");
                request.ContentType = "application/x-www-form-urlencoded";
                request.ContentLength = databyte.Length;
                request.Method = "PUT";
                request.GetRequestStream().Write(databyte, 0, databyte.Length);
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());

                this.Result.Text = reader.ReadToEnd();
            }
            catch (WebException ex)
            {
                Response.Write(ex.Status);
                Response.Write("<br/>" + ex.Message);
            }
        }

        protected void ButtonForb_Click(object sender, EventArgs e)
        {
            try
            {
                HttpWebRequest rq = (HttpWebRequest)HttpWebRequest.Create("http://localhost:86/erget.ssl");
                rq.Method = "GET";
                HttpWebResponse rs = (HttpWebResponse)rq.GetResponse();
                StreamReader rdr = new StreamReader(rs.GetResponseStream());
                Response.Write(rdr.ReadToEnd());
            }
            catch (WebException ex)
            {
                Response.Write(ex.Status);
                Response.Write("<br/>" + ex.Message);
                Response.Write("<br/>" + ex.TargetSite);
                Response.Write("<br/>" + ex.Source);
            }
        }
    }
}