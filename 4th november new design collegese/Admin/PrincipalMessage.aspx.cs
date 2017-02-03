using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm17 : System.Web.UI.Page
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
                string str = "update PrincipalSection set PrincipalMessage = '" + TextBox1.Text + "' where (Number = " + 1 + ")";
                connection.Open();
                OleDbCommand cmd = new OleDbCommand(str, connection);
                cmd.ExecuteNonQuery();
                TextBox1.Text = String.Empty;
                Label2.Text = "Principal Message has been Saved Sucessfully";
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