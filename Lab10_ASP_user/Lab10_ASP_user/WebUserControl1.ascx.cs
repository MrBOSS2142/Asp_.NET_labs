using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab10_ASP_user
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        public String Surname
        {
            get { return this.TextBox1.Text; }
            set { this.TextBox1.Text = value; }
        }
        public String Name
        {
            get { return this.TextBox2.Text; }
            set { this.TextBox2.Text = value; }
        }
        public String LastName
        {
            get { return this.TextBox3.Text; }
            set { this.TextBox3.Text = value; }
        }

        public String Group
        {
            get { return this.TextBox5.Text; }
            set { this.TextBox5.Text = value; }
        }

        public String Date
        {
            get { return this.TextBox4.Text; }
            set { this.TextBox4.Text = value; }
        }

        public String MinValue
        {
            get { return this.RangeValidator1.MinimumValue; }
            set { this.RangeValidator1.MinimumValue = value; }
        }
        public String MaxValue
        {
            get { return this.RangeValidator1.MaximumValue; }
            set { this.RangeValidator1.MaximumValue = value; }
        }
        public String Apply
        {
            get { return this.Button1.Text; }
            set { this.Button1.Text = value; }
        }
        public String Deny
        {
            get { return this.Button2.Text; }
            set { this.Button2.Text = value; }
        }

        public String Date1
        {
            get { return this.TextBox6.Text; }
            set { this.TextBox6.Text = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Name = "";
            LastName = "";
            Surname = "";
            Group = "";
            Date = "";
            Date1 = "";
            this.DropDownList1.SelectedValue = "Фит";
            this.RadioButtonList1.SelectedValue = "М";
            Apply = "Ввод";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Apply = "Все ОКИ!!!";
        }
    }
}