using SS.Common.Entities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using System.Web;
using System.Configuration;

namespace SS.Common
{
    public class ProductRepository
    {
        private static string ConnectionString = ConfigurationManager.ConnectionStrings["ssdb"].ConnectionString;
        public IEnumerable<Product> GetProducts(int categoryId, string region)
        {

            //     var sql = @"SELECT * FROM Products WHERE categoryId = @categoryId";
            //using (var conn = new SqlConnection(ConnectionString))
            //{
            //    var goods = conn.Query<Product>(sql, new { categoryId});
            //    return goods;
            //}
            var sql = String.Format(@"WITH 
                            Rec (CategoryId, ParentId)
                           AS (SELECT CategoryId, ParentId FROM Categories
                              WHERE CategoryId = @categoryId
                              UNION ALL 
                         SELECT C.CategoryId, C.ParentId
                              FROM Categories C
                                  INNER JOIN Rec t 
                                   ON C.ParentId = t.CategoryId )
	
                        SELECT P.productId, P.categoryId, P.title{0}, P.description{0}, P.photos, P.cost FROM Rec R, Products P
                        WHERE R.CategoryId = P.categoryId", region);
             using (var conn = new SqlConnection(ConnectionString))
            {
                var goods = conn.Query<Product>(sql, new { categoryId });
                return goods;
            }
        }

        public Product GetProduct(int idProduct, string region)
        {
            var sql = String.Format(@"SELECT P.ProductId, P.Dostavka, P.DostavkaPobraniowa, P.title{0}, P.description{0}, P.photos, P.cost FROM Products P WHERE ProductId = @idProduct", region);
            using (var conn = new SqlConnection(ConnectionString))
            {
                var goods = conn.Query<Product>(sql, new { idProduct }).FirstOrDefault();
                return goods;
            }
        }

//        public dynamic AddProducts(IEnumerable<Product> listOfGoods)
//        {
//            var sql = @"INSERT INTO Goods(CategoryId, Title, Cost, BrandId, Size, Description, Consist, ImageSrc, Photos, SiteUrl, BrandImageSrc) 
//                        VALUES(@CategoryId, @Title, @Cost, @BrandId, @Size, @Description, @Consist, @ImageSrc, @Photos, @SiteUrl, @BrandImageSrc)";
//            int insertCount = 0, invalidCount = 0;
//            foreach (var product in listOfGoods)
//            {
//                if (!IsExistProduct(product))
//                {
//                    using (var conn = new SqlConnection(ConnectionString))
//                    {
//                        try
//                        {
//                            conn.Execute(sql, new
//                            {
//                                product.CategoryId,
//                                product.Title,
//                                product.Cost,
//                                product.BrandId,
//                                product.Size,
//                                product.Description,
//                                product.Consist,
//                                product.ImageSrc,
//                                product.Photos,
//                                product.SiteUrl,
//                                product.BrandImageSrc
//                            });
//                            insertCount++;
//                        }
//                        catch
//                        {
//                            invalidCount++;
//                            continue;
//                        }
//                    }
//                }
//            }
//            return new { insertCount, invalidCount };
//        }

//        public bool IsExistProduct(Product product)
//        {
//            var sql = @"SELECT * FROM Goods 
//                        WHERE 
//                            CategoryId = @CategoryId 
//                        and 
//                            Title = @Title 
//                        and 
//                            ImageSrc = @ImageSrc";
//            using (var conn = new SqlConnection(ConnectionString))
//            {
//                var goods = conn.Query<Product>(sql, new { product.CategoryId, product.Title, product.ImageSrc }).FirstOrDefault();
//                return goods != null ? true : false;
//            }
//        }
    }
}
