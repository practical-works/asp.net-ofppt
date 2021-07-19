using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASP_TP9
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Application.Lock();
                Application["views"] = (int)Application["views"] + 1;
                Application.UnLock();
                Label_viewCount.Text = Application["views"].ToString();

                if (Session["username"] != null && Session["role"] == null)
                {
                    FillUserData(Session["username"].ToString());
                }
                else if (Session["role"] != null)
                {
                    Response.Redirect("cpanel.aspx");
                }
            }
        }

        private void FillUserData(string username)
        {
            string assurésCommandText = string.Format("select * from Assuré where matricule = '{0}'", username);
            DataTable assurés = ADO.GetTable(assurésCommandText);
            Label1.Text = assurés.Rows[0][1].ToString();
            Label2.Text = assurés.Rows[0][2].ToString();
            Label3.Text = ((DateTime)assurés.Rows[0][3]).ToLongDateString();
            Label4.Text = assurés.Rows[0][4].ToString();
            Label5.Text = assurés.Rows[0][5].ToString();
            Label6.Text = assurés.Rows[0][7].ToString() + " DH";
            Label7.Text = (assurés.Rows[0][8].ToString() == "") ?
                "(Vivant xD)" : ((DateTime)assurés.Rows[0][8]).ToLongDateString();

            string entreprisesCommandText = string.Format("select * from Entreprise where num_entreprise = '{0}'",
                assurés.Rows[0]["num_entreprise"].ToString());
            DataTable entreprises = ADO.GetTable(entreprisesCommandText);
            Label8.Text = entreprises.Rows[0][1].ToString();
            Label9.Text = entreprises.Rows[0][2].ToString();
            Label10.Text = entreprises.Rows[0][3].ToString();
            Label11.Text = entreprises.Rows[0][4].ToString();
            Label12.Text = entreprises.Rows[0][5].ToString();
        }
    }
}