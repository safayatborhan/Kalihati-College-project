using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _4th_november_new_design_collegese
{
    
    public class Student
    {
        //static string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        OleDbConnection connection = new OleDbConnection();
        
        public string rollNumber
        { get; set; }
        public string name
        { get; set; }
        public string result{ get; set; }
        public string image
        {
            get;
            set;
        }
    }



    public class ShowStudentDatabaseLayer
    {

        public static void UpdateStudent(string image, string rollNumber, string name, string result)
        {
            //string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        OleDbConnection connection = new OleDbConnection();
        connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "update StudentManagement2 SET  sName = '" + name + "', Result = '" + result + "', Roll = '" + rollNumber + "' where Image = '" + image + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }

        public static void DeleteStudent(string image)
        {
            //string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        OleDbConnection connection = new OleDbConnection();
        connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "delete from StudentManagement2 where Image = '" + image + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        
        public static List<Student> GetAllStudent()
        {
            List<Student> listStudent = new List<Student>();
            //string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        OleDbConnection connection = new OleDbConnection();
        connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry1 = "select Image,Roll,sName,Result from StudentManagement2";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Student student = new Student();
                student.image = rdr[0].ToString();
                student.rollNumber = rdr[1].ToString();
                student.name = rdr[2].ToString();
                student.result = rdr[3].ToString();
                listStudent.Add(student);
            }
            connection.Close();
            return listStudent;
        }
    }
}