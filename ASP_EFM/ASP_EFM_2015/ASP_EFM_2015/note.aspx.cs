using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_EFM_2015
{
    public partial class note : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillLists();
            }
        }

        protected void FillLists()
        {
            ddl_etudiant.DataSource = ADO.GetTable("select * from Etudiant");
            ddl_etudiant.DataTextField = "Nom";
            ddl_etudiant.DataValueField = "CodeEtudiant";
            ddl_etudiant.DataBind();

            ddl_cours.DataSource = ADO.GetTable("select * from Cours");
            ddl_cours.DataTextField = "Titre";
            ddl_cours.DataValueField = "NumCours";
            ddl_cours.DataBind();
        }

        protected void btn_ajouter_Click(object sender, EventArgs e)
        {
            double note = 0;
            if (!double.TryParse(txt_note.Text, out note) || (note < 0 || note > 20))
            {
                Label1.Text = "Note invalide !";
            }
            else
            {
                string commandText = string.Format("select * from Examen where CodeEtudiant = {0} and NumCours = {1}",
                    ddl_etudiant.SelectedValue, ddl_cours.SelectedValue);
                DataTable examenTable = ADO.GetTable(commandText);
                if (examenTable.Rows.Count == 0)
                {
                    commandText = string.Format("insert into Examen values ({0}, {1}, '{2}', {3})",
                        ddl_etudiant.SelectedValue, ddl_cours.SelectedValue, null, txt_note.Text);
                }
                else
                {
                    commandText = string.Format("update Examen set note = {0} where CodeEtudiant = {1} and NumCours = {2}",
                        txt_note.Text, ddl_etudiant.SelectedValue, ddl_cours.SelectedValue);
                }
                if (ADO.ExecuteCommand(commandText) == 0)
                {
                    Label1.Text = "Une erreur s'est produite. Veuillez réessayer !";
                }
                else
                {
                    Label2.Text = string.Format("Une note de {0} a été donnée à l'étudiant {1} dans l'examen de {2}",
                        txt_note.Text, ddl_etudiant.SelectedItem.Text, ddl_cours.SelectedItem.Text);
                    txt_note.Text = "";
                    ddl_etudiant.SelectedIndex = ddl_cours.SelectedIndex = 0;
                }
            }
        }
    }
}