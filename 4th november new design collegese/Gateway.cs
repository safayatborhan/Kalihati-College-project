using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace _4th_november_new_design_collegese
{
    public class Gateway
    {


        public static int InsertAdmissionInfo(StudentN StudentN)
        {

            //OleDbConnection connection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Waliul\Desktop\StudentAdmssion.accdb");
            //string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            OleDbCommand o_cmd = new OleDbCommand("insert into StudentAdmission values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k)", connection);
            o_cmd.Parameters.AddWithValue("a",StudentN.StudentName);
            o_cmd.Parameters.AddWithValue("b", StudentN.FatherName);
            o_cmd.Parameters.AddWithValue("c", StudentN.DOP);
            o_cmd.Parameters.AddWithValue("d", StudentN.Sex);
            o_cmd.Parameters.AddWithValue("e", StudentN.Religion);
            o_cmd.Parameters.AddWithValue("f", StudentN.Email);
            o_cmd.Parameters.AddWithValue("g", StudentN.ContactNo);

            o_cmd.Parameters.AddWithValue("h", StudentN.SSCResutl);

     
            o_cmd.Parameters.AddWithValue("i", StudentN.Group);

            o_cmd.Parameters.AddWithValue("j", StudentN.ParmanentAdress);
            o_cmd.Parameters.AddWithValue("k", StudentN.Homedistrict);
            int i = o_cmd.ExecuteNonQuery();
            connection.Close();
            return i;


        }
    }
}