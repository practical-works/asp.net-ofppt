using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP8_Ex2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Authentication.LoginCookiesExists(Page))
            {
                welcome.InnerText = "Bienvenue " + Request.Cookies["login"]["name"];
            }
            else if (Authentication.LoginSessionExists(Page))
            {
                welcome.InnerText = "Bienvenue " + Session["name"];
            }
        }
    }
}