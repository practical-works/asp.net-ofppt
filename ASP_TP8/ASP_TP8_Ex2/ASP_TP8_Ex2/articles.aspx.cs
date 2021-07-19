using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8_Ex2
{
    public partial class articles : System.Web.UI.Page
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
            SqlDataReader reader = ADO.GetReader("select distinct catégorie from article");
            while (reader.Read())
                DropDownList1.Items.Add(reader[0].ToString());
            ADO.Disconnect();
        }

        protected int ShowItems(string category)
        {
            string commandText = "select * from article";
            if (category != "all")
                commandText += string.Format(" where catégorie = '{0}'", category);

            SqlDataReader reader = ADO.GetReader(commandText);

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
                    </div>          
                ", reader["Designation"], reader["catégorie"], reader["Pu"], reader["NumArticle"]);
                // <a class='item_buy' href='../account/order.aspx?item={3}'>Commander</a>
            }
            ADO.Disconnect();
            return rowsCount;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string category = DropDownList1.SelectedValue.ToString();
            int itemsCount = ShowItems(category);

            title.InnerHtml = string.Format("Articles <br> Tous les produits ({0})", itemsCount);
            if (category != "all")
                title.InnerHtml = string.Format("Articles <br> {0} ({1})", category, itemsCount);
        }
    }
}