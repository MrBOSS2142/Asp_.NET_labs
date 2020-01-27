using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4_ASP2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs num)
        {
            for (int i = 2; i < int.Parse(num.Value); i++)
                if (int.Parse(num.Value) % i == 0)
                {
                    num.IsValid = false;
                    return;
                }
                else
                {
                    num.IsValid = true;
                }
        }

    }
}