using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace EFF_2017_Dossier_2
{
    public partial class Form_ConsultationCompagnes : Form
    {
        public Form_ConsultationCompagnes()
        {
            InitializeComponent();
        }

        private void Form_ConsultationCompagnes_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = ADO.GetTable("select * from Categorie");
            comboBox1.DisplayMember = "nomCategorie";
            comboBox1.ValueMember = "idCategorie";

            //Actualiser();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void Actualiser()
        {
            dataGridView1.DataSource = ADO.GetTable(@"
                select nomCamp as [Nom], 
                       count(*) as [Nombre de participations],
                       datediff(day, getdate(), dateFin) as [Jours restants avant la fin]
                from Campagne C inner join Participation P
                on c.idCamp = P.idCamp
                group by nomCamp, dateFin");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = ADO.GetTable(string.Format(@"
                select nomCamp as [Nom], 
                       count(*) as [Nombre de participations],
                       datediff(day, getdate(), dateFin) as [Jours restants avant la fin]
                from Campagne C inner join Participation P
                on c.idCamp = P.idCamp
                where idCategorie = {0}
                group by nomCamp, dateFin", comboBox1.SelectedValue));
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Actualiser();
        }
    }
}
