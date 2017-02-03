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
    public partial class WebForm20 : System.Web.UI.Page
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
            try
            {
                connection.Open();
                string str = "insert into Category(CategoryName) values ('" + TextBox1.Text + "')";
                OleDbCommand cmd = new OleDbCommand(str, connection);
                cmd.ExecuteNonQuery();
                TextBox1.Text = string.Empty;
                Label1.Text = "Category has been created";
            }
            catch (Exception exp)
            {
                Response.Write(exp.ToString());
            }
            finally
            {
                connection.Close();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}