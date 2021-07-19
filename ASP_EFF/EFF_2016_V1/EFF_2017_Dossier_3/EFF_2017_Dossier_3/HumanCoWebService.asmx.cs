using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace EFF_2017_Dossier_3
{
    /// <summary>
    /// Description résumée de HumanCoWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Pour autoriser l'appel de ce service Web depuis un script à l'aide d'ASP.NET AJAX, supprimez les marques de commentaire de la ligne suivante. 
    // [System.Web.Script.Services.ScriptService]
    public class HumanCoWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public int NombreParticipantsCampagne(int idCamp)
        {
            return Convert.ToInt32(ADO.GetTable(@"select count(distinct idP) 
                                    from Participation
                                    where idCamp = " + idCamp).Rows[0][0]);
        }
    }
}
