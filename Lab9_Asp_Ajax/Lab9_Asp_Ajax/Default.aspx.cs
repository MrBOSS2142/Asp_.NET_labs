using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab9_Asp_Ajax
{
    public partial class _Default : Page
    {
        float x, y, z, c, b;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox4.Text = "123";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Single.TryParse(this.TextBox1.Text, out x) && Single.TryParse(this.TextBox2.Text, out y))
                {
                    z = x * y;
                    this.TextBox3.Text = z.ToString();
                }
                else throw new ApplicationException("MyError");
                this.TextBox4.Text = "Sergo";
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if(CheckBox1.Checked)
                { 
                    this.TextBox6.Text = "Checked";
                }
                else
                {
                    this.TextBox6.Text = "Unchecked";
                }
            }
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (RadioButton1.Checked)
                {
                    this.TextBox5.Text = "RadioButton1";
                }

                if(RadioButton2.Checked)
                {
                    this.TextBox5.Text = "RadioButton2";
                }
            }
        }


        protected void Button6_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Thread.Sleep(5000);
                Label9.Text = TextBox8.Text;
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (TextBox7.Text == "")
                {
                    TextBox7.Text = "0";
                }
                c = float.Parse(TextBox7.Text) + 1;
                TextBox7.Text = c.ToString();
            }
        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (TextBox9.Text == "")
                {
                    TextBox9.Text = "0";
                }
                b = float.Parse(TextBox9.Text) + 2;
                TextBox9.Text = b.ToString();
            }
        }



        protected void ScriptManager_OnAsyncPostBackError1(object sender, AsyncPostBackErrorEventArgs e)
        {
            this.ScriptManager1.AsyncPostBackErrorMessage = "Warning!!! Error!!! What are you doing?  LOL!";
        }
    }
}