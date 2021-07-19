using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_EFM_2017
{
    public partial class profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    string commandText = "select * from Client where numclient =" + Session["id"];
                    DataTable client = ADO.GetTable(commandText);
                    Label1.Text = client.Rows[0][0].ToString();
                    Label2.Text = client.Rows[0][1].ToString();
                    Label3.Text = client.Rows[0][2].ToString();
                    Label4.Text = client.Rows[0][3].ToString();
                    Label5.Text = client.Rows[0][4].ToString();
                    Label6.Text = client.Rows[0][5].ToString();
                }
            }
        }
    }
}