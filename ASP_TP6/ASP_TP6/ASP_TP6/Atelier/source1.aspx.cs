using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP6.Atelier
{
    public partial class source1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["nom"] = TextBox_nom.Text;
            Session["prenom"] = TextBox_prenom.Text;

            Response.Redirect("cible1.aspx");
        }
    }
}