using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP8.Ex2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                // [Se connecter] [S'inscrire]
                btn_login.Visible = btn_signup.Visible = true;
                btn_logout.Visible = btn_profil.Visible = btn_cmd.Visible = false;
            }
            else
            {
                // [Se déconnecter] [Mon profile] [Mes commandes]
                btn_login.Visible = btn_signup.Visible = false;
                btn_logout.Visible = btn_profil.Visible = btn_cmd.Visible = true;
                
                // Connecté en tant que <username>
                btn_profil.Text += " (" + Session["username"] + ")";
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("login.aspx?action=logout");
        }
    }
}