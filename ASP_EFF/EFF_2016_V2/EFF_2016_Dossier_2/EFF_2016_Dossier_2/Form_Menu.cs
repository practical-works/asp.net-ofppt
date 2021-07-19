using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace EFF_2016_Dossier_2
{
    public partial class Form_Menu : Form
    {
        public Form_Menu()
        {
            InitializeComponent();
            this.StartPosition = FormStartPosition.CenterScreen;
        }

        public void FormOpen(Form form)
        {
            form.MdiParent = this;
            form.StartPosition = FormStartPosition.CenterParent;
            form.Show();
        }

        private void miseÀJourDesAppareilToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormOpen(new Form_MAJ_Appareil());
        }

        private void rechercheDesAppareilsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormOpen(new Form_RECH_Appareil());
        }
    }
}
