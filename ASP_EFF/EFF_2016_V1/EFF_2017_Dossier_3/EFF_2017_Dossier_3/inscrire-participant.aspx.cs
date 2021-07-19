using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF_2017_Dossier_3
{
    public partial class inscrire_participant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_inscrire_Click(object sender, EventArgs e)
        {
            if (ADO.GetTable("select * from Participant where idP = " + txt_id.Text).Rows.Count != 0)
            {
                Label_error.Text = "Cet ID existe déjà !";
            }
            else
            {
                string commandText = string.Format(@"
                insert into Participant values ({0}, '{1}', '{2}', '{3}', '{4}')",
                txt_id.Text, txt_nom.Text, txt_prenom.Text, txt_email.Text, txt_pass.Text);
                if (ADO.ExecuteCommand(commandText) == 0)
                {
                    Label_error.Text = "Une erreur s'est produite !";
                }
                else
                {
                    Session["idP"] = txt_id.Text;
                    Session["email"] = txt_email.Text;
                    Response.Redirect("default.aspx");
                }
            }
        }
    }
}