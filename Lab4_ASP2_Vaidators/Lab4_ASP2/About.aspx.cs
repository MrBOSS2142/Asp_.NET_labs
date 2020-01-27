using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4_ASP2
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RangeValidator2.MaximumValue = DateTime.Now.ToShortDateString();
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs str)
        {
            int s = 0;
            for (int i = 0; i < str.Value.Length; i++)
            {
                for (int j = 0; j < str.Value.Length; j++)
                {
                    if (str.Value[i] == str.Value[j])
                    {
                        s++;
                    }
                    if (s == 2)
                    {
                        str.IsValid = false;
                        return;
                    }
                    
                }
                s = 0;
            }
        }
    }
}