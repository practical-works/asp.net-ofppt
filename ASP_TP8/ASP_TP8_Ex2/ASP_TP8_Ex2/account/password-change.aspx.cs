using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8_Ex2.account
{
    public partial class password_change : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string username = "";

                if (Authentication.LoginCookiesExistsAndStatusIn(Page))
                {
                    username = Request.Cookies["login"]["username"];
                }
                else if (Authentication.LoginSessionExists(Page))
                {
                    username = Session["login"].ToString();
                }

                if (username == "")
                {
                    Response.Redirect("login.aspx?error=profil-edit");
                }
            }
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string username = "";

            if (Authentication.LoginCookiesExistsAndStatusIn(Page))
            {
                username = Request.Cookies["login"]["username"];
            }
            else if (Authentication.LoginSessionExists(Page))
            {
                username = Session["login"].ToString();
            }

            if (IsValid && username != "")
            {
                SqlCommand command = new SqlCommand("", ADO.Connection);
                command.Parameters.Add("Loginn", System.Data.SqlDbType.VarChar).Value = username;
                command.Parameters.Add("Pass", System.Data.SqlDbType.VarChar).Value = txt_passOld.Text;

                command.CommandText = "select * from Client where Loginn=@Loginn and Pass=@Pass";
                ADO.Connect();
                if (command.ExecuteScalar() != null)
                {
                    command.Parameters["Pass"].Value = txt_pass.Text;
                    command.CommandText = "update Client set Pass=@Pass where Loginn=@Loginn";

                    ADO.Connect();
                    if (command.ExecuteNonQuery() != 0)
                    {
                        ADO.Disconnect();
                        Response.Redirect("~/account/profil.aspx?action=password-change");
                    }
                    else
                    {
                        lbl_error.Text = "Une erreur s'est produite, veuillez réessayer !";
                    }
                    ADO.Disconnect();
                }
                else
                {
                    lbl_error.Text = "Mot de passe incorrect";
                }
                ADO.Disconnect();
            }
            else
            {
                lbl_error.Text = "Une erreur s'est produite, vérifiez que vous ête bien connecté !";
            }
        }
    }
}