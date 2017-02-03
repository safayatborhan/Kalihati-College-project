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
    public partial class WebForm19 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {

            }
            else
            {
                Response.Redirect("~/AdminLogin.aspx");
            }
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
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

        protected void Button2_Click1(object sender, EventArgs e)
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

        protected void Button3_Click1(object sender, EventArgs e)
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

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string str = "delete from StudentManagement2";
                OleDbCommand cmd = new OleDbCommand(str, connection);
                cmd.ExecuteNonQuery();
                Label5.Text = "All data has been deleted";
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