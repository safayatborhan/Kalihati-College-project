using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace _4th_november_new_design_collegese.Admin
{

    public class RandomIncome
    {
        public string ID { get; set; }
        public string Purpose { get; set; }
        public string Amount { get; set; }
        public string Month { get; set; }
        public string Datee { get; set; }
    }

    public class RandomIncomeInsertUpdateDelete
    {
        public static void InsertIncome(string Purpose,string Amount,string Month,string Datee)
        {
            Guid guid = Guid.NewGuid();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "insert into RandomIncomeTable(ID,Purpose,Amount,Month1,Datee) values ('" + guid + "','" + Purpose + "','" + Amount + "','" + Month + "','" + Datee + "')";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            string qry1 = "insert into IncomeTable(ID,Purpose,Amount,Month1,Datee) values ('" + guid + "','" + Purpose + "','" + Amount + "','" + Month + "','" + Datee + "')";
            OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
            cmd1.ExecuteNonQuery();
            connection.Close();
        }
        public static void DeleteIncome(string ID)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "delete from RandomIncomeTable where ID='" + ID + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            string qry1 = "delete from IncomeTable where ID='" + ID + "'";
            OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
            cmd1.ExecuteNonQuery();
            connection.Close();
        }
        public static void UpdateIncome(string ID, string Purpose, string Amount,string Month, string Datee)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            //string qry = "update AdmissionFeeTable set Class='" + Class + "',Roll='" + Roll + "',Name='" + Name + "',Amount=" + Amount + ",Date='" + Date + "' where ID=" + ID + "";
            string qry = "update RandomIncomeTable set Purpose='" + Purpose + "',Amount='" + Amount + "',Month1='" + Month + "',Datee='" + Datee + "' where ID='" + ID + "'"; ;
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            string qry1 = "update IncomeTable set Purpose='" + Purpose + "', Amount='" + Amount + "',Month1='" + Month + "',Datee='" + Datee + "' where ID='" + ID + "'";
            OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
            cmd1.ExecuteNonQuery();
            connection.Close();
        }
        public static List<RandomIncome> GetAllIncome()
        {
            List<RandomIncome> income = new List<RandomIncome>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry1 = "select ID,Purpose,Amount,Month1,Datee from RandomIncomeTable";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                RandomIncome incomeAmount = new RandomIncome();
                incomeAmount.ID = (rdr[0].ToString());
                incomeAmount.Purpose = rdr[1].ToString();
                incomeAmount.Amount = rdr[2].ToString();
                incomeAmount.Month = rdr[3].ToString();
                incomeAmount.Datee = rdr[4].ToString();
                income.Add(incomeAmount);
            }
            connection.Close();
            return income;
        }
    }
}