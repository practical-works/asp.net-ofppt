using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8_Ex2.account
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Authentication.LoginCookiesExistsAndStatusIn(Page))
                {
                    Response.Redirect("~/default.aspx");
                } 
                else if (Authentication.LoginCookiesExists(Page))
	            {
                    txt_login.Text = Request.Cookies["login"]["username"];
	            }

                lbl_info.Text = Authentication.GetActionQueryStringMessage(Page);
                lbl_error.Text = Authentication.GetErrorQueryStringMessage(Page);
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string username = txt_login.Text.Trim();
            string password = txt_pass.Text;

            if (username == "" || password == "")
            {
                lbl_error.Text = "Les deux champs sont nécessaires pour se connecter";
            }
            else
            {
                SqlCommand command = new SqlCommand(
                    "select * from Client where Loginn=@Loginn and Pass=@Pass", ADO.Connection);
                command.Parameters.Add("Loginn", System.Data.SqlDbType.VarChar).Value = username;
                command.Parameters.Add("Pass", System.Data.SqlDbType.VarChar).Value = password;

                ADO.Connect();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    string name = reader["Nom"].ToString();
                    string id = reader["NumClient"].ToString();
                    Authentication.SessionUpdate(Page, username, name, id);
                    if (cb_remember.Checked)
                    {
                        Authentication.CookiesUpdate(Page, username, name, id, true);
                    }
                    ADO.Disconnect();
                    if (Request.QueryString["error"] != null)
                    {
                        // Example: ../page.aspx?error=source?item=20
                        // Extracted value : source?item=20
                        string error = Request.QueryString["error"];

                        // [source]?[item=20]
                        string[] errorSourcePage = error.Split('?');

                        // Example URL: ~/account/source.aspx?item=20
                        if (errorSourcePage.Length >= 2)
                        {
                            string url = string.Format("~/account/{0}.aspx?{1}", errorSourcePage[0]
                                , errorSourcePage[1]);
                            Response.Redirect(url);
                        }
                        else
                        {
                            string url = string.Format("~/account/{0}.aspx", errorSourcePage[0]);
                            Response.Redirect(url);
                        }
                        
                    }
                    Response.Redirect("~/account/profil.aspx");
                }
                else
                {
                    lbl_error.Text = "Combinaison du nom d'utilisateur et du mot de passe incorrecte";
                }
                ADO.Disconnect();
            }
        }
    }
}