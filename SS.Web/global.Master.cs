using SS.Common;
using SS.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Resources;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SS.Web
{
    public partial class global : System.Web.UI.MasterPage
    {
        TypeRepository typeRepository { get; set; }
        CategoryRepository categoryRepository { get; set; }
        string region { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.SetLanguage();
            typeRepository = new TypeRepository();
            categoryRepository = new CategoryRepository();
            region = this.FirstCharToUpper(this.GetLanguage().Substring(0, 2));
            GenerateMenu();            
        }
      
        private void GenerateMenu()
        {
            string menuHtml = @"<table cellspacing='0' cellpadding='0' id='menu165' class='ddmx165'>
                                                <tr>";
            var typesCategories = categoryRepository.GetCategories(0, region);
            foreach (var typeCategory in typesCategories)
            {
                menuHtml += String.Format(@"<td class='item11-acton'>
                                                        <a href='viewcategory.aspx?categoryId={1}' class='item1'>{0}</a> 
                             <div class='section'>", region == "Ru" ? typeCategory.CategoryTitleRu : typeCategory.CategoryTitlePl, typeCategory.CategoryId);
                menuHtml += GenerateHtmlNestedCategories(typeCategory.CategoryId);
                menuHtml += "</div></td>";
            }
            RootMenu.InnerHtml = String.Format("{0}</tr></table>", menuHtml);
        }

        private string GenerateHtmlNestedCategories(int parentId)
        {
            string menuHtml = String.Empty;
            var currentCategories = categoryRepository.GetCategories(parentId, region);
            foreach (var category in currentCategories)
            {
                //var aa = categoryRepository.GetCategories(category.CategoryId, region);               
                if (categoryRepository.GetCategories(category.CategoryId, region).Count() == 0)
                {
                    menuHtml += String.Format(@"<a href='viewcategory.aspx?categoryId={0}' class='item2'>
                                                               {1}
                                                    </a>", category.CategoryId, region == "Ru" ? category.CategoryTitleRu : category.CategoryTitlePl);
                }
                else
                {
                    menuHtml += String.Format(@"<a href='viewcategory.aspx?categoryId={0}' class='item2'>
                                                        <img class='seq1' border='0' src='images/arrow_right.png' vspace='30' hspace='3' width='24' height='24' alt='{1}' />
                                                        <img class='seq2' border='0' src='images/arrow_right.png' vspace='3' hspace='30' width='24' height='24' alt='{1}' />
                                                        {1}
                                                    </a> <div class='section'>", category.CategoryId, region == "Ru" ? category.CategoryTitleRu : category.CategoryTitlePl);
                    menuHtml += GenerateHtmlNestedCategories(category.CategoryId) + "</div>"; 
                }
            }
            return menuHtml;
        }

        protected void LanguagePL_Click(object sender, EventArgs e)
        {
            var cookie = new HttpCookie("language");
            cookie.Value = "pl-pl";
            cookie.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(cookie);
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void LanguageRU_Click(object sender, EventArgs e)
        {
            var cookie = new HttpCookie("language");
            cookie.Value = "ru-ru";
            cookie.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(cookie);
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}