using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using SS.Common.Entities;
using System.Data.SqlClient;
using Dapper;

namespace SS.Common
{
    public class BrandRepository
    {
        private static string ConnectionString = ConfigurationManager.ConnectionStrings["ssdb"].ConnectionString;
        public IEnumerable<Brand> GetBrands()
        {
            var sql = @"SELECT * FROM Brands";
            using (var conn = new SqlConnection(ConnectionString))
            {
                var brands = conn.Query<Brand>(sql);
                return brands;
            }
        }

        public Brand GetBrand(int brandId)
        {
            var sql = @"SELECT * FROM Brands WHERE BrandId = @brandId";
            using (var conn = new SqlConnection(ConnectionString))
            {
                var brand = conn.Query<Brand>(sql, new { brandId }).FirstOrDefault();
                return brand;
            }
        }
    }
}
