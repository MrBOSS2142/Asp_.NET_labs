using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6_ASP
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            this.TextBox1.Text = "Textbox1";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.TextBox2.Text = "Textbox2";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            this.TextBox3.Text = "Textbox3";
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex = (this.MultiView1.ActiveViewIndex + 1) % 3;
        }
        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }


        enum StepIndex { PERSDATA = 0, DATE = 1, MUSIC = 2, FILM = 3, COUNTRY = 4, CONFIRM = 5 };
        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {

            String buf = "";

            foreach (ListItem li in this.CheckBoxList1.Items)
            {
                if (li.Selected) buf += li.Value +  ", ";
            }

            if (Wizard1.ActiveStepIndex.Equals((int)StepIndex.CONFIRM))
            {
                this.Finish.Text = TextBox4.Text + " " + TextBox5.Text
                              + "<br>" + Calendar1.SelectedDate.ToLongDateString()
                              + "<br>" + RadioButtonList1.SelectedValue
                              + "<br>" + buf
                              + "<br>" + ListBox1.SelectedValue;

            }
        }
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (Calendar1.SelectionMode == CalendarSelectionMode.Day)
                Response.Write("<br/>" + Calendar1.SelectedDate.ToLongDateString());
            else if (Calendar1.SelectionMode == CalendarSelectionMode.DayWeek)
            {
                foreach (DateTime d in Calendar1.SelectedDates)
                {
                    Response.Write("<br/>" + d.ToLongDateString());
                }
            }
            else if (Calendar1.SelectionMode == CalendarSelectionMode.DayWeekMonth)
            {
                foreach (DateTime d in Calendar1.SelectedDates)
                {
                    Response.Write("<br/>" + d.ToLongDateString());
                }
            }

        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            TreeNode tn = this.TreeView1.SelectedNode;

            String txt = tn.Value;
            if (tn.ShowCheckBox != null && (bool)tn.ShowCheckBox) txt += (tn.Checked ? " установлен " : " сброшен ");
            this.Response.Write(txt);
            //Label6.Text = txt;
            bool? h;
        }

        protected void TreeView1_TreeNodeCheckChanged(object sender, TreeNodeEventArgs e)
        {
            TreeNode tn = this.TreeView1.SelectedNode;
            this.Response.Write(tn.Value + (tn.Checked ? " установлен " : " сброшен "));
            Label6.Text = tn.Value + (tn.Checked ? " установлен " : " сброшен ");
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            Menu mnu = (Menu)sender;
            Response.Write(mnu.SelectedItem.Text);
        }

        protected void Wizard1_CancelButtonClick(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44326/Default?reset", false);
        }
    }
}