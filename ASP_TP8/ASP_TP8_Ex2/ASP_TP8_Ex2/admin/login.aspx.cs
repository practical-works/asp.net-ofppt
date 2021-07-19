using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8_Ex2.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["admin"] != null || Session["admin"] != null)
                {
                    Response.Redirect("~/admin/admin.aspx");
                }

                lbl_error.Text = Authentication.GetErrorQueryStringMessage(Page);
                lbl_info.Text = Authentication.GetActionQueryStringMessage(Page);
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string adminName = txt_login.Text.Trim();
            string adminPassword = txt_pass.Text;

            if (adminName == "" || adminPassword == "")
            {
                lbl_error.Text = "Les deux champs sont nécessaires pour se connecter";
            }
            else
            {
                SqlCommand command = new SqlCommand(
                    "select * from Admin where name=@name and Pass=@Pass", ADO.Connection);
                command.Parameters.Add("name", System.Data.SqlDbType.VarChar).Value = adminName;
                command.Parameters.Add("Pass", System.Data.SqlDbType.VarChar).Value = adminPassword;

                ADO.Connect();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    Session["admin"] = adminName;
                    if (cb_remember.Checked)
                    {
                        Response.Cookies["admin"].Value = adminName;
                        Response.Cookies["admin"].Expires = DateTime.Now.AddMinutes(5);
                    }
                    ADO.Disconnect();
                    Response.Redirect("~/admin/admin.aspx");
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