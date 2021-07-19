using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP8_Ex2.admin
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbl_clients_count.Text = ADO.GetScalar("select count(*) from Client").ToString();
                lbl_articles_count.Text = ADO.GetScalar("select count(*) from Article").ToString();
                lbl_commandes_count.Text = ADO.GetScalar("select count(*) from Commande").ToString();
            }
        }
    }
}