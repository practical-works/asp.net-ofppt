using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_EFM_2017
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    DataTable user = ADO.GetTable("select * from Client where numclient = " + Session["id"]);
                    string name = user.Rows[0]["nom"].ToString();
                    Label1.Text = "Vous êtes connecté en tant que " + name;
                }
                else
                {
                    Label1.Text = "Vous n'êtes pas connecté";
                }
            }
        }
    }
}