using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;

namespace ASP_EFM_2017
{
    /// <summary>
    /// Description résumée de WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Pour autoriser l'appel de ce service Web depuis un script à l'aide d'ASP.NET AJAX, supprimez les marques de commentaire de la ligne suivante. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public DataTable ReservationsEntreDeuxDates(DateTime date1, DateTime date2)
        {
            string commandText = string.Format(@"select * from Reservation 
                    where datedepart = '{0}' and datearrivee = '{1}'", 
                    date1.ToShortDateString(), date2.ToShortDateString());
            return ADO.GetTable(commandText);
        }
    }
}
