using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ASP_TP9
{
    public partial class dossiers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ajouter_Click(object sender, EventArgs e)
        {
            // @date_depot, @montant_remboursement, @date_traitement, 
            //@lien_malade, @matricule, @num_maladie, @total_dossier
            
            TextBox txt1 = (TextBox)GridView1.FooterRow.FindControl("TextBox8");
            SqlDataSource1.InsertParameters["date_depot"].DefaultValue = txt1.Text;

            SqlDataSource1.InsertParameters["montant_remboursement"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox9")).Text;
            SqlDataSource1.InsertParameters["date_traitement"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox10")).Text;
            SqlDataSource1.InsertParameters["lien_malade"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox11")).Text;
            SqlDataSource1.InsertParameters["matricule"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownList1")).SelectedValue;
            SqlDataSource1.InsertParameters["num_maladie"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownList2")).SelectedValue;
            SqlDataSource1.InsertParameters["total_dossier"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox12")).Text;

            SqlDataSource1.Insert();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = !Panel1.Visible;
        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            if (rb_all.Checked)
            {
                SqlDataSource1.FilterExpression = null;
            }
            else if (rb_folder.Checked)
            {
                SqlDataSource1.FilterExpression = "num_dossier = " + txt_filter.Text;
            }
            else if (rb_mat.Checked)
            {
                SqlDataSource1.FilterExpression = "matricule = '" + txt_filter.Text + "'";
            }
        }

        protected void rb_all_CheckedChanged(object sender, EventArgs e)
        {
            if (rb_all.Checked)
            {
                txt_filter.Text = "";
                txt_filter.Enabled = false;
                SqlDataSource1.FilterExpression = null;
            }
            else
            {
                txt_filter.Enabled = true;
            }
        }

        protected void rb_folder_CheckedChanged(object sender, EventArgs e)
        {
            if (rb_folder.Checked)
            {
                txt_filter.Enabled = true;
            }
        }

        protected void rb_mat_CheckedChanged(object sender, EventArgs e)
        {
            if (rb_mat.Checked)
            {
                txt_filter.Enabled = true;
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                string numDossier = e.CommandArgument.ToString();
//                ADO.GetTable(@"select * from Dossier 
//                    inner join Assuré inner 
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            StreamWriter sw = new StreamWriter(Server.MapPath("dossiers.txt"));
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox rowCheckBox = (CheckBox)row.FindControl("CheckBox1");
                if (rowCheckBox.Checked)
                {
                    string numdossier = ((Label)row.FindControl("Label1")).Text + " ";
                    string datedepot = ((Label)row.FindControl("Label2")).Text + " ";
                    string montant_remboursement = ((Label)row.FindControl("Label3")).Text + " ";
                    string date_traitement = ((Label)row.FindControl("Label4")).Text + " ";
                    string lien_malade = ((Label)row.FindControl("Label5")).Text + " ";
                    string matricule = ((Label)row.FindControl("Label6")).Text + " ";
                    string num_maladie = ((Label)row.FindControl("Label7")).Text + " ";
                    string total_dossier = ((Label)row.FindControl("Label8")).Text;

                    sw.WriteLine(numdossier + datedepot + montant_remboursement + date_traitement + lien_malade
                        + matricule + num_maladie + total_dossier);
                }
            }
            sw.Close();
        }
    }
}