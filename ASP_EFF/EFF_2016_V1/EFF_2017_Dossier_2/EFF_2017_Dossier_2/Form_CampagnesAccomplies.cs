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
    public partial class Form_CampagnesAccomplies : Form
    {
        public Form_CampagnesAccomplies()
        {
            InitializeComponent();
        }

        private void Form_CampagnesAccomplies_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = ADO.GetTable(@"
                select nomCamp as [Nom],
	           dateCreation as [Date de création],
	           montantCamp as [Montant de la compagne],
	           sum(montantPart) as [Montant total des participations],
	           count(distinct idP) as [Nombre de participants]
                    from Campagne C inner join Participation P
                on C.idCamp = P.idCamp
                where 2017 >= year(dateCreation) and 2017 <= year(dateFin)
                group by nomCamp, dateCreation, montantCamp
                having sum(montantPart) >= montantCamp");
        }
    }
}
