using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF_2016_Dossier_3
{
    public partial class new_appareil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] == null)
                {
                    Response.Redirect("login.aspx?error=0");
                }
                CompareValidator1.ValueToCompare = DateTime.Today.ToShortDateString();
            }
        }

        protected void Button_ajouter_Click(object sender, EventArgs e)
        {
            Label_confirm.Text = Label_error.Text = "";
            if (ADO.GetTable("select * from Appareil where num_appareil = " + TextBox_num.Text).Rows.Count != 0)
            {
                Label_error.Text = "Ce numéro d'appareil existe déjà.";
            }
            else
            {
                string commandText = string.Format("insert into Appareil values ({0}, '{1}', '{2}', {3}, {4}, {5})",
                    TextBox_num.Text, TextBox_nom.Text, TextBox_dateAchat.Text, TextBox_prixAchat.Text, TextBox_nbContrats.Text,
                    Session["id"].ToString());
                if (ADO.ExecuteCommand(commandText) == 0)
                {
                    Label_error.Text = "Une erreur s'est produite. Veuillez réessayer.";
                }
                else
                {
                    Label_confirm.Text = "Appareil ajouté avec succés.";
                }
            }
        }
    }
}