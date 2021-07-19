using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace ASP_TP8_Ex2
{
    public static class Authentication
    {
        public static void SessionUpdate(Page page, string username, string name, string id)
        {
            page.Session["login"] = username;
            page.Session["name"] = name;
            page.Session["id"] = id;
        }

        public static void CookiesUpdate(Page page, string username, string name, string id, bool statusIn)
        {
            HttpCookie cookie = new HttpCookie("login");
            cookie["username"] = username;
            cookie["name"] = name;
            cookie["id"] = id;
            cookie["status"] = (statusIn) ? "in" : "out";
            cookie.Expires = DateTime.Now.AddMinutes(60);
            page.Response.Cookies.Add(cookie);
        }

        public static bool LoginSessionExists(Page page)
        {
            return (page.Session["login"] != null);
        }

        public static bool LoginCookiesExists(Page page)
        {
            return (page.Request.Cookies["login"] != null);
        }

        public static bool LoginCookiesExistsAndStatusIn(Page page)
        {
            return (page.Request.Cookies["login"] != null
                && page.Request.Cookies["login"]["status"] == "in");
        }

        public static string GetActionQueryStringMessage(Page page)
        {
            if (page.Request.QueryString["action"] != null)
            {
                switch (page.Request.QueryString["action"])
                {
                    case "logout":
                        return "Vous vous êtes bien déconnecté";
                    case "signup":
                        return "Vous êtes inscrit avec succés. Vous pouvez maintenant vous connecter";
                    default:
                        return "Veuillez vous identifier pour accéder à votre espace personel";
                }
            }
            return "";
        }

        public static string GetErrorQueryStringMessage(Page page)
        {
            if (page.Request.QueryString["error"] != null)
            {
                switch (page.Request.QueryString["error"])
                {
                    case "profil":
                        return "Veuillez vous identifier pour consulter votre profile";
                    case "profil-edit":
                        return "Veuillez vous identifier pour modifier votre profile";
                    default:
                        return "Veuillez vous identifier pour voir le contenu désiré";
                }
            }
            return "";
        }

        public static int GetItemQueryStringID(Page page)
        {
            int id = -1;
            if (page.Request.QueryString["item"] != null)
            {
                int.TryParse(page.Request.QueryString["item"], out id);
            }
            return id;
        }
    }
}