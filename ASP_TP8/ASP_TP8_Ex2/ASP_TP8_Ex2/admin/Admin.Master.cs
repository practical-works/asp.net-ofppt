using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP8_Ex2.admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string admin = "";

            if (Request.Cookies["admin"] != null)
            {
                admin = Request.Cookies["admin"].Value;
            }
            else if (Session["admin"] != null)
            {
                admin = Session["admin"].ToString();
            }

            if (admin == "")
            {
                Response.Redirect("~/admin/login.aspx?error=admin");
            }
            else
            {
                // Connecté en tant que <username>
                link_profil.InnerText = admin;
            }

            link_pass.CausesValidation = link_logout.CausesValidation = false;
            link_pass.ServerClick += new EventHandler(link_pass_ServerClick);
            link_logout.ServerClick += new EventHandler(link_logout_ServerClick);
        }

        void link_pass_ServerClick(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        void link_logout_ServerClick(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            
            if (Request.Cookies["admin"] != null)
            {
                Response.Cookies.Remove("admin");
            }

            Response.Redirect("~/admin/login.aspx?action=logout");
        }
    }
}