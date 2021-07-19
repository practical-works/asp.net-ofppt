using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_EFM_2015
{
    public partial class cours : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGrid();
            }
        }

        protected void FillGrid()
        {
            if (Session["id"] != null)
            {
                GridView1.DataSource = ADO.GetTable(string.Format(@"select * from Cours where NumCours in
                (select NumCours from Examen where CodeEtudiant = {0})", Session["id"]));
                GridView1.DataBind();
            }
        }
    }
}