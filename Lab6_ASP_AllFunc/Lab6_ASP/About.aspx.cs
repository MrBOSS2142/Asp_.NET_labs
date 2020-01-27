using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6_ASP
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex = (this.MultiView1.ActiveViewIndex + 1) % 3;
        }
        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }
    }
}