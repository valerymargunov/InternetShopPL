using SS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Resources;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SS.Web
{
    public partial class global : System.Web.UI.MasterPage
    {
        TypeRepository typeRepository { get; set; }
        CategoryRepository categoryRepository { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            typeRepository = new TypeRepository();
            categoryRepository = new CategoryRepository();
            GenerateMenu();
        }

        private void GenerateMenu()
        {
            string menuHtml = @"<table cellspacing='0' cellpadding='0' id='menu165' class='ddmx165'>
                                                <tr>";
            var types = typeRepository.GetTypes();
            foreach (SS.Entities.Type type in types)
            {
                menuHtml += String.Format(@"
                                                    <td class='item11-acton'>
                                                        <a href='#' class='item1'>{0}</a>", type.TitleOfType);
                var currentCategories = categoryRepository.GetCategories(type.TypeId);
                foreach (var category in currentCategories)
                {
                    menuHtml += String.Format(@"<div class='section'>
                                                    <a href='viewcategory.aspx?categoryId={0}' class='item2'>
                                                        <img class='seq1' border='0' src='images/arrow_right.png' vspace='30' hspace='3' width='24' height='24' alt='{1}' />
                                                        <img class='seq2' border='0' src='images/arrow_right.png' vspace='3' hspace='30' width='24' height='24' alt='{1}' />
                                                        {1}
                                                    </a>                                    
                                                </div>", category.CategoryId, category.CategoryTitle);
                }
                menuHtml += "</td>";
            }
            RootMenu.InnerHtml = String.Format("{0}</tr></table>", menuHtml);
        }
    }
}