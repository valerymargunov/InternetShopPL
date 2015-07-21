using SS.Common;
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
            productRepository = new ProductRepository();
            int categoryId = Request.QueryString["categoryId"] != null ? Int32.Parse(Request.QueryString["categoryId"]) : 0;
            //typeId = Request.QueryString["typeId"] != null ? Int32.Parse(Request.QueryString["typeId"]) : 0;
            var listGoods = productRepository.GetProducts(categoryId);
//            foreach (Goods goods in listGoods)
//            {
//                product_list.InnerHtml += String.Format(@"<div style='width:23%; {7}' {5}>
//                                                <div class='browseProductContainer'> 
//                                                        <div style='text-align: center; margin: 0px 0px 10px 0px; overflow: hidden; height: 18px;'>{1}</div> 
//                                                    <a href='{0}' class='gk_vm_product_image' title=''>
//                                                        <img src='{2}' class='browseProductImage' style='width: 150px; height: 200px;' border='0' title='{1}' alt='{1}'>
//                                                    </a>
//                                                    <p id='price_stl'> 
//	                                                    <span class='productPrice'>{3} Руб.</span>
//                                                    </p> 
//	                                                <p class='clear' style='line-height:100%;text-align:center;padding:4px 10px 0 0; height: 14px; overflow:hidden;'>{4}</p>
//                                                    {6}   
//                                                </div>
//                                           </div>", 
//                                                  "", 
//                                                  goods.Title, 
//                                                  goods.ImageSrc, 
//                                                  goods.Cost, goods.Consist, 
//                                                  i == 1 || Math.IEEERemainder(i - 1, 4) == 0 ? "class='first_col'" : "",
//                                                  Math.IEEERemainder(i, 4) == 0 ? "<br class='clr'>" : "",
//                                                  "float: left;");
//                i++;
//            }
            ListProducts.DataSource = listGoods;
            ListProducts.DataBind();
        }

        protected void DataPagerProducts_PreRender(object sender, EventArgs e)
        {
            productRepository = new ProductRepository();
            int categoryId = Request.QueryString["categoryId"] != null ? Int32.Parse(Request.QueryString["categoryId"]) : 0;
            var listGoods = productRepository.GetProducts(categoryId);
            ListProducts.DataSource = listGoods;
            ListProducts.DataBind();
        }
    }
}