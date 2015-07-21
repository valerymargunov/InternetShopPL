using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using SS.Entities;
using SS.Helpers;

namespace SS.Common
{
    public class AccountRepository
    {
        private static string ConnectionString = ConfigurationManager.ConnectionStrings["ssdb"].ConnectionString;

        public bool Register(User user)
        {
            if (IsValidUser(user) && !IsExistUser(user))
            {
                var sql = @"INSERT INTO Users(FirstName, LastName, EmailAddress, PasswordHash, Address)
                            VALUES(@FirstName, @LastName, @EmailAddress, @PasswordHash, @Address)";
                user.PasswordHash = Decripting.GetMD5Hash(user.PasswordHash);
                using (var conn = new SqlConnection(ConnectionString))
                {
                    var status = conn.Execute(sql, new { user.FirstName, user.LastName, user.EmailAddress, user.PasswordHash, user.Address });
                    return status == 1 ? true : false;
                }
            }
            return false;
        }

        public bool Authorize(string emailAddress, string password)
        {
            var passwordHash = Decripting.GetMD5Hash(password);
            var sql = @"SELECT * FROM Users WHERE EmailAddress = @emailAddress AND PasswordHash = @passwordHash";
            using (var conn = new SqlConnection(ConnectionString))
            {
                var user = conn.Query<User>(sql, new { emailAddress, passwordHash }).FirstOrDefault();
                return user != null ? true : false;
            }
        }

        private bool IsValidUser(User user)
        {
            if (!String.IsNullOrEmpty(user.FirstName) && !String.IsNullOrEmpty(user.LastName) && !String.IsNullOrEmpty(user.EmailAddress) &&
                           !String.IsNullOrEmpty(user.PasswordHash) && !String.IsNullOrEmpty(user.Address))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private bool IsExistUser(User user)
        {
            var sql = @"SELECT * FROM Users WHERE EmailAddress = @EmailAddress";
            using (var conn = new SqlConnection(ConnectionString))
            {
                var currentUser = conn.Query<User>(sql, new { user.EmailAddress }).FirstOrDefault();
                return currentUser != null ? true : false;
            }
        }
    }
}
