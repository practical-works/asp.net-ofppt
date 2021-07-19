using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_EFM_2015
{
    public partial class profs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AddLinks();
            }
        }

        protected void LinkButton_update_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }

        protected void LinkButton_delete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
        }

        protected void LinkButton_insert_Click(object sender, EventArgs e)
        {
            string nom = ((TextBox)GridView1.FooterRow.FindControl("TextBox_nom")).Text;
            string tel = ((TextBox)GridView1.FooterRow.FindControl("TextBox_telephone")).Text;
            if (nom == "" || tel == "")
	        {
                ((Label)GridView1.FooterRow.FindControl("Label_error")).Text = "Veuillez remplir les champs !";
	        } 
            else
	        {
                SqlDataSource1.InsertParameters["Nom"].DefaultValue = nom;
                SqlDataSource1.InsertParameters["Tel"].DefaultValue = tel;
                SqlDataSource1.Insert();
	        }
        }

        protected void LinkButton_reinitialiser_Click(object sender, EventArgs e)
        {
            //((TextBox)GridView1.FooterRow.FindControl("TextBox_nom")).Text = "";
            //((TextBox)GridView1.FooterRow.FindControl("TextBox_telephone")).Text = "";
        }

        protected void AddLinks()
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                string id = ((Label)row.Cells[1].FindControl("Label_id")).Text;
                ((HyperLink)row.Cells[4].FindControl("HyperLink_cours")).NavigateUrl = "~/cours-prof.aspx?prof=" + id;
            }
        }

        protected void Button_export_Click(object sender, EventArgs e)
        {
            DataTable professeurTable = ADO.GetTable("select * from Professeur");
            professeurTable.TableName = "Professeur";
            professeurTable.WriteXml(Server.MapPath("profs.xml"));
            Literal1.Text = @"Liste exportée avec succés 
                dans ce <a href='profs.xml' target='_blank'>fichier XML</a><br/>";
        }
    }
}