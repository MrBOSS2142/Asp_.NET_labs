using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab8_ASP_Cache
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string result = String.Format();
            this.Label1.Text = DateTime.Now.ToString();
            this.MessageLabel.Text = Request.QueryString["id"];
        }
    }
}