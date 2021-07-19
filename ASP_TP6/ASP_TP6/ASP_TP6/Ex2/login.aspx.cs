using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ASP_TP6.Ex2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Application.Lock();
                
                Application["visites"] = (int)Application["visites"] + 1;
                lbl_visites.Text = Application["visites"].ToString();

                lbl_visiteurs.Text = Application["visiteurs"].ToString();

                lbl_visiteurs_actifs.Text = Application["visiteurs_actifs"].ToString();

                Application.UnLock(); 
                //--------------------------------------------------------

                if (Request.QueryString["error"] != null)
                {
                    if (Request.QueryString["error"] == "1")
                        lbl_error.Text = "Secret 1 protégée. Identifiez-vous !";
                    else if (Request.QueryString["error"] == "2")
                        lbl_error.Text = "Secret 2 protégée. Identifiez-vous !";
                    else
                        lbl_error.Text = "Erreur non définie";
                }
                if (Session["username"] != null)
                {
                    if (Session["username"].ToString() == "admin")
                    {
                        Response.Redirect("secret2.aspx");
                    }
                    else
                    {
                        if (Request.QueryString["error"] == "0")
                            Response.Redirect("secret1.aspx?error=0");
                        else
                            Response.Redirect("secret1.aspx");
                    }
                }
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
            else if (txt_username.Text == "admin" && txt_password.Text == "123abc")
            {
                Session["username"] = txt_username.Text;
                Response.Redirect("secret2.aspx");
            }
            else
            {
                lbl_error.Text = "Accés non autorisé";
            }
        }
    }
}