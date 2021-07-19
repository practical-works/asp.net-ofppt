using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exercices_Ex4_Acces_Mot_Passe : System.Web.UI.Page
{
    private const string username = "user";
    private const string password = "user";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox_username.Text.Trim() == "" && TextBox_password.Text == "")
        {
            Label_result.ForeColor = System.Drawing.Color.Black;
            Label_result.Text = "Les champs ne doivent pas être vide.";
        } 
        else if (TextBox_username.Text.Trim() != username && TextBox_password.Text != password)
        {
            Label_result.ForeColor = System.Drawing.Color.Red;
            Label_result.Text = "Erreur! Mot de passe incorrect x_x";
        }
        else
        {
            TextBox_username.Enabled = TextBox_password.Enabled = Button1.Enabled = false;
            Label_result.ForeColor = System.Drawing.Color.Green;
            Label_result.Text = "Bienvenue ^_^";
        }
    }
}