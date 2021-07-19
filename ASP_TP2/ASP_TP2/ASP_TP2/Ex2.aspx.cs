using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_TP2
{
    public partial class Ex2 : System.Web.UI.Page
    {
        private struct Match
        {
            public string Titre;
            public DateTime Date;
        }
        private Match[] matchs = new Match[5];

        public Ex2()
        {
            matchs[0] = new Match { Titre = "A - B", Date = new DateTime(2016, 1, 1) };
            matchs[1] = new Match { Titre = "C - D", Date = new DateTime(2016, 1, 2) };
            matchs[2] = new Match { Titre = "E - F", Date = new DateTime(2016, 1, 9) };
            matchs[3] = new Match { Titre = "G - H", Date = new DateTime(2016, 1, 1) };
            matchs[4] = new Match { Titre = "I - J", Date = new DateTime(2016, 1, 9) };            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listMatch.Items.Clear();
                listMatch.Items.Add("-- Sélectionnez un match --");
                foreach (Match item in matchs)
                    listMatch.Items.Add(item.Titre);
            }
            Label_infos.Text = "Auhourd'hui est le " + DateTime.Today.ToShortDateString();
        }

        protected void listMatch_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMatchs.Text = "";
            if (listMatch.SelectedIndex <= 0)
            {
                calDate.Visible = false;
            }
            else
            {
                calDate.Visible = true;
                int index = listMatch.SelectedIndex;
                string titreMatch = matchs[index-1].Titre;
                DateTime dateMatch = matchs[index-1].Date;
                calDate.SelectedDate = dateMatch;
                calDate.VisibleDate = dateMatch;
                lblMatchs.Text = "Match: " + titreMatch + "<br>Le: " + dateMatch.ToShortDateString();
            }
        }

        protected void calDate_SelectionChanged(object sender, EventArgs e)
        {
            string titresMatchs = "";

            // Rechercher par date dans le tableau des matchs
            foreach (Match match in matchs)
                if (match.Date == calDate.SelectedDate)
                    titresMatchs += "- " + match.Titre + "<br>";
            
            if (titresMatchs == "")
                lblMatchs.Text = "Aucun match programmé pour cette date";
            else
                lblMatchs.Text = "Matchs programmés le " + calDate.SelectedDate.ToShortDateString()
                    + " :<br>" + titresMatchs;
        }
    }
}