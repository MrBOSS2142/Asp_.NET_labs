using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab8_ASP_Cache
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.MessageLabel.Text = DateTime.Now.ToString();
        }

        public static string GetDate(HttpContext context)
        {
            return DateTime.Now.ToString();
        }
    }
}