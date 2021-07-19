using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8.Ex2
{
    public partial class _test : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=.\AMBRATOLM_SQL;Initial Catalog=ASP_Ex2;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Add("-- Choisir table --");
                
                connection.Open();
                SqlCommand command = new SqlCommand("SELECT name FROM sys.tables", connection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                    DropDownList1.Items.Add(reader.GetString(0));
                connection.Close();
                
                DropDownList1.Items.Add(new ListItem("Contenir (Jointure)", "contenir2"));
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("", connection);
            switch (DropDownList1.SelectedValue.ToString().ToLower())
            {
                case "client":
                    command.CommandText = "select * from client";
                    break;
                case "commande":
                    command.CommandText = "select * from commande";
                    break;
                case "article":
                    command.CommandText = "select * from article";
                    break;
                case "contenir":
                    command.CommandText = "select * from contenir";
                    break;
                case "admin":
                    command.CommandText = "select * from admin";
                    break;
                case "contenir2":
                    command.CommandText = @"select commande.numcmd as [Commande], 
                    designation as [Produit], pu as [Prix unitaire], 
                    quantite as [Quantité commandée], pu*quantite as [Montant total]
                    from contenir 
                    inner join commande on contenir.numcmd = commande.numcmd
                    inner join article on contenir.numarticle = article.numarticle";
                    break;
                default:
                    break;
            }
            if (command.CommandText != "")
            {
                connection.Open();
                GridView1.DataSource = command.ExecuteReader();
                GridView1.DataBind();
                connection.Close();
            }
            else
            {
                connection.Open();
                GridView1.DataSource = null;
                GridView1.DataBind();
                connection.Close();
            }
        }
    }
}