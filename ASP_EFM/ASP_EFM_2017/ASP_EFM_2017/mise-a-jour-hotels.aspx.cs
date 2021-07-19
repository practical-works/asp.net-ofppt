using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_EFM_2017
{
    public partial class mise_a_jour_hotels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton_ajouter_Click(object sender, EventArgs e)
        {
            string numhotel = ((TextBox)GridView1.FooterRow.FindControl("TextBox_numhotel")).Text;
            string nom = ((TextBox)GridView1.FooterRow.FindControl("TextBox_nom")).Text;
            string ville = ((TextBox)GridView1.FooterRow.FindControl("TextBox_ville")).Text;
            string etoiles = ((TextBox)GridView1.FooterRow.FindControl("TextBox_etoiles")).Text;
            if (numhotel == "" || nom == "" || ville == "" || etoiles == "")
            {
                ((Label)GridView1.FooterRow.FindControl("Label_error")).Text = "Veuillez remplir les champs !";
            }
            else
            {
                SqlDataSource1.InsertParameters["numhotel"].DefaultValue = numhotel;
                SqlDataSource1.InsertParameters["nom"].DefaultValue = nom;
                SqlDataSource1.InsertParameters["ville"].DefaultValue = ville;
                SqlDataSource1.InsertParameters["etoiles"].DefaultValue = etoiles;
                SqlDataSource1.Insert();
            }

            // Les autres commandes sont gérées par l'assistant
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                string numhotel = e.CommandArgument.ToString();
                GridView2.DataSource = ADO.GetTable("select * from Chambre where numhotel = " + numhotel);
                GridView2.DataBind();
            }
        }
    }
}