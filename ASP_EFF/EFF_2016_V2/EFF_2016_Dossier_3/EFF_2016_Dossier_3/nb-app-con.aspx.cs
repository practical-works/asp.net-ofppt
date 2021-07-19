using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFF_2016_Dossier_3.AppareilsServiceReference;
using System.Data;

namespace EFF_2016_Dossier_3
{
    public partial class nb_app_con : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AppareilsWebServiceSoapClient ws = new AppareilsWebServiceSoapClient();
            DataTable table = ws.Nb_Appareils_Contrats(1);
            Label_nbApp.Text = table.Rows[0][1].ToString();
            Label_nbCon.Text = table.Rows[1][1].ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int num_type = Convert.ToInt32(DropDownList1.SelectedValue);
            AppareilsWebServiceSoapClient ws = new AppareilsWebServiceSoapClient();
            DataTable table = ws.Nb_Appareils_Contrats(num_type);
            Label_nbApp.Text = table.Rows[0][1].ToString();
            Label_nbCon.Text = table.Rows[1][1].ToString();
        }
    }
}