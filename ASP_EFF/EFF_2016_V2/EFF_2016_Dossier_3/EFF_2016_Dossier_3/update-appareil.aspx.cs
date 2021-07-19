using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF_2016_Dossier_3
{
    public partial class update_appareil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 if (Session["id"] == null)
                {
                    Response.Redirect("login.aspx?error=0");
                }
            }
        }

        protected void LinkButton_filter_Click(object sender, EventArgs e)
        {
            Panel panel = (Panel)GridView1.FooterRow.FindControl("Panel1");
            panel.Visible = !panel.Visible;
        }

        protected void Button_filter_Click(object sender, EventArgs e)
        {
            RadioButton rb_tous = (RadioButton)GridView1.FooterRow.FindControl("rb_tous");
            RadioButton rb_nom = (RadioButton)GridView1.FooterRow.FindControl("rb_nom");
            RadioButton rb_num = (RadioButton)GridView1.FooterRow.FindControl("rb_num");
            TextBox textBox = (TextBox)GridView1.FooterRow.FindControl("TextBox_filter");
            if (rb_nom.Checked)
            {
                SqlDataSource1.FilterExpression = "nom_appareil like '%" + textBox.Text + "%'";
            }
            else if (rb_num.Checked)
            {
                SqlDataSource1.FilterExpression = "num_appareil = " + textBox.Text;
            }
        }

        protected void rb_tous_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton rb_tous = (RadioButton)GridView1.FooterRow.FindControl("rb_tous");
            TextBox textBox = (TextBox)GridView1.FooterRow.FindControl("TextBox_filter");
            Button button = (Button)GridView1.FooterRow.FindControl("Button_filter");
            if (rb_tous.Checked)
            {
                textBox.Enabled = button.Enabled = false;
                SqlDataSource1.FilterExpression = null;
            }
            else
            {
                textBox.Enabled = button.Enabled = true;
            }
        }

        protected void rb_nom_CheckedChanged(object sender, EventArgs e)
        {
            rb_tous_CheckedChanged(sender, e);
        }

        protected void rb_num_CheckedChanged(object sender, EventArgs e)
        {
            rb_tous_CheckedChanged(sender, e);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Label_selected.Text = e.CommandArgument.ToString();
                GridView2.DataSource = ADO.GetTable("select * from contrat where num_appareil = " + e.CommandArgument);
                GridView2.DataBind();
            }
        }
    }
}