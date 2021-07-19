using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Media;

namespace EFF_2016_Dossier_2
{
    public partial class Form_MAJ_Appareil : Form
    {
        public Form_MAJ_Appareil()
        {
            InitializeComponent();
            dataGridView1.ContextMenuStrip = contextMenuStrip1;
        }

        private void Confirm()
        {
            SoundPlayer sfx = new SoundPlayer(Properties.Resources.confirm);
            sfx.Play();
            Actualiser();
        }

        private void Form_MAJ_Appareil_Load(object sender, EventArgs e)
        {
            Actualiser();
            Naviguer(Direction.Premier);
            
            combo_type.DataSource = ADO.GetTable("select * from Type_app");
            combo_type.ValueMember = "num_type";
            combo_type.DisplayMember = "nom_type";
        }

        DataTable table = new DataTable();
        private void Actualiser()
        {
            dataGridView1.DataSource = table = ADO.GetTable("select * from Appareil");
        }

        enum Direction
	    {
	         Premier, Prècèdent, Suivant, Dernier
	    }
        int position = 0;
        private void Naviguer(Direction direction)
        {
            int dernierePosition = table.Rows.Count - 1;
            switch (direction)
            {
                case Direction.Premier:
                    position = 0;
                    break;
                case Direction.Prècèdent:
                    if (position > 0)
                        position--;
                    break;
                case Direction.Suivant:
                    if (position < dernierePosition)
                        position++;
                    break;
                case Direction.Dernier:
                    position = dernierePosition;
                    break;
                default:
                    break;
            }

            btn_premier.Enabled = (position != 0);
            btn_dernier.Enabled = (position != dernierePosition);
            btn_precedent.Enabled = (position > 0);
            btn_suivant.Enabled = (position < dernierePosition);

            num_num.Value = Convert.ToDecimal(table.Rows[position][0]);
            text_nom.Text = Convert.ToString(table.Rows[position][1]);
            datetime_dateAchat.Value = Convert.ToDateTime(table.Rows[position][2]);
            num_prix.Value = Convert.ToDecimal(table.Rows[position][3]);
            num_nbContrats.Value = Convert.ToDecimal(table.Rows[position][4]);
            combo_type.SelectedValue = Convert.ToString(table.Rows[position][5]);
            label_position.Text = (position + 1) + "/" + (dernierePosition + 1);
        }
        private void Naviguer(int index)
        {
            position = index;
            int dernierePosition = table.Rows.Count - 1;

            btn_premier.Enabled = (position != 0);
            btn_dernier.Enabled = (position != dernierePosition);
            btn_precedent.Enabled = (position > 0);
            btn_suivant.Enabled = (position < dernierePosition);

            num_num.Value = Convert.ToDecimal(table.Rows[position][0]);
            text_nom.Text = Convert.ToString(table.Rows[position][1]);
            datetime_dateAchat.Value = Convert.ToDateTime(table.Rows[position][2]);
            num_prix.Value = Convert.ToDecimal(table.Rows[position][3]);
            num_nbContrats.Value = Convert.ToDecimal(table.Rows[position][4]);
            combo_type.SelectedValue = Convert.ToString(table.Rows[position][5]);
            label_position.Text = (position + 1) + "/" + (dernierePosition + 1);
        }

        private void btn_dernier_Click(object sender, EventArgs e)
        {
            Naviguer(Direction.Dernier);
        }

        private void btn_suivant_Click(object sender, EventArgs e)
        {
            Naviguer(Direction.Suivant);
        }

        private void btn_precedent_Click(object sender, EventArgs e)
        {
            Naviguer(Direction.Prècèdent);
        }

        private void btn_premier_Click(object sender, EventArgs e)
        {
            Naviguer(Direction.Premier);
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            Naviguer(e.RowIndex);
        }

        private void actualiserToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Actualiser();
        }

        private void btn_ajouter_Click(object sender, EventArgs e)
        {
            if (ADO.GetTable("select * from Appareil where num_appareil = " + num_num.Value).Rows.Count != 0)
            {
                MessageBox.Show("Existe déjà !");
            }
            else
            {
                SqlCommand command = new SqlCommand(@"insert into Appareil values
                (@num_appareil, @nom_appareil, @date_achat, @prix_achat, default, @num_type)");
                command.Parameters.AddWithValue("num_appareil", num_num.Value);
                command.Parameters.AddWithValue("nom_appareil", text_nom.Text);
                command.Parameters.AddWithValue("date_achat", datetime_dateAchat.Value);
                command.Parameters.AddWithValue("prix_achat", num_prix.Value);
                command.Parameters.AddWithValue("num_type", combo_type.SelectedValue);
                if (ADO.ExecuteCommand(command) == 0)
                {
                    MessageBox.Show("Erreur !");
                }
                else
                {
                    Confirm();
                }
            }
        }

        private void btn_enregistrer_Click(object sender, EventArgs e)
        {
            if (ADO.GetTable("select * from Appareil where num_appareil = " + num_num.Value).Rows.Count == 0)
            {
                MessageBox.Show("N'existe pas !");
            }
            else
            {
                SqlCommand command = new SqlCommand(@"update Appareil set
                nom_appareil=@nom_appareil, date_achat=@date_achat, prix_achat=@prix_achat, nb_contrats=@nb_contrats, 
                num_type=@num_type where num_appareil=@num_appareil");
                command.Parameters.AddWithValue("num_appareil", num_num.Value);
                command.Parameters.AddWithValue("nom_appareil", text_nom.Text);
                command.Parameters.AddWithValue("date_achat", datetime_dateAchat.Value);
                command.Parameters.AddWithValue("prix_achat", num_prix.Value);
                command.Parameters.AddWithValue("nb_contrats", num_nbContrats.Value);
                command.Parameters.AddWithValue("num_type", combo_type.SelectedValue);
                if (ADO.ExecuteCommand(command) == 0)
                {
                    MessageBox.Show("Erreur !");
                }
                else
                {
                    Confirm();
                }
            }
        }

        private void btn_supprimer_Click(object sender, EventArgs e)
        {
            if (ADO.GetTable("select * from Appareil where num_appareil = " + num_num.Value).Rows.Count == 0)
            {
                MessageBox.Show("N'existe pas !");
            }
            else
            {
                DialogResult confirm = MessageBox.Show("Supprimer ?", "Confirmation", MessageBoxButtons.YesNo);
                if (confirm == DialogResult.Yes)
                {
                    SqlCommand command = new SqlCommand(@"delete Appareil where num_appareil=@num_appareil");
                    command.Parameters.AddWithValue("num_appareil", num_num.Value);
                    if (ADO.ExecuteCommand(command) == 0)
                    {
                        MessageBox.Show("Erreur !");
                    }
                    else
                    {
                        Confirm();
                    }
                }
            }
        }

        private void btn_fermer_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
