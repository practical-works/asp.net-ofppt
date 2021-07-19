using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP6.Ex1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["error"] != null)
            {
                if (Request.QueryString["error"] == "1")
                    lbl_error.Text = "Secret 1 protégée. Identifiez-vous !";
                else if (Request.QueryString["error"] == "2")
                    lbl_error.Text = "Secret 2 protégée. Identifiez-vous !";
                else
                    lbl_error.Text = "Erreur non définie";
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            lbl_error.Text = "";
            if (txt_username.Text == "user" && txt_password.Text == "123")
            {
                Session["username"] = txt_username.Text;
                Response.Redirect("secret1.aspx");
            }
            else
            {
                lbl_error.Text = "Identifiants incorrects. Accés non autorisé.";
            }
        }
    }
}