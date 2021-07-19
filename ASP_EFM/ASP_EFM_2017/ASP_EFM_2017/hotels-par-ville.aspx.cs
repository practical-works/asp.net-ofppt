using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_EFM_2017
{
    public partial class hotels_par_ville : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillList();
                FillGrid();
            }
        }

        protected void FillList()
        {
            DataTable villes = ADO.GetTable("SELECT DISTINCT ville FROM Hotel");
            DropDownList1.Items.Add(new ListItem("-- Tous --", "*"));
            foreach (DataRow row in villes.Rows)
            {
                DropDownList1.Items.Add(row[0].ToString());
            }
        }

        protected void FillGrid()
        {
            string commandText = "";
            if (DropDownList1.SelectedValue == "*")
            {
                commandText = "SELECT * FROM Hotel";
            }
            else
            {
                commandText = string.Format("SELECT * FROM Hotel WHERE ville = '{0}'", DropDownList1.SelectedValue);
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