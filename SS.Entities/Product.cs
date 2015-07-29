using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SS.Common.Entities
{
    public class Product
    {
        //public int ProductId { get; set; }
        //public int CategoryId { get; set; }
        //public string Title { get; set; }
        //public double Cost { get; set; }
        //public int BrandId { get; set; }
        //public string Size { get; set; }
        //public string Description { get; set; }
        //public string Consist { get; set; }
        //public string ImageSrc { get; set; }
        //public string Photos { get; set; }
        //public string SiteUrl { get; set; }
        //public string BrandImageSrc { get; set; }
        public int ProductId { get; set; }
        public int CategoryId { get; set; }
        public string TitleRu { get; set; }
        public string TitlePl { get; set; }
        public double Cost { get; set; }
        public string DescriptionRu { get; set; }
        public string DescriptionPl { get; set; }
        public string Photos { get; set; }
    }
}
