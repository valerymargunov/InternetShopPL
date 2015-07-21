using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;

namespace SS.Common
{
    public class TypeRepository
    {
        private static string ConnectionString = ConfigurationManager.ConnectionStrings["ssdb"].ConnectionString;
        public IEnumerable<SS.Entities.Type> GetTypes()
        {
            var sql = @"SELECT * FROM TypesOfCategories";
            using (var conn = new SqlConnection(ConnectionString))
            {
                var types = conn.Query<SS.Entities.Type>(sql);
                return types;
            }
        }
    }
}
