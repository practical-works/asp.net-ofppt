using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP5.Ex1_Ex2
{
    public partial class secret : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["login"] != null && Request.Cookies["passe"] != null)
            {
                Label_pseudo.Text = Request.Cookies["login"].Value;
                Label_passe.Text = Request.Cookies["passe"].Value;
            }
            else if (Request.Form["TextBox_pseudo"] != null && Request.Form["TextBox_passe"] != null)
            {
                Label_pseudo.Text = Request.Form["TextBox_pseudo"];
                Label_passe.Text = Request.Form["TextBox_passe"];
            }
            else
            {
                Response.Redirect("login.aspx?erreur=0");
            }
        }
    }
}