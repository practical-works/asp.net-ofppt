using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8.Ex2
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                SqlCommand command = new SqlCommand(
                    "insert into Client values (@Nom, @Adresse, @Ville, @Tel, @Loginn, @Pass)"
                    , Global.Connection);
                command.Parameters.Add("Nom", System.Data.SqlDbType.VarChar).Value = txt_nom.Text.Trim();
                command.Parameters.Add("Adresse", System.Data.SqlDbType.VarChar).Value = txt_adresse.Text.Trim();
                command.Parameters.Add("Ville", System.Data.SqlDbType.VarChar).Value = txt_ville.SelectedValue.Trim();
                command.Parameters.Add("Tel", System.Data.SqlDbType.VarChar).Value = txt_phone.Text.Trim();
                command.Parameters.Add("Loginn", System.Data.SqlDbType.VarChar).Value = txt_username.Text.Trim();
                command.Parameters.Add("Pass", System.Data.SqlDbType.VarChar).Value = txt_pass.Text.Trim();

                if (command.ExecuteNonQuery() != 0)
                {
                    Session["username"] = txt_username.Text.Trim();
                    Response.Redirect("default.aspx");
                }
                else
                {
                    lbl_error.Text = "Une erreur s'est produite, veuillez réessayer !";
                }
            }
        }
    }
}