using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8
{
    public partial class Atelier : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ambratolm\Desktop\ASP_TP8\ASP_TP8\App_Data\gestionCmd.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand command = new SqlCommand("select distinct ville from client", connection);
                connection.Open();
                DropDownList1.DataSource = command.ExecuteReader();
                DropDownList1.DataTextField = "ville";
                DropDownList1.DataBind();
                connection.Close();
                DropDownList1.Items.Insert(0, "--Sélectionner une ville--");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("select * from client", connection);
            connection.Open();
            GridView1.DataSource = command.ExecuteReader();
            GridView1.DataBind();
            connection.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string commandText = string.Format("select * from client where ville='{0}'",
                DropDownList1.SelectedItem.Text);
            SqlCommand command = new SqlCommand(commandText, connection);
            connection.Open();
            GridView1.DataSource = command.ExecuteReader();
            GridView1.DataBind();
            connection.Close();
        }
    }
}