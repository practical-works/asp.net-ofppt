using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_EFM_2017
{
    public partial class inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            // Vérifier si le login est unique
            string commandText = string.Format("select * from Client where login = '{0}'", TextBox_login.Text);
            DataTable clients = ADO.GetTable(commandText);
            args.IsValid = (clients.Rows.Count == 0);
        }

        protected void Button_inscrire_Click(object sender, EventArgs e)
        {
            string commandText = string.Format("insert into Client values ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}')",
                TextBox_cin.Text, TextBox_nom.Text, TextBox_prenom.Text, 
                TextBox_telephone.Text, TextBox_login.Text, TextBox_pass.Text);
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