using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF_2017_Dossier_3
{
    public partial class gestion_campagnes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["idOrg"] == null)
                {
                    Response.Redirect("login.aspx?error=1");
                }

                ddl_categorie.DataSource = ADO.GetTable("select * from Categorie");
                ddl_categorie.DataTextField = "nomCategorie";
                ddl_categorie.DataValueField = "idCategorie";
                ddl_categorie.DataBind();
            }
        }

        protected void btn_ajouter_Click(object sender, EventArgs e)
        {
            if (ADO.GetTable("select * from Campagne where idCamp = " + txt_id.Text).Rows.Count != 0)
            {
                Label_error.Text = "Cet ID existe déjà !";
            }
            else
            {
                string commandText = string.Format(@"
                    insert into Campagne values ({0}, '{1}', '{2}', '{3}', null,  {4}, '{5}', '{6}', null, {7}, {8})",
                    txt_id.Text, txt_nom.Text, txt_desc.Text, DateTime.Today.ToShortDateString(), txt_montant.Text,
                    txt_nomBen.Text, txt_prenomBen.Text, ddl_categorie.SelectedValue, Session["idOrg"]);
                if (ADO.ExecuteCommand(commandText) == 0)
                {
                    Label_error.Text = "Une erreur s'est produite !";
                }
                else
                {
                    Label_confirm.Text = "Campagne ajoutée avec succés !";
                    GridView1.DataBind();
                }
            }
        }
    }
}