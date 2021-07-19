using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP6.Atelier
{
    public partial class cible2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Bienvenue " + Session["nom"] + " " + Session["prenom"];
        }
    }
}