using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP9
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Redirect("login.aspx?source=" + System.IO.Path.GetFileName(Request.RawUrl));
                }
            }
            link_logout.ServerClick += new EventHandler(link_logout_ServerClick);
        }

        protected void link_logout_ServerClick(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx?source=" + System.IO.Path.GetFileName(Request.RawUrl));
        }
    }
}