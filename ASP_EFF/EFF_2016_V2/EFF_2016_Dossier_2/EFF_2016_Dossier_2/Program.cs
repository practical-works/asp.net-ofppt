using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace EFF_2016_Dossier_2
{
    static class Program
    {
        /// <summary>
        /// Point d'entrée principal de l'application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form_Menu());
        }
    }
}
