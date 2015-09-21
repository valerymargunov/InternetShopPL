using SS.Common;
using SS.Common.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SS.Web
{
    public partial class viewcategory : System.Web.UI.Page
    {
        private ProductRepository productRepository = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.SetLanguage();
            ProductsBind();
        }

        protected void DataPagerProducts_PreRender(object sender, EventArgs e)
        {
            ProductsBind();
        }

        private void ProductsBind()
        {
            productRepository = new ProductRepository();
            string region = this.FirstCharToUpper(this.GetLanguage().Substring(0,2));
            int categoryId = Request.QueryString["categoryId"] != null ? Int32.Parse(Request.QueryString["categoryId"]) : 0;
            IEnumerable<Product> listGoods = productRepository.GetProducts(categoryId, region);
            if (region == "Ru")
            {
                foreach (var item in listGoods)
                {
                    item.Photos = item.Photos.Split('|').FirstOrDefault();
                    item.Description = item.DescriptionRu;
                    item.Title = item.TitleRu;
                }
            }
            else if (region == "Pl")
            {
                foreach (var item in listGoods)
                {
                    item.Photos = item.Photos.Split('|').FirstOrDefault();
                    item.Description = item.DescriptionPl;
                    item.Title = item.TitlePl;
                }
            }
            ListProducts.DataSource = listGoods;
            ListProducts.DataBind();
        }
    }
}