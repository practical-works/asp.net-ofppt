using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebServices_TP
{
    /// <summary>
    /// Description résumée de WebService_Example
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Pour autoriser l'appel de ce service Web depuis un script à l'aide d'ASP.NET AJAX, supprimez les marques de commentaire de la ligne suivante. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService_Example : System.Web.Services.WebService
    {
        [WebMethod]
        public Player GeneratePlayer(string name)
        {
            Random random = new Random(17);
            int lvl = random.Next(1, 30);
            return new Player(name, lvl);
        }

        [WebMethod]
        public DateTime GetTodayDateTime()
        {
            return DateTime.Now;
        }
    }
}
