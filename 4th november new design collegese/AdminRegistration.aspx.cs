using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.Data;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm28 : System.Web.UI.Page
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
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {
                connection.Open();
                string qry = "insert into LoginTable values ('" + TextBox1.Text + "','" + TextBox2.Text + "')";
                OleDbCommand cmd = new OleDbCommand(qry, connection);
                cmd.ExecuteNonQuery();
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                Label1.Text = "New Username and Password have created";
            }
            catch
            { }
            finally
            {
                connection.Close();
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
            }
        }
    }
}