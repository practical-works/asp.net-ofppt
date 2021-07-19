using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TP8_Ex2.account
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!Authentication.LoginCookiesExistsAndStatusIn(Page) &&
                    !Authentication.LoginSessionExists(Page))
                {
                    Response.Redirect("login.aspx?error=cart");
                }

                FillOrdersList();
                ListBox1.SelectedIndex = 0;
                ShowOrderItems(Convert.ToInt32(ListBox1.SelectedValue));
            }
        }

        protected void FillOrdersList()
        {
            string id = "";

            if (Authentication.LoginCookiesExistsAndStatusIn(Page))
            {
                id = Request.Cookies["login"]["id"];
            }
            else if (Authentication.LoginSessionExists(Page))
            {
                id = Session["id"].ToString();
            }

            if (id != "")
            {
                SqlDataReader reader = ADO.GetReader(
                "select * from Commande where NumClient=" + id);
                int ordersCount = 0;
                while (reader.Read())
                {
                    ordersCount++;
                    DateTime date = Convert.ToDateTime(reader[2].ToString());
                    string text = "Commande N°" + reader[0].ToString() + " passée le " + date.ToShortDateString();
                    string value = reader[0].ToString();
                    ListBox1.Items.Add(new ListItem(text, value));
                }
                ADO.Disconnect();
                OrdersTitle.InnerText = string.Format("Commandes ({0})", ordersCount);
            }
        }

        protected int ShowOrderItems(int orderID)
        {
            int rowsCount = 0;
            Literal1.Text = "";
            if (orderID >= 0)
            {
                string commandText = string.Format(
                @"select * from Article where NumArticle in
                    (select NumArticle from Contenir where NumCmd={0})", orderID);
                SqlCommand command = new SqlCommand(commandText, ADO.Connection);

                SqlDataReader reader = ADO.GetReader(commandText);

                while (reader.Read())
                {
                    rowsCount++;
                    Literal1.Text += string.Format(@"
                        <span class='item_bloc min'>
                            <b class='item_name'>{0}</b> <br> 
                            <i class='item_category'>{1}</i> <br>
                            <span class='item_price'>{2} DH</span>
                        </span>          
                    ", reader["Designation"], reader["catégorie"], reader["Pu"]);
                }
                ADO.Disconnect();
            }
            OrderItemsTitle.InnerHtml = string.Format("Articles de la commande ({0})", rowsCount);
            if (orderID >= 0)
                OrderItemsTitle.InnerHtml =
                    string.Format("Commande N°{0} <br>Articles de la commande ({1})"
                    , orderID, rowsCount);
            return rowsCount;
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int orderID = Convert.ToInt32(ListBox1.SelectedValue);
            ShowOrderItems(orderID);
        }
    }
}