using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP2
{
    public partial class Ex1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Literal1.Text = "";
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                    Literal1.Text += item.Text + "<br>";
            }
        }
    }
}