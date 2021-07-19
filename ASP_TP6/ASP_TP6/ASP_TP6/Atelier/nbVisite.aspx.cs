using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP6.Atelier
{
    public partial class nbVisite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application.Lock();
            Application["visites"] = (int)Application["visites"] + 1;
            Application.UnLock();
            Label1.Text = Application["visites"].ToString();
        }
    }
}