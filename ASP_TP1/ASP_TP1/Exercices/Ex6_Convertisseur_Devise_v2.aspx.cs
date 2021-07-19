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
        DropDownList1.AutoPostBack = true;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex != 0)
        {
            double somme = 0;
            if (double.TryParse(txtDollards.Text.Trim(), out somme))
            {
                if (DropDownList1.SelectedValue == "Euro")
                    lblDollarsEnDevise.Text = (somme * 0.91534).ToString() + " Euros";
                else if (DropDownList1.SelectedValue == "Yen Japonais")
                    lblDollarsEnDevise.Text = (somme * 119.792).ToString() + " Yen Japonais";
                else if (DropDownList1.SelectedValue == "Dollars Canadien")
                    lblDollarsEnDevise.Text = (somme * 1.40515).ToString() + " Dollars Canadien";
                else
                    lblDollarsEnDevise.Text = "Choisissez une device !";
            }
            else
                lblDollarsEnDevise.Text = "Entrez une somme valide !";
        }
        else
            lblDollarsEnDevise.Text = "";
    }
}