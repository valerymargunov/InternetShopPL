using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Resources;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;

namespace SS.Web
{
    public static class PageExtension
    {
        public static string GetString(this Page page, string resourceKey)
        {
            return ResourceManager.CreateFileBasedResourceManager("Resource", HttpContext.Current.Server.MapPath("App_LocalResources") + Path.DirectorySeparatorChar, null).GetString(resourceKey);
        }
    }
}
