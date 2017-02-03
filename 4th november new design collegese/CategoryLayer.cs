using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace Layout3
{
    public class Category
    {
        public int CategoryID
        {
            get;
            set;
        }
        public string CategoryName
        {
            get;
            set;
        }
    }

    public class CategoryLayer
    {

//        public static void UpdateStudent(int CategoryID, string CategoryName)
//        {
//            //string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
//            OleDbConnection connection = new OleDbConnection();
//            connection.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|Category.accdb;
//     Persist Security Info=False;";
//            connection.Open();
//            string qry = "update Category SET CategoryName = '" + CategoryName + "' where CategoryID = " + CategoryID + "";
//            OleDbCommand cmd = new OleDbCommand(qry, connection);
//            cmd.ExecuteNonQuery();
//        }

        public static void DelteStudent(int CategoryID, string CategoryName)
        {
            //string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "delete from Category where CategoryID = " + CategoryID + "";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }

        public static List<Category> GetAllCategory()
        {
            List<Category> listCategory = new List<Category>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry1 = "select CategoryID,CategoryName from Category";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Category aCategory = new Category();
                aCategory.CategoryID = int.Parse(rdr[0].ToString());
                aCategory.CategoryName = rdr[1].ToString();
                listCategory.Add(aCategory);
            }
            connection.Close();
            return listCategory;
        }
    }
}