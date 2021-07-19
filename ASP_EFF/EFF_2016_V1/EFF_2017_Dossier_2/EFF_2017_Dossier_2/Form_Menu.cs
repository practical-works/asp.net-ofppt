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
    public partial class Form_Menu : Form
    {
        public Form_Menu()
        {
            InitializeComponent();
        }

        private void organisateursToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form_Organisateurs form = new Form_Organisateurs();
            form.MdiParent = this;
            form.Show();
        }

        private void consultationCampagnesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form_ConsultationCompagnes form = new Form_ConsultationCompagnes();
            form.MdiParent = this;
            form.Show();
        }

        private void campagnesRéussToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form_CampagnesAccomplies form = new Form_CampagnesAccomplies();
            form.MdiParent = this;
            form.Show();
        }

        private void participationsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form_Participations form = new Form_Participations();
            form.MdiParent = this;
            form.Show();
        }

        private void rapportDesParticipationsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form_RapportParticipations form = new Form_RapportParticipations();
            form.MdiParent = this;
            form.Show();
        }

        private void graphiqueDesParticipationsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CrystalReport_GraphiqueParticipations graph = new CrystalReport_GraphiqueParticipations();
            Form_ReportViewer form = new Form_ReportViewer(graph);
            form.MdiParent = this;
            form.Show();
        }
    }
}
