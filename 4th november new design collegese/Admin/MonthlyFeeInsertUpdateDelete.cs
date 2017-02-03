using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace _4th_november_new_design_collegese.Admin
{

    public class MonthlyFee
    {
        public string ID { get; set; }
        public string Class { get; set; }
        public string Roll { get; set; }
        public string Name { get; set; }
        public string Amount { get; set; }
        public string Month { get; set; }
        public string Date { get; set; }
    }

    public class MonthlyFeeInsertUpdateDelete
    {
        public static void InsertMonthlyFee(string Class, string Roll, string Name, string Amount,string Month, string Date)
        {
            Guid guid = Guid.NewGuid();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "insert into MonthlyFeeTable(ID,Class,Roll,Name,Amount,Month1,Datee) values ('" + guid + "','" + Class + "','" + Roll + "','" + Name + "','" + Amount + "','" + Month + "','" + Date + "')";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            string qry1 = "insert into IncomeTable(ID,Purpose,Amount,Month1,Datee) values ('" + guid + "','Monthly Fee','" + Amount + "','" + Month + "','" + Date + "')";
            OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
            cmd1.ExecuteNonQuery();
            connection.Close();
        }
        public static void DeleteMonthlyFee(string ID)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "delete from MonthlyFeeTable where ID='" + ID + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            string qry1 = "delete from IncomeTable where ID='" + ID + "'";
            OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
            cmd1.ExecuteNonQuery();
            connection.Close();
        }
        public static void UpdateMonthlyFee(string ID, string Class, string Roll, string Name, string Amount,string Month, string date)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            //string qry = "update AdmissionFeeTable set Class='" + Class + "',Roll='" + Roll + "',Name='" + Name + "',Amount=" + Amount + ",Date='" + Date + "' where ID=" + ID + "";
            string qry = "update MonthlyFeeTable set Class='" + Class + "',Roll='" + Roll + "',Name='" + Name + "',Amount='" + Amount + "',Month1='" + Month + "',Datee='" + date + "' where ID='" + ID + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            string qry1 = "update IncomeTable set Amount='" + Amount + "',Month1='" + Month + "',Datee='" + date + "' where ID='" + ID + "'";
            OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
            cmd1.ExecuteNonQuery();
            connection.Close();
        }
        public static List<MonthlyFee> GetAllMonthlyFee()
        {
            List<MonthlyFee> monthlyFee = new List<MonthlyFee>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry1 = "select ID,Class,Roll,Name,Amount,Month1,Datee from MonthlyFeeTable";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                MonthlyFee fee = new MonthlyFee();
                fee.ID = (rdr[0].ToString());
                fee.Class = rdr[1].ToString();
                fee.Roll = rdr[2].ToString();
                fee.Name = rdr[3].ToString();
                fee.Amount = (rdr[4].ToString());
                fee.Month = rdr[5].ToString();
                fee.Date = rdr[6].ToString();
                monthlyFee.Add(fee);
            }
            connection.Close();
            return monthlyFee;
        }
    }
}