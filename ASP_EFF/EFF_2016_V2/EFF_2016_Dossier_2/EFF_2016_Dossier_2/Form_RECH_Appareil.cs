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
    public partial class Form_RECH_Appareil : Form
    {
        int num_appareil = 0;

        public Form_RECH_Appareil()
        {
            InitializeComponent();
        }

        private void Form_RECH_Appareil_Load(object sender, EventArgs e)
        {
            label_resultat.Text = "";
            groupBox_appareil.Enabled = btn_etat.Enabled = false;

            combo_type.DataSource = ADO.GetTable("select * from Type_app");
            combo_type.ValueMember = "num_type";
            combo_type.DisplayMember = "nom_type";
        }

        private void btn_rechercher_Click(object sender, EventArgs e)
        {
            groupBox_appareil.Enabled = btn_etat.Enabled = false;
            if (!int.TryParse(txt_numero.Text, out num_appareil))
            {
                label_resultat.Text = "Saisie invalide !";
            }
            else
            {
                DataTable table = ADO.GetTable("select * from Appareil where num_appareil = " + num_appareil);
                if (table.Rows.Count == 0)
                {
                    label_resultat.Text = "Aucun résultat !";
                }
                else
                {
                    groupBox_appareil.Enabled = btn_etat.Enabled = true;
                    label_resultat.Text = "Appareil " + table.Rows[0]["nom_appareil"].ToString() + " trouvé.";
                    
                    num_num.Value = Convert.ToDecimal(table.Rows[0][0]);
                    text_nom.Text = Convert.ToString(table.Rows[0][1]);
                    datetime_dateAchat.Value = Convert.ToDateTime(table.Rows[0][2]);
                    num_prix.Value = Convert.ToDecimal(table.Rows[0][3]);
                    num_nbContrats.Value = Convert.ToDecimal(table.Rows[0][4]);
                    combo_type.SelectedValue = Convert.ToString(table.Rows[0][5]);

                    dataGridView1.DataSource = ADO.GetTable("select * from Contrat where num_appareil = " + num_appareil);

                    label_nbContrats.Text = ADO.GetValue("select count(*) from Contrat where num_appareil = " + num_appareil);
                    label_nbClients.Text = ADO.GetValue(@"select count(distinct C.num_client) from Client Cli
                                                            inner join Contrat C on C.num_client = Cli.num_client
                                                            where num_appareil = " + num_appareil);
                    label_chiffreAffaire.Text = ADO.GetValue(@"select sum(dbo.montantTotalContrat(num_police)) from Appareil A
                                                        inner join Contrat C on c.num_appareil = A.num_appareil
                                                        where A.num_appareil = " + num_appareil) + " DH";
                }
            }
        }

        private void Confirm()
        {
            SoundPlayer sfx = new SoundPlayer(Properties.Resources.confirm);
            sfx.Play();
        }

        private void btn_enregistrer_Click(object sender, EventArgs e)
        {
            if (num_num.Value <= 0)
            {
                MessageBox.Show("Il faut rechercher d'abord un appareil.");
            }
            else
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
        }

        private void btn_etat_Click(object sender, EventArgs e)
        {
            CrystalReport1 report = new CrystalReport1();
            report.SetParameterValue("num_appareil", num_appareil);
            Form_ReportViewer reportViewer = new Form_ReportViewer(report);
            reportViewer.Show();
        }

    }
}
