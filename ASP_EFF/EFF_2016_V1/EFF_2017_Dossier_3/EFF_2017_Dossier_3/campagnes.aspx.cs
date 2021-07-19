using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EFF_2017_Dossier_3
{
    public partial class campagnes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Add("-- Tous --");
                DataTable tableCategorie = ADO.GetTable("select * from Categorie");
                foreach (DataRow row in tableCategorie.Rows)
                {
                    string nomCategorie = row["nomCategorie"].ToString();
                    string idCategorie = row["idCategorie"].ToString();
                    DropDownList1.Items.Add(new ListItem(nomCategorie, idCategorie));
                }

                FillGridView();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillGridView();
        }

        protected void FillGridView()
        {
            string commandText = "";
            if (DropDownList1.SelectedIndex == 0)
            {
                commandText = @"select 
	                            C.idCamp as [ID], 
	                            nomCamp as [Nom], 
	                            sum(montantPart) as [Montant total obtenu], 
	                            nomBeneficiere+' '+prenBeneficiere as [Bénéficière]
                            from Campagne C inner join Participation P
                            on C.idCamp = P.idCamp
                            where dateFin > getdate()
                            group by C.idCamp, nomCamp, nomBeneficiere, prenBeneficiere";
            }
            else
            {
                commandText = string.Format(@"select 
	                            C.idCamp as [ID], 
	                            nomCamp as [Nom], 
	                            sum(montantPart) as [Montant total obtenu], 
	                            nomBeneficiere+' '+prenBeneficiere as [Bénéficière]
                            from Campagne C inner join Participation P
                            on C.idCamp = P.idCamp
                            where idCategorie = {0} and dateFin > getdate()
                            group by C.idCamp, nomCamp, nomBeneficiere, prenBeneficiere",
                            DropDownList1.SelectedValue);
            }
            GridView1.DataSource = ADO.GetTable(commandText);
            GridView1.DataBind();
        }
    }
}