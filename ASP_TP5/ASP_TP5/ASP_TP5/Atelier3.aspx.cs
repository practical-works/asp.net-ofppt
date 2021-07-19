using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace ASP_TP5
{
    public partial class Atelier3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Color[] colors = { 
                                     Color.Red, 
                                     Color.Blue, 
                                     Color.Green 
                                 };
                DropDownList_backColor.Items.Clear();
                DropDownList_backColor.Items.Add("Choose a background color");
                foreach (Color color in colors)
                    DropDownList_backColor.Items.Add(color.Name);

                if (Request.Cookies["pageColor"] != null)
                {
                    body1.Style.Value = "background-color:" + Request.Cookies["pageColor"].Value;
                    DropDownList_backColor.SelectedValue = Request.Cookies["pageColor"].Value;
                }
                    
                if (Request.Cookies["memo"] != null)
                    TextBox_memo.Text = Request.Cookies["memo"].Value;
            }
        }

        protected void DropDownList_backColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList_backColor.SelectedIndex == 0)
            {
                body1.Style.Value = "background-color:" + Color.White;
                Response.Cookies["pageColor"].Value = Color.White.Name;
                Response.Cookies["pageColor"].Expires = DateTime.Now.AddHours(1);
            }
            else
            {
                string colorName = DropDownList_backColor.SelectedItem.ToString();
                body1.Style.Value = "background-color:" + Color.FromName(colorName).Name;
                Response.Cookies["pageColor"].Value = colorName;
                Response.Cookies["pageColor"].Expires = DateTime.Now.AddHours(1);
            }
        }

        protected void TextBox_memo_TextChanged(object sender, EventArgs e)
        {
            Response.Cookies["memo"].Value = TextBox_memo.Text;
        }
    }
}