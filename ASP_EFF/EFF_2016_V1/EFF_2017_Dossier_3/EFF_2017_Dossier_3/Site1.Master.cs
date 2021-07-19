using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF_2017_Dossier_3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    HyperLink_login.Visible = true;
                    LinkButton_logout.Visible = false;
                    Label_username.Text = "";
                }
                else
                {
                    HyperLink_login.Visible = false;
                    LinkButton_logout.Visible = true;
                    Label_username.Text = Session["email"].ToString();
                }
            }
        }

        protected void LinkButton_logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}