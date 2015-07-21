﻿using System;
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
        public IEnumerable<Category> GetCategories()
        {
            var sql = @"SELECT * FROM Categories";
            using (var conn = new SqlConnection(ConnectionString))
            {
                var categories = conn.Query<Category>(sql);
                return categories;
            }
        }

        public IEnumerable<Category> GetCategories(int typeId)
        {
            var sql = @"SELECT * FROM Categories WHERE typeId = @typeId";
            using (var conn = new SqlConnection(ConnectionString))
            {
                var categories = conn.Query<Category>(sql, new { typeId });
                return categories;
            }
        }
    }
}