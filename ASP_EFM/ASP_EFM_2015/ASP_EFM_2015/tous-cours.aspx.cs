using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_EFM_2015
{
    public partial class tous_cours : System.Web.UI.Page
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
            //ddl_prof.DataSource = ADO.GetTable("select * from Professeur");
            //ddl_prof.DataTextField = "Nom";
            //ddl_prof.DataValueField = "MatriculeProfesseur";
            //ddl_prof.DataBind();

            ddl_prof.Items.Add(new ListItem("-- Tous --", "*"));
            DataTable professeurTable = ADO.GetTable("select * from Professeur");
            foreach (DataRow row in professeurTable.Rows)
            {
                string text = row["Nom"].ToString();
                string value = row["MatriculeProfesseur"].ToString();
                ddl_prof.Items.Add(new ListItem(text, value));
            }
        }

        protected void FillGrid()
        {
            gridView_cours.DataSource = ADO.GetTable("select * from Cours");
            gridView_cours.DataBind();
        }

        protected void ddl_prof_SelectedIndexChanged(object sender, EventArgs e)
        {
            string commandText = (ddl_prof.SelectedValue == "*") ?
                "select * from Cours" : "select * from Cours where MatriculeProfesseur = " + ddl_prof.SelectedValue;
            gridView_cours.DataSource = ADO.GetTable(commandText);
            gridView_cours.DataBind();
        }

        protected void txt_salle_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void btn_salle_Click(object sender, EventArgs e)
        {
            string commandText = (txt_salle.Text == "") ?
                "select * from Cours" : "select * from Cours where Salle like '%" + txt_salle.Text + "%'";
            gridView_cours.DataSource = ADO.GetTable(commandText);
            gridView_cours.DataBind();
        }
    }
}