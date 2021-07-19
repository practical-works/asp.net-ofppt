using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_EFM_2015
{
    public partial class _ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CompareValidator1.ValueToCompare = DateTime.Now.ToShortDateString();
        }
    }
}