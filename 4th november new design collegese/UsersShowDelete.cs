using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace _4th_november_new_design_collegese
{
    public class Users
    {
        public string Username { get; set; }
        public string Password { get; set; }
    }
    public class UsersShowDelete
    {

        public static void DeleteEmployee(string Username)
        {
            //string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "delete from LoginTable where Username = '" + Username + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }

        public static List<Users> GetAllUsers()
        {
            List<Users> listUsers = new List<Users>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry1 = "select Username,Password from LoginTable";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Users users = new Users();
                users.Username = rdr[0].ToString();
                users.Password = rdr[1].ToString();
                listUsers.Add(users);
            }
            connection.Close();
            return listUsers;
        }
    }
}