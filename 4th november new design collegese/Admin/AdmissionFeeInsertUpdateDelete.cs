using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace _4th_november_new_design_collegese.Admin
{
    public class AdmissionFee
    {
        public string ID { get; set; }
        public string Class { get; set; }
        public string Roll { get; set; }
        public string Name { get; set; }
        public string Amount { get; set; }
        public string Month { get; set; }
        public string Date { get; set; }
    }
    public class AdmissionFeeInsertUpdateDelete
    {

        public static void InsertAdmissionFee(string Class, string Roll, string Name, string Amount, string Month, string Date)
        {
            Guid guid = Guid.NewGuid();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "insert into AdmissionFeeTable(ID,Class,Roll,Name,Amount,Month1,Datee) values ('" + guid + "','" + Class + "','" + Roll + "','" + Name + "','" + Amount + "','" + Month + "','" + Date + "')";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            string qry1 = "insert into IncomeTable(ID,Purpose,Amount,Month1,Datee) values ('" + guid + "','Admission Fee','" + Amount + "','" + Month + "','" + Date + "')";
            OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
            cmd1.ExecuteNonQuery();
            connection.Close();
        }

        public static void DeleteAdmissionFee(string ID)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "delete from AdmissionFeeTable where ID='" + ID + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            string qry1 = "delete from IncomeTable where ID='" + ID + "'";
            OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
            cmd1.ExecuteNonQuery();
            connection.Close();
        }

        public static void UpdateAdmissionFee(string ID, string Class, string Roll, string Name, string Amount,string Month, string date)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            //string qry = "update AdmissionFeeTable set Class='" + Class + "',Roll='" + Roll + "',Name='" + Name + "',Amount=" + Amount + ",Date='" + Date + "' where ID=" + ID + "";
            string qry = "update AdmissionFeeTable set Class='" + Class + "',Roll='" + Roll + "',Name='" + Name + "',Amount='" + Amount + "',Month1='" + Month + "',Datee='" + date + "' where ID='" + ID + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            string qry1 = "update IncomeTable set Amount='" + Amount + "',Month1='" + Month + "',Datee='" + date + "' where ID='" + ID + "'";
            OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
            cmd1.ExecuteNonQuery();
            connection.Close();
        }

        public static List<AdmissionFee> GetAllFee()
        {
            List<AdmissionFee> admissionFee = new List<AdmissionFee>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry1 = "select ID,Class,Roll,Name,Amount,Month1,Datee from AdmissionFeeTable";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                AdmissionFee fee = new AdmissionFee();
                fee.ID = (rdr[0].ToString());
                fee.Class = rdr[1].ToString();
                fee.Roll = rdr[2].ToString();
                fee.Name = rdr[3].ToString();
                fee.Amount = (rdr[4].ToString());
                fee.Month = rdr[5].ToString();
                fee.Date = rdr[6].ToString();
                admissionFee.Add(fee);
            }
            connection.Close();
            return admissionFee;
        }
    }
}