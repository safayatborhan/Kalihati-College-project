using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace free_textbox_asp.net
{
    
    public class Employee
    {
        //static string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        

        public string name
        { get; set; }
        public string image
        { get; set; }
        public string description
        { get; set; }
    }
    public class EmployeeDataAccessLayercs
    {
        public static void UpdateEmployee(string name, string image, string description)
        {
            //string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "update AddNotice SET sName = '" + name + "', Description = '"+description+"' where Image = '" + image + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }

        public static void DeleteEmployee(string image)
        {
            //string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        OleDbConnection connection = new OleDbConnection();
        connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "delete from AddNotice where Image = '" + image + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }


        public static List<Employee> GetAllEmployees()
        {
            List<Employee> listEmployee = new List<Employee>();
            //string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        OleDbConnection connection = new OleDbConnection();
        connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry1 = "select sName,Image,Description from AddNotice";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Employee employee = new Employee();
                employee.name = rdr[0].ToString();
                employee.image = rdr[1].ToString();
                employee.description = rdr[2].ToString();
                listEmployee.Add(employee);
            }
            connection.Close();
            return listEmployee;
        }
    }
}