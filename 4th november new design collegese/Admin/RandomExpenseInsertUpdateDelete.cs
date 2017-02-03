using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace _4th_november_new_design_collegese.Admin
{

    public class RandomExpense
    {
        public int ID { get; set; }
        public string Purpose { get; set; }
        public string Amount { get; set; }
        public string Month { get; set; }
        public string Datee { get; set; }
    }

    public class RandomExpenseInsertUpdateDelete
    {
        public static void InsertExpense(string Purpose,string Amount,string Month,string Datee)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "insert into RandomExpenseTable(Purpose,Amount,Month1,Datee) values ('" + Purpose + "','" + Amount + "','" + Month + "','" + Datee + "')";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static void DeleteExpense(int ID)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "delete from RandomExpenseTable where ID=" + ID + "";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static void UpdateExpense(int ID, string Purpose, string Amount,string Month, string Datee)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            //string qry = "update AdmissionFeeTable set Class='" + Class + "',Roll='" + Roll + "',Name='" + Name + "',Amount=" + Amount + ",Date='" + Date + "' where ID=" + ID + "";
            string qry = "update RandomExpenseTable set Purpose='" + Purpose + "',Amount='" + Amount + "',Month1='" + Month + "',Datee='" + Datee + "' where ID=" + ID + "";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static List<RandomExpense> GetAllExpense()
        {
            List<RandomExpense> expense = new List<RandomExpense>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry1 = "select ID,Purpose,Amount,Month1,Datee from RandomExpenseTable";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                RandomExpense expenseAmount = new RandomExpense();
                expenseAmount.ID = int.Parse(rdr[0].ToString());
                expenseAmount.Purpose = rdr[1].ToString();
                expenseAmount.Amount = rdr[2].ToString();
                expenseAmount.Month = rdr[3].ToString();
                expenseAmount.Datee = rdr[4].ToString();
                expense.Add(expenseAmount);
            }
            connection.Close();
            return expense;
        }
    }
}