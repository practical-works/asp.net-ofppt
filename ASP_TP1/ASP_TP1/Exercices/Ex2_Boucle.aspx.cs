using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exercices_Ex2_Boucle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < 10; i++)
        {
            //Literal1.Text += string.Format("<p style='font-size:{0}px'>Page dynamique en  ASP.NET</p>", i+8);
            Label Label1 = new Label();
            Label1.Text = "Page dynamique en  ASP.NET <br>";
            Label1.Font.Size = i + 8;
            Controls.Add(Label1);
        }
    }
}