using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SS.Entities
{
    public class Category
    {
        public int CategoryId { get; set; }
        public string CategoryTitleRU { get; set; }
        public string CategoryTitlePL { get; set; }
        public int ParentId { get; set; }
    }
}
