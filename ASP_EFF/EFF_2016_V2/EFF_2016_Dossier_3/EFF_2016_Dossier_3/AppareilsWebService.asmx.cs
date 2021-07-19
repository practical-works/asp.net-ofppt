using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;

namespace EFF_2016_Dossier_3
{
    /// <summary>
    /// Description résumée de AppareilsWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Pour autoriser l'appel de ce service Web depuis un script à l'aide d'ASP.NET AJAX, supprimez les marques de commentaire de la ligne suivante. 
    // [System.Web.Script.Services.ScriptService]
    public class AppareilsWebService : System.Web.Services.WebService
    {
        [WebMethod]
        public DataTable Nb_Appareils_Contrats(int num_type)
        {
            int nb_appareils = Convert.ToInt32(ADO.GetTable("select count(*) from Appareil where num_type = " + num_type).Rows[0][0]);
            int nb_contrats = Convert.ToInt32(ADO.GetTable(@"select count(*) from Contrat C
                    inner join Appareil A on C.num_appareil = A.num_appareil
                    where A.num_type = " + num_type).Rows[0][0]);
            DataTable table = new DataTable("Statistiques");
            table.Columns.Add("Nom");
            table.Columns.Add("Valeur");
            table.Rows.Add("NombreAppareils", nb_appareils);
            table.Rows.Add("NombreContrats", nb_contrats);
            return table;
        }
    }
}
