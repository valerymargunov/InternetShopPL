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
            this.SetLanguage();
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

            if (!String.IsNullOrEmpty(Request.QueryString["idProduct"]))
            {
                goodsRepository = new ProductRepository();
                brandRepository = new BrandRepository();
                int idProduct = 0;
                string region = this.FirstCharToUpper(this.GetLanguage().Substring(0, 2));
                Int32.TryParse(Request.QueryString["idProduct"], out idProduct);
                var product = goodsRepository.GetProduct(idProduct, region);
                if (product != null)
                {
                    TitleProduct.InnerText = region == "Ru" ? product.TitleRu : product.TitlePl;

                    SpanDescription.InnerText = region == "Ru" ? product.DescriptionRu : product.DescriptionPl;
                    PriceProduct.InnerText = product.Cost.ToString() + " " + "zl";
                    Dostavka.InnerText = product.Dostavka.ToString() + " " + "zl";
                    DostavkaPr.InnerText = product.DostavkaPobraniowa.ToString() + " " + "zl";
                    ////////////////
                    string[] photoBox = product.Photos.Split('|');
                    zoom1.HRef = photoBox[0];
                    ImageSrcProduct.Src = photoBox[0];
                    string photoBoxHtml = string.Empty;
                    foreach (var photo in photoBox)
                    {
                        photoBoxHtml += string.Format(@"<div style='background-color: #909090; text-align: center; position: relative; width: 70px; height: 70px; float: left; margin:5px; border: 2px solid #555;' >
                                                            <img src='{0}' style='position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); height: auto; width: auto; max-width: 70px; max-height: 70px; margin: 0px !important; padding: 0px !important;' onclick='selectPhoto(this.src);'/>
                                                        </div> ", photo);
                    }
                    PhotoBox.InnerHtml = photoBoxHtml;
                    ////////////////
                    //List<string> listSize = new List<string>();
                    //listSize = product.Size.Split(new char[] { '@' }).ToList();
                    //foreach (var size in listSize)
                    //{
                    //    ListOfSize.Items.Add(size);
                    //}


                    //if (product.BrandId == null || product.BrandId == 0)
                    //{
                    //    //DivBrand.Visible = false;
                    //    ImageBrand.Src = "";
                    //}
                    //else
                    //{
                    //    DivBrand.Visible = true;
                    //    ImageBrand.Src = brandRepository.GetBrand(product.BrandId).ImageSrc;
                    //}
                    //ImageBrand.Src = product.BrandImageSrc;
                }
                else
                {

                }

            }
        }
    }
}