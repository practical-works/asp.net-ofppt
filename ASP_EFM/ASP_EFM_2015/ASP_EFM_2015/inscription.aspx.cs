using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_EFM_2015
{
    public partial class inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DataTable etudiantTable = ADO.GetTable("select * from Etudiant where mail = " + TextBox_email.Text.Trim());
            args.IsValid = (etudiantTable.Rows.Count == 0);
        }

        protected void Button_inscrire_Click(object sender, EventArgs e)
        {
            string commandText = string.Format("insert into Etudiant values ('{0}', '{1}', '{2}', '{3}', '{4}'",
                TextBox_nom.Text, TextBox_dateNaiss.Text, TextBox_phone.Text, TextBox_email.Text, TextBox_pass.Text);
            if (ADO.ExecuteCommand(commandText) == 0)
            {
                Label1.Text = "une erreur s'est produite, veuillez réessayer !";
            }
            else
            {
                Response.Redirect("authentification.aspx");
            }
        }
    }
}