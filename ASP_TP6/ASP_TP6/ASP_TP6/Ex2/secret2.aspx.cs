using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP6.Ex2
{
    public partial class secret2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx?error=2");
            }
            else if (Session["username"].ToString() != "admin")
            {
                Response.Redirect("login.aspx?error=0");
            }
            Label1.Text = "Bonjour " + Session["username"];
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}