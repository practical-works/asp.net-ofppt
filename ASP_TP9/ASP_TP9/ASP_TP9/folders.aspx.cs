using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP9
{
    public partial class folders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox_all_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox checkboxAll = (CheckBox)sender;
            // CheckBox checkboxAll = (GridView1.HeaderRow.FindControl("CheckBox1") as CheckBox);

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox rowCheckBox = (CheckBox)row.Cells[0].FindControl("CheckBox1");
                rowCheckBox.Checked = checkboxAll.Checked;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox checkboxAll = (CheckBox)GridView1.HeaderRow.FindControl("CheckBox_all");

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox rowCheckbox = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
                if (!rowCheckbox.Checked)
                {
                    checkboxAll.Checked = false;
                    break;
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox txt_dateDepot = (TextBox)GridView1.FooterRow.FindControl("TextBox_dateDepot");
            SqlDataSource1.InsertParameters["date_depot"].DefaultValue = txt_dateDepot.Text;
            SqlDataSource1.Insert();
        }
    }
}