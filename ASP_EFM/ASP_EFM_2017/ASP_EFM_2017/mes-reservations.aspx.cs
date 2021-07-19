using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_EFM_2017
{
    public partial class mes_reservations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    FillList();
                    FillGrid();
                }
            }
        }

        protected void FillList()
        {
            DataTable hotels = ADO.GetTable("SELECT * FROM Hotel");
            DropDownList1.Items.Add(new ListItem("-- Tous --", "*"));
            foreach (DataRow row in hotels.Rows)
            {
                DropDownList1.Items.Add(new ListItem(row["nom"].ToString(), row["numhotel"].ToString()));
            }
        }

        protected void FillGrid()
        {
            string commandText = "";
            if (DropDownList1.SelectedValue == "*")
            {
                commandText = "SELECT * FROM Reservation WHERE numclient = " + Session["id"];
            }
            else
            {
                commandText = string.Format("SELECT * FROM Reservation WHERE numhotel = '{0}' and numclient = '{1}'",
                    DropDownList1.SelectedValue, Session["id"]);
            }
            GridView1.DataSource = ADO.GetTable(commandText);
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillGrid();
        }
    }
}