using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm33 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {
                if (!IsPostBack)
                {
                    connection.Open();
                    string qry = "select StudentManagement2.Image, AdmissionFeeTable.Class as Class,AdmissionFeeTable.Roll as Roll,AdmissionFeeTable.Name as Name,StudentManagement2.FatherName,StudentManagement2.MotherName,StudentManagement2.Result,AdmissionFeeTable.Amount,AdmissionFeeTable.Month1 as Month1,AdmissionFeeTable.Datee as Date1 from AdmissionFeeTable, StudentManagement2 where AdmissionFeeTable.Roll=StudentManagement2.Roll and AdmissionFeeTable.Class=StudentManagement2.Class";
                    OleDbDataAdapter adp = new OleDbDataAdapter(qry, connection);
                    DataTable dt = new DataTable();
                    adp.Fill(dt);
                    GridView1.DataSource = dt;
                    DataBind();
                }
                
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {
                connection.Open();
                string qry = "select AdmissionFeeTable.Class as Class,AdmissionFeeTable.Roll as Roll,AdmissionFeeTable.Name as Name,StudentManagement2.FatherName,StudentManagement2.MotherName,StudentManagement2.Result,AdmissionFeeTable.Amount,AdmissionFeeTable.Month1 as Month1,AdmissionFeeTable.Datee as Date1 from AdmissionFeeTable, StudentManagement2 where AdmissionFeeTable.Roll=StudentManagement2.Roll and AdmissionFeeTable.Class=StudentManagement2.Class";
                OleDbDataAdapter adp = new OleDbDataAdapter(qry, connection);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView1.DataSource = dt;
                DataBind();
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }
    }
}