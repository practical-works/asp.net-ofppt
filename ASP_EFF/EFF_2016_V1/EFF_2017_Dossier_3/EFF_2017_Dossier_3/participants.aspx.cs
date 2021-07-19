using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFF_2017_Dossier_3.HumanCoServiceReference;
using System.Data;

namespace EFF_2017_Dossier_3
{
    public partial class participants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //DropDownList1.DataSource = ADO.GetTable("select * from Campagne");
                //DropDownList1.DataTextField = "nomCamp";
                //DropDownList1.DataValueField = "idCamp";
                //DropDownList1.DataBind();

                DropDownList1.Items.Add("-- Choisir une campagne --");
                DataTable table = ADO.GetTable("select * from Campagne");
                foreach (DataRow row in table.Rows)
                {
                    string nomCamp = row["nomCamp"].ToString();
                    string idCamp = row["idCamp"].ToString();
                    DropDownList1.Items.Add(new ListItem(nomCamp, idCamp));
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                Label1.Text = "";
            }
            else
            {
                HumanCoWebServiceSoapClient webService = new HumanCoWebServiceSoapClient();
                Label1.Text = webService.NombreParticipantsCampagne(int.Parse(DropDownList1.SelectedValue)).ToString();
            }
        }
    }
}