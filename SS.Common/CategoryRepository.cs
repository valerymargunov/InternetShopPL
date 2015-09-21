using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using System.Data.SqlClient;
using SS.Entities;

namespace SS.Common
{
    public class CategoryRepository
    {
        private static string ConnectionString = ConfigurationManager.ConnectionStrings["ssdb"].ConnectionString;
        public IEnumerable<Category> GetCategories(string region)
        {
            var sql =String.Format( @"SELECT CategoryId, CategoryTitle{0}, ParentId FROM Categories", region);
            using (var conn = new SqlConnection(ConnectionString))
            {
                var categories = conn.Query<Category>(sql);
                return categories;
            }
        }

        public IEnumerable<Category> GetCategories(int parentId, string region)
        {
            var sql = String.Format(@"SELECT CategoryId, CategoryTitle{0}, ParentId FROM Categories WHERE parentId = @parentId", region);
            using (var conn = new SqlConnection(ConnectionString))
            {
                var categories = conn.Query<Category>(sql, new { parentId = parentId });
                return categories;
            }
        }

        public Category GetCategory(int categoryId, string region)
        {
            var sql = String.Format(@"SELECT CategoryId, CategoryTitle{0}, ParentId FROM Categories WHERE CategoryId = @categoryId", region);
            using (var conn = new SqlConnection(ConnectionString))
            {
                var category = conn.Query<Category>(sql, new { categoryId = categoryId }).FirstOrDefault();
                return category;
            }
        }
    }
}
