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
    public partial class Form_ReportViewer : Form
    {
        public Form_ReportViewer()
        {
            InitializeComponent();
        }

        public Form_ReportViewer(object report) : this()
        {
            crystalReportViewer1.ReportSource = report;
            crystalReportViewer1.Refresh();
        }
    }
}
