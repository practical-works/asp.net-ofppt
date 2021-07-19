using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace EFF_2017_Dossier_2
{
    public partial class Form_Participations : Form
    {
        public Form_Participations()
        {
            InitializeComponent();
        }

        private void Form_Participations_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = ADO.GetTable("select * from Campagne");
            comboBox1.DisplayMember = "nomCamp";
            comboBox1.ValueMember = "idCamp";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("sp_participations", ADO.connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("idCamp", comboBox1.SelectedValue);
            command.Parameters["idCamp"].Direction = ParameterDirection.Input;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            dataGridView1.DataSource = table;
        }
    }
}
