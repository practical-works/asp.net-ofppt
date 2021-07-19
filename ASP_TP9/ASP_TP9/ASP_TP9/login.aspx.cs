using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_TP9
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // just for testing
            TextBox_username.Text = "customer";
            TextBox_password.Text = "abc123";
        }

        protected void Button_login_Click(object sender, EventArgs e)
        {
            string assuréCommandText = string.Format("select * from Assuré where matricule='{0}' and mot_passe='{1}'",
                TextBox_username.Text, TextBox_password.Text);
            DataTable assurés = ADO.GetTable(assuréCommandText);

            string utilisateurCommandText = string.Format("select * from Utilisateur where [user]='{0}' and pass='{1}'",
                TextBox_username.Text, TextBox_password.Text);
            DataTable utilisateurs = ADO.GetTable(utilisateurCommandText);

            if (assurés.Rows.Count > 0)
            {
                Session["username"] = TextBox_username.Text;
                if (Request.QueryString["source"] != null)
                {
                    Response.Redirect(Request.QueryString["source"]);
                }
                Response.Redirect("default.aspx");
            }
            else if (utilisateurs.Rows.Count > 0)
            {
                Session["username"] = TextBox_username.Text;
                if (utilisateurs.Rows[0]["role"].ToString() == "admin")
                {
                    Session["role"] = "admin";
                }
                else if (utilisateurs.Rows[0]["role"].ToString() == "mod")
                {
                    Session["role"] = "mod";
                }
                else
                {
                    Session["role"] = "undefined";
                }
                if (Request.QueryString["source"] != null)
                {
                    Response.Redirect(Request.QueryString["source"]);
                }
                Response.Redirect("cpanel.aspx");
            }
            else
            {
                Label_error.Visible = true;
            }
        }
    }
}