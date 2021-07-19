using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Atelier : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void FonctionValidation(object source, ServerValidateEventArgs args)
    {
        //int val = int.Parse(args.Value);
        //if (val % 2 == 0)
        //    args.IsValid = true;
        //else
        //    args.IsValid = false;
    }
}