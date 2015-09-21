using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Resources;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;

namespace SS.Web
{
    public static class PageExtension
    {
        public static string GetString(this Control page, string resourceKey)
        {
            return ResourceManager.CreateFileBasedResourceManager("Resource", HttpContext.Current.Server.MapPath("App_LocalResources") + Path.DirectorySeparatorChar, null).GetString(resourceKey);
        }

        public static void SetLanguage(this Control page)
        {
            var language = HttpContext.Current.Request.Cookies["language"];
            if (language != null)
            {
                string lang = language.Value;
                Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(lang);
            }
            else
            {
                Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("ru-ru");
            }
        }

        public static string GetLanguage(this Control page)
        {
            var language = HttpContext.Current.Request.Cookies["language"];
            return language != null ? language.Value : "ru-ru";
        }

        public static string FirstCharToUpper(this Control page, string input)
        {
            if (string.IsNullOrEmpty(input))
                throw new ArgumentException("ARGH!");
            return input.First().ToString().ToUpper() + input.Substring(1);
        }

    }
}
