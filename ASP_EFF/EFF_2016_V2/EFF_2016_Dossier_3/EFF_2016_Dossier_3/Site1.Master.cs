using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF_2016_Dossier_3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                link_profil.Text = (Session["nom"] != null) ? Session["nom"].ToString() + " (Profile)" : "";
                link_login.Visible = (Session["nom"] == null);
                link_profil.Visible = btn_logout.Visible = !link_login.Visible;
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}