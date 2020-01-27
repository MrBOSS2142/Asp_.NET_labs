using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace Lab5_ASP
{
    public partial class _Default : Page
    {
        private HtmlTable table;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                HtmlTableRow row;
                HtmlTableCell cell;

                table = new HtmlTable();
                table.Border = 2;
                table.CellPadding = 2;

                row = new HtmlTableRow();
                cell = new HtmlTableCell(); cell.InnerText = "  Element  "; row.Cells.Add(cell);
                cell = new HtmlTableCell(); cell.InnerText = "  Onserverclick  "; row.Cells.Add(cell);
                cell = new HtmlTableCell(); cell.InnerText = "  Onserverchange  "; row.Cells.Add(cell);
                table.Rows.Add(row);

                Controls.Add(table);
            }
        }

        protected void OnClick(object sender, EventArgs e)
        {
            if (sender is Control control)
            {
                AddToTable(control.ID, "Yes)", "No(");
            }
        }

        protected void OnChange(object sender, EventArgs e)
        {
            if (sender is Control control)
            {
                AddToTable(control.ID, "No(", "Yes)");
            }
        }

        private void AddToTable(string controlName, string onClick, string onChange)
        {
            this.table.Rows.Add(new HtmlTableRow
            {
                Cells = {
                    new HtmlTableCell { InnerText = controlName },
                    new HtmlTableCell { InnerText = onClick },
                    new HtmlTableCell { InnerText = onChange }
                }
            });
        }
    }
}