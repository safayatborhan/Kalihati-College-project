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
    public partial class WebForm14 : System.Web.UI.Page
    {
        static string cs1;
        OleDbConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {

            }
            else
            {
                Response.Redirect("~/AdminLogin.aspx");
            }
            connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {
                connection.Open();
                if (!IsPostBack)
                {
                    OleDbDataReader myReader;
                    string command2 = "select * from Category";
                    OleDbCommand cmd2 = new OleDbCommand(command2, connection);
                    myReader = cmd2.ExecuteReader();
                    while (myReader.Read())
                    {
                        string sName = myReader.GetString(1);
                        DropDownList1.Items.Add(sName);
                    }
                }
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                GridView1.Visible = false;
                connection.Open();
                string qry = "select sName,Image,Description from AddNotice where Category = '" + DropDownList1.SelectedItem.ToString() + "'";
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry = "delete from AddNotice";
                string qry1 = "delete from Category";
                OleDbCommand cmd = new OleDbCommand(qry, connection);
                cmd.ExecuteNonQuery();
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                cmd1.ExecuteNonQuery();
                Label4.Text = "All data deleted";
                Response.Redirect("~/Admin/AllNotice.aspx");
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