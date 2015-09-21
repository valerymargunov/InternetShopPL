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
        public string CategoryTitleRu { get; set; }
        public string CategoryTitlePl { get; set; }
        public int ParentId { get; set; }
    }
}
