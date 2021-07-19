using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP8_Ex2
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = "", name = "";

            if (Authentication.LoginCookiesExistsAndStatusIn(Page))
            {
                username = Request.Cookies["login"]["username"];
                name = Request.Cookies["login"]["name"];
            }
            else if (Authentication.LoginSessionExists(Page))
            {
                username = Session["login"].ToString();
                name = Session["name"].ToString();
            }
            
            link_logout.CausesValidation = false;
            link_logout.ServerClick += new EventHandler(link_logout_ServerClick);
            
            if (username == "")
            {
                // -- OUT --
                // [Se connecter] [S'inscrire]
                link_login.Visible = link_signup.Visible = true;
                link_logout.Visible = link_profil.Visible = link_cart.Visible = false;
            }
            else
            {
                // -- IN --
                // [Se déconnecter] [Mon profile] [Mes commandes]
                link_logout.Visible = link_profil.Visible = link_cart.Visible = true;
                link_login.Visible = link_signup.Visible = false;

                // Connecté en tant que <username>
                link_profil.InnerText = string.Format("{0} ({1})", name, username);
            }
        }

        void link_logout_ServerClick(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            if (Authentication.LoginCookiesExists(Page))
            {
                string username = Request.Cookies["login"]["username"];
                string name = Request.Cookies["login"]["name"];
                string id = Request.Cookies["login"]["id"];
                Authentication.CookiesUpdate(Page, username, name, id, false);
            }

            Response.Redirect("~/account/login.aspx?action=logout");
        }
    }
}