using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EFF_2016_Dossier_3
{
    public partial class profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    DataTable table = ADO.GetTable("select * from Type_app where num_type = " + Session["id"]);
                    Label1.Text = table.Rows[0][0].ToString();
                    Label2.Text = table.Rows[0][1].ToString();
                    Label3.Text = table.Rows[0][2].ToString();

                    table = ADO.GetTable("select * from Appareil where num_type = " + Session["id"]);
                    GridView1.DataSource = table;
                    GridView1.DataBind();
                }
            }
        }
    }
}