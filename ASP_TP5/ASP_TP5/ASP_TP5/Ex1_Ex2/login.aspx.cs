using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP5.Ex1_Ex2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["erreur"] != null)
            {
                Label_error.Text = "La page que vous avez demandé est protégée ! Veuillez vous connecter !";
            }
        }

        protected void Button_connecter_Click(object sender, EventArgs e)
        {
            if (TextBox_pseudo.Text == "user" &&  TextBox_passe.Text == "user")
            {
                if (CheckBox_remember.Checked)
                {
                    Response.Cookies["login"].Value = TextBox_pseudo.Text;
                    Response.Cookies["login"].Expires = DateTime.Now.AddDays(1);

                    Response.Cookies["passe"].Value = TextBox_passe.Text;
                    Response.Cookies["passe"].Expires = DateTime.Now.AddDays(1);
                }
                Server.Transfer("secret.aspx");
            }
            else
            {
                Label_error.Text = "Combinaison de pseudo et mot de passe incorrecte !";
            }
        }
    }
}