using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8.Ex2
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = "";
            if (Request.Cookies["username"] != null)
            {
                username = Request.Cookies["username"].Value;
            }
            else if (Session["username"] != null)
            {
                username = Session["username"].ToString();
            }

            if (username != "")
            {
                SqlCommand command = new SqlCommand(
                    "select * from Client where Loginn=@Loginn", Global.Connection);
                command.Parameters.Add("Loginn", System.Data.SqlDbType.VarChar).Value = username;
                Global.Connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    txt_nom.Text = reader["Nom"].ToString();
                    txt_adresse.Text = reader["Adresse"].ToString();
                    txt_ville.Text = reader["Ville"].ToString();
                    txt_phone.Text = reader["Tel"].ToString();
                    txt_username.Text = reader["Loginn"].ToString();
                    txt_pass.Text = reader["Pass"].ToString();
                }
                reader.Close();
                Global.Connection.Close();
            }
            else
            {
                Response.Redirect("login.aspx?error=0");
            }
        }
    }
}