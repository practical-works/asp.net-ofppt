using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace EFF_2017_Dossier_2
{
    public partial class Form_Organisateurs : Form
    {
        private DataTable tableOrganisateur = ADO.GetTable("select * from Organisateur");
        private int index = 0;

        public Form_Organisateurs()
        {
            InitializeComponent();
        }

        private void Form_Organisateurs_Load(object sender, EventArgs e)
        {
            Actualiser();
        }

        private void Actualiser()
        {
            dataGridView1.DataSource = tableOrganisateur = ADO.GetTable("select * from Organisateur");
        }

        private void btn_ajouter_Click(object sender, EventArgs e)
        {
            if (num_ID.Value <= 0)
            {
                MessageBox.Show("ID valide requis");
            } 
            else if (txt_pass.TextLength < 6)
            {
                MessageBox.Show("Mot de passe 6 caractères minimum");
            }
            else if (txt_email.Text == "")
            {
                MessageBox.Show("Email requis");
            }
            else
            {
                if (ADO.GetTable("select * from Organisateur where idOrg = " + num_ID.Value).Rows.Count != 0)
                {
                    MessageBox.Show("Existe déjà");
                }
                else
                {
                    string commandText = string.Format(
                    @"insert into Organisateur values ({0}, '{1}', '{2}', '{3}', '{4}')",
                    num_ID.Value, txt_nom.Text, txt_prenom.Text, txt_email.Text, txt_pass.Text);
                    if (ADO.ExecuteCommand(commandText) == 0)
                    {
                        MessageBox.Show("Erreur");
                    }
                    else
                    {
                        Actualiser();
                    }
                }
            }
        }

        private void btn_modifier_Click(object sender, EventArgs e)
        {
            if (num_ID.Value <= 0)
            {
                MessageBox.Show("ID valide requis");
            }
            else if (txt_pass.TextLength < 6)
            {
                MessageBox.Show("Mot de passe 6 caractères minimum");
            }
            else if (txt_email.Text == "" || !Regex.IsMatch(txt_email.Text, ".+@.+[.].+"))
            {
                MessageBox.Show("Email valide requis");
            }
            else
            {
                if (ADO.GetTable("select * from Organisateur where idOrg = " + num_ID.Value).Rows.Count == 0)
                {
                    MessageBox.Show("N'existe pas");
                }
                else
                {
                    string commandText = string.Format(
                    @"update Organisateur set nomOrg='{1}', prenomOrg='{2}', emailOrg='{3}', passOrg='{4}'
                        where idOrg={0}",
                    num_ID.Value, txt_nom.Text, txt_prenom.Text, txt_email.Text, txt_pass.Text);
                    if (ADO.ExecuteCommand(commandText) == 0)
                    {
                        MessageBox.Show("Erreur");
                    }
                    else
                    {
                        Actualiser();
                    }
                }
                
            }
        }

        private void btn_supprimer_Click(object sender, EventArgs e)
        {
            if (num_ID.Value <= 0)
            {
                MessageBox.Show("ID valide requis");
            }
            else
            {
                if (ADO.GetTable("select * from Organisateur where idOrg = " + num_ID.Value).Rows.Count == 0)
                {
                    MessageBox.Show("N'existe pas");
                }
                else
                {
                    string commandText = string.Format(
                    @"delete Organisateur where idOrg={0}", num_ID.Value);
                    if (ADO.ExecuteCommand(commandText) == 0)
                    {
                        MessageBox.Show("Erreur");
                    }
                    else
                    {
                        Actualiser();
                    }
                }
                
            }
        }

        private void btn_refresh_gridView_Click(object sender, EventArgs e)
        {
            Actualiser();
        }

        enum DirectionNavigation
        {
            Premier, Dernier, Suivant, Precedent
        }
        private void Naviguer(DirectionNavigation positionNavigation)
        {
            int indexLast = tableOrganisateur.Rows.Count - 1;
            switch (positionNavigation)
            {
                case DirectionNavigation.Premier:
                    index = 0;
                    break;
                case DirectionNavigation.Dernier:
                    index = indexLast;
                    break;
                case DirectionNavigation.Suivant:
                    if (index < indexLast)
                        index++;
                    else
                        index = 0;
                    break;
                case DirectionNavigation.Precedent:
                    if (index > 0)
                        index--;
                    else
                        index = indexLast;
                    break;
                default:
                    break;
            }
            num_ID.Value = Convert.ToDecimal(tableOrganisateur.Rows[index][0]);
            txt_nom.Text = tableOrganisateur.Rows[index][1].ToString();
            txt_prenom.Text = tableOrganisateur.Rows[index][2].ToString();
            txt_email.Text = tableOrganisateur.Rows[index][3].ToString();
            txt_pass.Text = tableOrganisateur.Rows[index][4].ToString();
        }

        private void btn_premier_Click(object sender, EventArgs e)
        {
            Naviguer(DirectionNavigation.Premier);
        }

        private void btn_precedent_Click(object sender, EventArgs e)
        {
            Naviguer(DirectionNavigation.Precedent);
        }

        private void btn_suivant_Click(object sender, EventArgs e)
        {
            Naviguer(DirectionNavigation.Suivant);
        }

        private void btn_dernier_Click(object sender, EventArgs e)
        {
            Naviguer(DirectionNavigation.Dernier);
        }
    }
}
