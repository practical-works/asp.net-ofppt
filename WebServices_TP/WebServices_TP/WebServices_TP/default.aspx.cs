using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebServices_TP
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Literal1.Text = @"<table><tr><td>Level</td><td>XP</td></tr>";
            for (int i = 0; i < 30; i++)
            {
                Literal1.Text += string.Format("<tr><td>{0}</td><td>{1}</td></tr>", i, GetXP(i).ToString());
            }
            Literal1.Text += "<table>";
        }

        protected void btn_adjust_Click(object sender, EventArgs e)
        {
            int lvl = Convert.ToInt32(txt_level.Text);
            txt_xp.Text = GetXP(lvl).ToString();
        }

        protected int GetXP(int lvl)
        {
            return (int)(lvl*Math.Exp(lvl));
        }
    }
}