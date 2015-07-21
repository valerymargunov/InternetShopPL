using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace SS.Common
{
    public class HtmlParser
    {
        public static string GetHtmlFromUrl(string url)
        {
            try
            {
                if (!string.IsNullOrEmpty(url))
                {
                    string content = String.Empty;
                    WebRequest webRequest = WebRequest.Create(url);
                    WebResponse webResponse = webRequest.GetResponse();
                    StreamReader sr = new StreamReader(webResponse.GetResponseStream(), System.Text.Encoding.UTF8);
                    content = sr.ReadToEnd();
                    return content;
                }
                else return null;
            }
            catch
            {
                return null;
            }
        }

        public static bool IsUrlExist(string url)
        {
            try
            {
                if (!string.IsNullOrEmpty(url))
                {
                    string content = String.Empty;
                    WebRequest webRequest = WebRequest.Create(url);
                    WebResponse webResponse = webRequest.GetResponse();
                    StreamReader sr = new StreamReader(webResponse.GetResponseStream(), System.Text.Encoding.UTF8);
                    content = sr.ReadToEnd();
                    return true;
                }
                else return false;
            }
            catch
            {
                return false;
            }
        }
    }
}
