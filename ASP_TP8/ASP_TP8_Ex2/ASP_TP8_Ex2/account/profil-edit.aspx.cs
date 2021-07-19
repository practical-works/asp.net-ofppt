using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8_Ex2.account
{
    public partial class profil_edit : System.Web.UI.Page
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

                if (username != "")
                {
                    SqlCommand command = new SqlCommand(
                        "select * from Client where Loginn=@Loginn", ADO.Connection);
                    command.Parameters.Add("Loginn", System.Data.SqlDbType.VarChar).Value = username;
                    ADO.Connect();
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        string[] nomPrenom = new string[2];
                        nomPrenom = reader["Nom"].ToString().Split(' ');

                        txt_nom.Text = nomPrenom[0];
                        txt_prenom.Text = nomPrenom[1];
                        txt_adresse.Text = reader["Adresse"].ToString();
                        txt_ville.Text = reader["Ville"].ToString();
                        txt_phone.Text = reader["Tel"].ToString();
                    }
                    ADO.Disconnect();
                }
                else
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
                SqlCommand command = new SqlCommand(
                   @"update Client set Nom=@Nom, Adresse=@Adresse, Ville=@Ville, Tel=@Tel
                        where Loginn=@Loginn", ADO.Connection);
                command.Parameters.Add("Loginn", System.Data.SqlDbType.VarChar).Value = username;
                command.Parameters.Add("Nom", System.Data.SqlDbType.VarChar).Value = txt_nom.Text.Trim() + " " + txt_prenom.Text.Trim();
                command.Parameters.Add("Adresse", System.Data.SqlDbType.VarChar).Value = txt_adresse.Text.Trim();
                command.Parameters.Add("Ville", System.Data.SqlDbType.VarChar).Value = txt_ville.SelectedValue.Trim();
                command.Parameters.Add("Tel", System.Data.SqlDbType.VarChar).Value = txt_phone.Text.Trim();

                ADO.Connect();
                if (command.ExecuteNonQuery() != 0)
                {
                    ADO.Disconnect();
                    string name = txt_nom.Text.Trim() + " " + txt_prenom.Text.Trim();
                    string id = (Authentication.LoginSessionExists(Page)) ? Session["id"].ToString() : null;
                    
                    Authentication.SessionUpdate(Page, username, name,id);
                    
                    if (Authentication.LoginCookiesExists(Page))
                    {
                        bool statusIn = (Request.Cookies["login"]["status"] == "in") ? true : false;
                        Authentication.CookiesUpdate(Page, username, name, id, statusIn);
                    }
                    
                    Response.Redirect("~/account/profil.aspx?action=profil-edit");
                }
                else
                {
                    lbl_error.Text = "Une erreur s'est produite, veuillez réessayer !";
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