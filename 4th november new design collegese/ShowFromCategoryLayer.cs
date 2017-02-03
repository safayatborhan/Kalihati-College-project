using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

namespace _4th_november_new_design_collegese
{
    public class Category
    {
        OleDbConnection connection = new OleDbConnection();
        //public string category
        //{ get; set; }
        public string name
        { get; set; }
        public string image
        { get; set; }
        public string description
        { get; set; }
    }
    public class ShowFromCategoryLayer
    {
        public static List<Category> GetAllInformation()
        {
            List<Category> categoryInformation = new List<Category>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry1 = "select sName,Image,Description from AddNotice where Category='" + StringPass.pass + "'";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                //Student student = new Student();
                Category aCategory = new Category();
                //aCategory = rdr[0].ToString();
                //student.rollNumber = rdr[1].ToString();
                //student.name = rdr[2].ToString();
                //student.result = rdr[3].ToString();
                //listStudent.Add(student);
                aCategory.name = rdr[0].ToString();
                aCategory.image = rdr[1].ToString();
                aCategory.description = rdr[2].ToString();
                categoryInformation.Add(aCategory);
            }
            connection.Close();
            return categoryInformation;
        }
    }
}