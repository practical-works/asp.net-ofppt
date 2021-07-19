using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP_EFM_2017.ServiceReference1;

namespace ASP_EFM_2017
{
    public partial class consomation_web_service : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                WebService1SoapClient s = new WebService1SoapClient();
                GridView1.DataSource = s.ReservationsEntreDeuxDates(DateTime.Parse(TextBox1.Text), DateTime.Parse(TextBox2.Text));
                GridView1.DataBind();
            }
        }
    }
}