using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8
{
    public partial class Ex1 : System.Web.UI.Page
    {
        static SqlConnection connection = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ambratolm\Desktop\ASP_TP8\ASP_TP8\App_Data\gestionCmd.mdf;Integrated Security=True;User Instance=True");
        SqlCommand defaultCommand = new SqlCommand("select * from client", connection);

        protected void Page_Load(object sender, EventArgs e)
        {
            InitializeGrid();
        }

        protected void InitializeGrid()
        {
            if (connection.State != System.Data.ConnectionState.Open) connection.Open();
            GridView1.DataSource = defaultCommand.ExecuteReader();
            GridView1.DataBind();
            if (connection.State != System.Data.ConnectionState.Closed) connection.Close();
        }
        protected void InitializeGrid(SqlCommand selectCommand)
        {
            if (connection.State != System.Data.ConnectionState.Open) connection.Open();
            GridView1.DataSource = selectCommand.ExecuteReader();
            GridView1.DataBind();
            if (connection.State != System.Data.ConnectionState.Closed) connection.Close();
        }

        protected void btn_rechercher_Click(object sender, EventArgs e)
        {
            if (txt_filter.Text.Trim() != "")
            {
                // Command
                SqlCommand command = new SqlCommand("select * from client where nom+prenom+adresse+ville like @keyword", connection);
                command.Parameters.Add("keyword", System.Data.SqlDbType.VarChar).Value = "%"+txt_filter.Text+"%";
                // Execute & Refresh
                InitializeGrid(command);
            }
            else
            {
                InitializeGrid();
            }
            
            
        }

        protected void btn_ajouter_Click(object sender, EventArgs e)
        {
            lbl_error.Text = "";

            // Command
            SqlCommand command = new SqlCommand("insert into client values (@nom, @prenom, @adresse, @ville)", connection);
            command.Parameters.Add("nom", System.Data.SqlDbType.VarChar).Value = txt_nom.Text;
            command.Parameters.Add("prenom", System.Data.SqlDbType.VarChar).Value = txt_prenom.Text;
            command.Parameters.Add("adresse", System.Data.SqlDbType.VarChar).Value = txt_adresse.Text;
            command.Parameters.Add("ville", System.Data.SqlDbType.VarChar).Value = txt_ville.Text;

            // Execute
            connection.Open();
            if (command.ExecuteNonQuery() == 0)
                lbl_error.Text = "L'enregistrement à ajouter existe déjà";
            connection.Close();

            // Refresh
            InitializeGrid();
        }

        protected void btn_modifier_Click(object sender, EventArgs e)
        {
            lbl_error.Text = "";

            if (txt_id.Text.Trim() != "")
            {
                // Command
                SqlCommand command = new SqlCommand("update client set nom=@nom, prenom=@prenom, adresse=@adresse, ville=@ville where id=@id", connection);
                command.Parameters.Add("id", System.Data.SqlDbType.VarChar).Value = txt_id.Text;
                command.Parameters.Add("nom", System.Data.SqlDbType.VarChar).Value = txt_nom.Text;
                command.Parameters.Add("prenom", System.Data.SqlDbType.VarChar).Value = txt_prenom.Text;
                command.Parameters.Add("adresse", System.Data.SqlDbType.VarChar).Value = txt_adresse.Text;
                command.Parameters.Add("ville", System.Data.SqlDbType.VarChar).Value = txt_ville.Text;

                // Execute
                connection.Open();
                if (command.ExecuteNonQuery() == 0)
                    lbl_error.Text = "L'enregistrement à modifier n'existe pas";
                connection.Close();

                // Refresh
                InitializeGrid();
            }
            else
            {
                lbl_error.Text = "Veuillez indiquer l'enregistrement à modifier";
            }
        }

        protected void btn_supprimer_Click(object sender, EventArgs e)
        {
            lbl_error.Text = "";

            if (txt_id.Text.Trim() != "")
            {
                // Command
                SqlCommand command = new SqlCommand("delete from client where id=@id", connection);
                command.Parameters.Add("id", System.Data.SqlDbType.VarChar).Value = txt_id.Text;
            
                // Execute
                connection.Open();
                if (command.ExecuteNonQuery() == 0)
                    lbl_error.Text = "L'enregistrement à supprimer n'existe pas";
                connection.Close();

                // Refresh
                InitializeGrid();
            }
            else
            {
                lbl_error.Text = "Veuillez indiquer l'enregistrement à supprimer";
            }
        }

        protected void btn_id_Click(object sender, EventArgs e)
        {
            lbl_error.Text = "";

            if (txt_id.Text.Trim() != "")
            {
                // Command
                SqlCommand command = new SqlCommand("select * from client where id=@id", connection);
                command.Parameters.Add("id", System.Data.SqlDbType.VarChar).Value = txt_id.Text;

                // Execute
                connection.Open();
                SqlDataReader client = command.ExecuteReader();    

                // Show
                if (client.Read())
                {
                    txt_nom.Text = client["nom"].ToString();
                    txt_prenom.Text = client["prenom"].ToString();
                    txt_adresse.Text = client["adresse"].ToString();
                    txt_ville.Text = client["ville"].ToString();
                    client.Close();
                }
                else
                {
                    lbl_error.Text = "L'enregistrement est introuvable";
                }
                connection.Close();
            }
            else
            {
                lbl_error.Text = "Veuillez indiquer l'enregistrement à afficher";
            }
        }
    }
}