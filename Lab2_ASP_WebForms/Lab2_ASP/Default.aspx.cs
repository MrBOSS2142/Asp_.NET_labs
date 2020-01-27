using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2_ASP
{
    public partial class _Default : Page
    {
        private int num = 0;

        protected void Page_Init(object sender, EventArgs e)
        {
            this.Label1.Text += "init-";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.num++;
            if (Page.IsPostBack)
            {
                this.Label1.Text += $"loadA-{num}-";
            }
            else
            {
                this.Label1.Text += $"loadB-{num}-";
            }
        }

        protected void Page_Prerender(object sender, EventArgs e)
        {
            this.Label1.Text += "prerender-";
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            this.Label1.Text += "unload-";
        }

        protected void Page_Disposed(object sender, EventArgs e)
        {
            this.Label1.Text += "dispose";
        }



        protected void checkBoxAuto_CheckedChanged(object sender, EventArgs e)
        {
            this.Label1.Text += "checkBox_Auto-";
        }

        protected void checkBoxNotAuto_CheckedChanged(object sender, EventArgs e)
        {
            this.Label1.Text += "checkBox_NotAuto-";
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            this.textbox.Text = "*&" + this.textbox.Text + "&*";
            String str = Request["__VIEWSTATE"];
            this.label.Text = "[" + str.Length + "]" + "[" + this.textbox.Text.Length + "]";
            this.Label1.Text += "Click-";
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            this.Response.Write("<br> Символические имя машины:" + Environment.MachineName);
            this.Response.Write("<br> Версия ОС:" + Environment.OSVersion);
            this.Response.Write("<br> Объем памяти:" + Environment.WorkingSet);
            this.Response.Write("<br> Версия ASP.NET:" + Environment.Version.ToString());
            this.Response.Write("<br> IP-адресс:" + HttpContext.Current.Request.ServerVariables["LOCAL_ADDR"]);
            this.Response.Write("<br> Временный каталог:" + Environment.GetEnvironmentVariable("TEMP"));
            this.Response.Write("<br> Запрос:" + (Request.IsLocal? "Локальный" : "Не локальный"));
            this.Response.Write("<br> Запрос:" + (Request.IsSecureConnection? "Защищенный" : "Не защищенный"));
            this.Response.Write("<br> Браузер:" + Request.Browser.Version);
            this.Response.Write("<br> Браузер:" + Request.Browser.MinorVersion);
            this.Response.Write("<br> Браузер:" + Request.Browser.MajorVersion);
        }
    }
}