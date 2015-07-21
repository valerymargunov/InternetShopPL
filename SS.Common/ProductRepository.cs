﻿using SS.Common.Entities;
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
        public IEnumerable<Product> GetProducts(int categoryId)
        {
            var sql = @"SELECT * FROM Goods WHERE CategoryId = @categoryId";
            using (var conn = new SqlConnection(ConnectionString))
            {
                var goods = conn.Query<Product>(sql, new { categoryId});
                return goods;
            }
        }

        public Product GetProduct(int idProduct)
        {
            var sql = @"SELECT * FROM Goods WHERE ProductId = @idProduct";
            using (var conn = new SqlConnection(ConnectionString))
            {
                var goods = conn.Query<Product>(sql, new { idProduct }).FirstOrDefault();
                return goods;
            }
        }

        public dynamic AddProducts(IEnumerable<Product> listOfGoods)
        {
            var sql = @"INSERT INTO Goods(CategoryId, Title, Cost, BrandId, Size, Description, Consist, ImageSrc, Photos, SiteUrl, BrandImageSrc) 
                        VALUES(@CategoryId, @Title, @Cost, @BrandId, @Size, @Description, @Consist, @ImageSrc, @Photos, @SiteUrl, @BrandImageSrc)";
            int insertCount = 0, invalidCount = 0;
            foreach (var product in listOfGoods)
            {
                if (!IsExistProduct(product))
                {
                    using (var conn = new SqlConnection(ConnectionString))
                    {
                        try
                        {
                            conn.Execute(sql, new
                            {
                                product.CategoryId,
                                product.Title,
                                product.Cost,
                                product.BrandId,
                                product.Size,
                                product.Description,
                                product.Consist,
                                product.ImageSrc,
                                product.Photos,
                                product.SiteUrl,
                                product.BrandImageSrc
                            });
                            insertCount++;
                        }
                        catch
                        {
                            invalidCount++;
                            continue;
                        }
                    }
                }
            }
            return new { insertCount, invalidCount };
        }

        public bool IsExistProduct(Product product)
        {
            var sql = @"SELECT * FROM Goods 
                        WHERE 
                            CategoryId = @CategoryId 
                        and 
                            Title = @Title 
                        and 
                            ImageSrc = @ImageSrc";
            using (var conn = new SqlConnection(ConnectionString))
            {
                var goods = conn.Query<Product>(sql, new { product.CategoryId, product.Title, product.ImageSrc }).FirstOrDefault();
                return goods != null ? true : false;
            }
        }
    }
}
