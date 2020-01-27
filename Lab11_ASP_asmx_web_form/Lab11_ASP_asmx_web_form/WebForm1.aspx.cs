using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab11_ASP_asmx_web_form
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceReference1.SSLServiceSoapClient client = new ServiceReference1.SSLServiceSoapClient();
            lastsum.Text = client.GetLastSum().ToString();
            lastsub.Text = client.GetLastSub().ToString();
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            ServiceReference1.SSLServiceSoapClient client =
            new ServiceReference1.SSLServiceSoapClient();

            int result = client.Add(Int32.Parse(TxbX.Text), Int32.Parse(TxbY.Text));

            lastsum.Text = client.GetLastSum().ToString();

            LabelResult.Text = result.ToString();

            GVCalculations.DataSource = client.GetCalculations();
            GVCalculations.DataBind();
        }

        protected void BtnSub_Click(object sender, EventArgs e)
        {
            ServiceReference1.SSLServiceSoapClient client =
            new ServiceReference1.SSLServiceSoapClient();

            int result = client.Sub(Int32.Parse(TxbX.Text), Int32.Parse(TxbY.Text));

            lastsub.Text = client.GetLastSub().ToString();

            LabelResult.Text = result.ToString();

            GVCalculationsSub.DataSource = client.GetCalculationsApll();
            GVCalculationsSub.DataBind();
        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            ServiceReference1.SSLServiceSoapClient client = new ServiceReference1.SSLServiceSoapClient();
            client.DropApp();
            lastsub.Text = "";
            GVCalculationsSub.DataSource = client.GetCalculationsApll();
            GVCalculationsSub.DataBind();
        }

        protected void BtnMul_Click(object sender, EventArgs e)
        {
            ServiceReference1.SSLServiceSoapClient client =
            new ServiceReference1.SSLServiceSoapClient();

            int result = client.Mul(Int32.Parse(TxbX.Text), Int32.Parse(TxbY.Text));

            LabelResult.Text = result.ToString();
        }
    }
}