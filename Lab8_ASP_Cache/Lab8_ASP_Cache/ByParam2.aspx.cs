using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab8_ASP_Cache
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["Name"];
            string age = Request.QueryString["Age"];


            string result = String.Format("Значение параметра name = {0}, значение параметра age = {1}", name, age);
            this.Label1.Text = DateTime.Now.ToString();
            this.MessageLabel.Text = result;
        }
    }
}