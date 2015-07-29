using SS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SS.Web
{
    public partial class viewproduct : System.Web.UI.Page
    {
        private ProductRepository goodsRepository;
        private BrandRepository brandRepository;

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!String.IsNullOrEmpty(Request.QueryString["idProduct"]))
            //{
            //    goodsRepository = new ProductRepository();
            //    brandRepository = new BrandRepository();
            //    int idProduct = 0;
            //    Int32.TryParse(Request.QueryString["idProduct"], out idProduct);
            //    var product = goodsRepository.GetProduct(idProduct);
            //    if (product != null)
            //    {
            //        TitleProduct.InnerText = product.Title;
            //        zoom1.HRef = product.ImageSrc;
            //        ImageSrcProduct.Src = product.ImageSrc;
            //        PriceProduct.InnerText = product.Cost.ToString() + " Руб.";
            //        List<string> listSize = new List<string>();
            //        listSize = product.Size.Split(new char[] { '@' }).ToList();
            //        foreach (var size in listSize)
            //        {
            //            ListOfSize.Items.Add(size);
            //        }
            //        //if (product.BrandId == null || product.BrandId == 0)
            //        //{
            //        //    //DivBrand.Visible = false;
            //        //    ImageBrand.Src = "";
            //        //}
            //        //else
            //        //{
            //        //    DivBrand.Visible = true;
            //        //    ImageBrand.Src = brandRepository.GetBrand(product.BrandId).ImageSrc;
            //        //}
            //        ImageBrand.Src = product.BrandImageSrc;
            //    }
            //    else
            //    {

            //    }

        }
    }
}