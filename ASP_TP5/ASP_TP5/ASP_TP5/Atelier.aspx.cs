using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace ASP_TP5
{
    public partial class Atelier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button5.BackColor = Color.DarkGreen;
                Button5.ForeColor = Color.Green;
                ViewState.Add("on", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["nom"].Value = TextBox1.Text;
            Response.Cookies["prenom"].Value = TextBox2.Text;
            Response.Cookies["nom"].Expires = DateTime.Now.AddHours(1);
            Response.Cookies["prenom"].Expires = DateTime.Now.AddHours(1);
            Response.Redirect("Atelier2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string url = string.Format("Atelier2.aspx?nom={0}&prenom={1}", TextBox1.Text, TextBox2.Text);
            Response.Redirect(url);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string url = "Atelier2.aspx";
            Server.Transfer(url);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            bool on = (bool)ViewState["on"];
            ViewState["on"] = on = !on;

            if (on)
            {
                Button5.Text = "ON";
                Button5.BackColor = Color.DarkGreen;
                Button5.ForeColor = Color.Green;
            }
            else
            {
                Button5.Text = "OFF";
                Button5.BackColor = Color.DarkRed;
                Button5.ForeColor = Color.Red;
            }
        }
    }
}