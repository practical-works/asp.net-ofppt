using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_EFM_2017
{
    public partial class authentification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_connect_Click(object sender, EventArgs e)
        {
            if (TextBox_login.Text == "" || TextBox_pass.Text == "")
            {
                Label1.Text = "Les deux champs sont requis !";
            }
            else
            {
                string commandText = string.Format("select * from Client where login = '{0}' and pass = '{1}'",
                    TextBox_login.Text, TextBox_pass.Text);
                DataTable clients = ADO.GetTable(commandText);
                if (clients.Rows.Count == 0)
                {
                    Label1.Text = "Combinaison d'email/mot de passe introuvable !";
                }
                else
                {
                    Session["id"] = clients.Rows[0][0].ToString();
                    Response.Redirect("profil.aspx");
                }
            }
        }
    }
}