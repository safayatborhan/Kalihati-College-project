using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;


namespace _4th_november_new_design_collegese
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                GridView1.Visible = false;
                connection.Open();
                string qry = "select Roll,sName,Result,Section2 from StudentManagement2 where Class = '" + DropDownList1.SelectedItem.ToString() + "'";
                OleDbDataAdapter adp = new OleDbDataAdapter(qry, connection);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView2.DataSource = dt;
                DataBind();
            }
            catch (Exception exp)
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                GridView1.Visible = false;
                connection.Open();
                string qry = "select Roll,sName,Result,Class,Section2 from StudentManagement2 where Department = '" + DropDownList2.SelectedItem.ToString() + "'";
                OleDbDataAdapter adp = new OleDbDataAdapter(qry, connection);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView2.DataSource = dt;
                DataBind();
            }
            catch (Exception exp)
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                GridView1.Visible = false;
                connection.Open();
                string qry = "select Roll,sName,Result,Class,Section2,Department from StudentManagement2 where sYear = '" + DropDownList3.SelectedItem.ToString() + "'";
                OleDbDataAdapter adp = new OleDbDataAdapter(qry, connection);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView2.DataSource = dt;
                DataBind();
            }
            catch (Exception exp)
            { }
            finally
            {
                connection.Close();
            }
        }
    }
}