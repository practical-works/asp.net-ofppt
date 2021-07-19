using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EFF_2016_Dossier_3
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (txt_num.Text == "" && txt_pass.Text == "")
            {
                Label_error.Text = "Les deux champs sont requis";
            }
            else
            {
                DataTable table = ADO.GetTable(string.Format(@"select * from Type_App where num_type = {0}
                       and motdepasse = '{1}'", txt_num.Text, txt_pass.Text));
                if (table.Rows.Count == 0)
	            {
		            Label_error.Text = "Combinaison du numéro et du mot de passe incorrecte";
	            } else
	            {
                    Session["id"] = txt_num.Text;
                    Session["nom"] = table.Rows[0]["nom_type"];
                    Response.Redirect("profil.aspx");
	            }
            }
        }
    }
}