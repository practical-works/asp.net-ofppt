using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exercices_Ex3_Calcul__prix_TTC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label_error.Text = "";
        double prix_unitaire = 0;
        int quantite = 0;
        double tva = 0;
        if (TextBox_nom.Text.Trim() == "" || TextBox_prix_unitaire.Text.Trim() == "" ||
            TextBox_quantite.Text.Trim() == "" || TextBox_tva.Text.Trim() == "")
        {
            Label_error.Text = "Veuillez remplir les champs.";
        }
        else if (!double.TryParse(TextBox_prix_unitaire.Text.Trim(), out prix_unitaire) ||
                !int.TryParse(TextBox_quantite.Text.Trim(), out quantite) ||
                !double.TryParse(TextBox_tva.Text.Trim(), out tva))
        {
            Label_error.Text = "Veuillez saisir des données valides.";
        }
        else
        {
            Label_error.Text = "";
            double montant = prix_unitaire * quantite;
            Label_montant_ht.Text = montant.ToString() + " DH";
            Label_montant_ttc.Text = (montant + (montant * tva / 100)).ToString() + " DH";
        }
    }
}