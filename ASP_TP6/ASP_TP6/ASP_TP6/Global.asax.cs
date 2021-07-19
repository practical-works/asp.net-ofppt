using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.IO;

namespace ASP_TP6
{
    public class Global : System.Web.HttpApplication
    {
        public void WriteLog(string state)
        {
            string path = Server.MapPath("~/log.txt");
            string logLine = "";
            using (StreamWriter logFile = File.AppendText(path))
            {
                switch (state)
                {
                    case "start":
                        logLine += "[Session_Start]" + Environment.NewLine;
                        break;
                    
                    case "end":
                        logLine += "[Session_End]" + Environment.NewLine;
                        break;
                    
                    default:
                        break;
                }
                logLine += "Session ID: " + Session.SessionID + Environment.NewLine +
                           "Client Browser: " + Request.Browser.Browser + Environment.NewLine +
                           "Referrer URL: " + Request.UrlReferrer + Environment.NewLine +
                           "Requested URL: " + Request.Url + Environment.NewLine +
                           "Event Date: " + DateTime.Now.ToString() + Environment.NewLine;
                logFile.WriteLine(logLine);
            }
        }

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["visites"] = 0;
            Application["visiteurs"] = 0;
            Application["visiteurs_actifs"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["visiteurs"] = (int)Application["visiteurs"] + 1;
            Application["visiteurs_actifs"] = (int)Application["visiteurs_actifs"] + 1;
            WriteLog("start");
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["visiteurs_actifs"] = (int)Application["visiteurs_actifs"] - 1;
            WriteLog("end");
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {
            
        }
    }
}