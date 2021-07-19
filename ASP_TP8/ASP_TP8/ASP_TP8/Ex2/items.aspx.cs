using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8.Ex2
{
    public partial class items : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillCategoriesList();
                ShowItems("all");
            }
        }

        protected void FillCategoriesList()
        {
            DropDownList1.Items.Add(new ListItem("(Tous les articles)", "all"));
            SqlCommand command = new SqlCommand("select distinct catégorie from article", Global.Connection);
            
            Global.Connection.Open();
            SqlDataReader reader = command.ExecuteReader();            
            while (reader.Read())
                DropDownList1.Items.Add(reader[0].ToString());
            reader.Close();
            Global.Connection.Close();
        }

        protected int ShowItems(string category)
        {
            SqlCommand command = new SqlCommand("select * from article", Global.Connection);
            if (category != "all")
                command.CommandText += string.Format(" where catégorie = '{0}'", category);

            Global.Connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            int rowsCount = 0;
            Literal1.Text = "";
            while (reader.Read())
            {
                rowsCount++;
                Literal1.Text += string.Format(@"
                    <div class='item_bloc'>
                        <h2 class='item_name'>{0}</h2>
                        <h3 class='item_category'>{1}</h3>
                        <h4 class='item_price'>{2} DH</h4>
                        <a class='item_buy' href=''>Commander</a>
                        <br><br>
                    </div>          
                ", reader["Designation"], reader["catégorie"], reader["Pu"]);
            }
            reader.Close();
            Global.Connection.Close();
            return rowsCount;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string category = DropDownList1.SelectedValue.ToString();
            int itemsCount = ShowItems(category);

            titre.InnerHtml = string.Format("Articles <br> Tous les produits ({0})", itemsCount);
            if (category != "all")
                titre.InnerHtml = string.Format("Articles <br> {0} ({1})", category, itemsCount);
        }
    }
}