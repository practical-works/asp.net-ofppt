using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8.Ex2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_error.Text = "";
            if (Request.QueryString["error"] != null)
            {
                string error = Request.QueryString["error"];
                string errorMsg = "";
                switch (error)
                {
                    case "0":
                        errorMsg = "Veuillez vous identifier pour voir le contenu désiré";
                        break;
                    default:
                        break;
                }
                lbl_error.Text = errorMsg;
            }
            if (Request.QueryString["action"] != null)
            {
                string action = Request.QueryString["action"];
                string infoMsg = "";
                switch (action)
                {
                    case "logout":
                        infoMsg = "Vous vous êtes bien déconnecté";
                        break;
                    default:
                        break;
                }
                lbl_info.Text = infoMsg;
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
                    "select * from Client where Loginn=@Loginn and Pass=@Pass", Global.Connection);
                command.Parameters.Add("Loginn", System.Data.SqlDbType.VarChar).Value = username;
                command.Parameters.Add("Pass", System.Data.SqlDbType.VarChar).Value = password;

                Global.Connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    Session["username"] = username;
                    Session["name"] = reader["Nom"];
                    if (cb_remember.Checked)
                    {
                        Response.Cookies["username"].Value = username;
                        Response.Cookies["username"].Expires = DateTime.Now.AddMinutes(3);
                    }
                    reader.Close();
                    Global.Connection.Close();
                    Response.Redirect("default.aspx");
                }
                else
                {
                    lbl_error.Text = "Combinaison du nom d'utilisateur et du mot de passe incorrecte";
                }
                reader.Close();
                Global.Connection.Close();
	        }
        }
    }
}