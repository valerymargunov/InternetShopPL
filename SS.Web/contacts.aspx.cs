using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Resources;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SS.Web
{
    public partial class contacts : System.Web.UI.Page
    {
        public contacts()
        {
            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("be-by");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}