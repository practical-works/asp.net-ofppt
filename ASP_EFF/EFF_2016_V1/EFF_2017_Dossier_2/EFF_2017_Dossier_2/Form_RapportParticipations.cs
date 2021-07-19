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
    public partial class Form_RapportParticipations : Form
    {
        public Form_RapportParticipations()
        {
            InitializeComponent();
        }

        private void Form_RapportParticipations_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = ADO.GetTable("select * from Campagne");
            comboBox1.DisplayMember = "nomCamp";
            comboBox1.ValueMember = "idCamp";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            CrystalReport_RapportParticipations rapport = new CrystalReport_RapportParticipations();
            rapport.SetParameterValue("idCamp", comboBox1.SelectedValue);
            Form_ReportViewer reportViewer = new Form_ReportViewer(rapport);
            reportViewer.MdiParent = Form_Menu.ActiveForm;
            reportViewer.Show();
            Close();
        }
    }
}
