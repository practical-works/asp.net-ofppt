using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EFF_2017_Dossier_3
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (txt_email.Text == "" || txt_password.Text == "")
            {
                Label_error.Text = "Les deux champs sont requis !";
            }
            else
            {
                string commandText = "";
                string roleIdName = "";
                if (ddl_userType.SelectedValue == "Participant")
                {
                    commandText = string.Format("select * from Participant where emailP='{0}' and passP='{1}'",
                    txt_email.Text, txt_password.Text);
                    roleIdName = "idP";
                }
                else
                {
                    commandText = string.Format("select * from Organisateur where emailorg='{0}' and passOrg='{1}'",
                    txt_email.Text, txt_password.Text);
                    roleIdName = "idOrg";
                }

                DataTable table = ADO.GetTable(commandText);
                if (table.Rows.Count == 0)
                {
                    Label_error.Text = "Email ou Mot de passe incorrect";
                }
                else
                {
                    Session[roleIdName] = table.Rows[0][0].ToString();
                    Session["email"] = table.Rows[0][3].ToString();
                    Response.Redirect("default.aspx");
                }
            }
        }
    }
}