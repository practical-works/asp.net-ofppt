using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP5
{
    public partial class Atelier2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["nom"] != null && Request.Cookies["prenom"] != null)
            {
                string nom = Request.Cookies["nom"].Value;
                string prenom = Request.Cookies["prenom"].Value;
                Label1.Text = nom + " " + prenom + " mémorisé depuis les cookies.";
            }

            if (Request.QueryString["nom"] != null && Request.QueryString["prenom"] != null)
            {
                string nom = Request.QueryString["nom"];
                string prenom = Request.QueryString["prenom"];
                Label2.Text = nom + " " + prenom + " mémorisé depuis la chaîne de requête.";
            }

            if (Request.Form["TextBox1"] != null && Request.Form["TextBox2"] != null)
            {
                string nom = Request.Form["TextBox1"];
                string prenom = Request.Form["TextBox2"];
                Label3.Text = nom + " " + prenom + " mémorisé depuis le formulaire.";
            }

        }
    }
}