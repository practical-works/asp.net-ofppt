using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exercices_Ex6_Convertisseur_Devise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnConvertir_Click(object sender, EventArgs e)
    {
        double somme = 0;
        lblDollarsEnDevise.Text = "";
        if (double.TryParse(txtDollards.Text.Trim(), out somme))
        {
            if (cbEuro.Checked)
                lblDollarsEnDevise.Text += (somme * 0.91534).ToString() + " Euros<br>";
            if (cbYen.Checked)
                lblDollarsEnDevise.Text += (somme * 119.792).ToString() + " Yen Japonais<br>";
            if (cbCanad.Checked)
                lblDollarsEnDevise.Text += (somme * 1.40515).ToString() + " Dollars Canadien<br>";
        }
        else
            lblDollarsEnDevise.Text = "Entrez une somme valide !";
    }
}