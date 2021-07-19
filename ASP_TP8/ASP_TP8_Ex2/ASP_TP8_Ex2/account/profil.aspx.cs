using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8_Ex2.account
{
    public partial class profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbl_info.Text = Authentication.GetActionQueryStringMessage(Page);

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
                        txt_nom.Text = reader["Nom"].ToString();
                        txt_adresse.Text = reader["Adresse"].ToString();
                        txt_ville.Text = reader["Ville"].ToString();
                        txt_phone.Text = reader["Tel"].ToString();
                        txt_username.Text = reader["Loginn"].ToString();
                    }
                    ADO.Disconnect();
                }
                else
                {
                    Response.Redirect("login.aspx?error=profil");
                }
            }
        }
    }
}