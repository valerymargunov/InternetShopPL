using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SS.Entities
{
    public class ProductUrl
    {
        public int UrlId { get; set; }
        public string Url { get; set; }
        public int CategoryId { get; set; }
    }
}
