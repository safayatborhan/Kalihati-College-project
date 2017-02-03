using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if (TextBox1.Text == "admin" && TextBox2.Text == "ibrahimkhan")
            //{
            //    Response.Redirect("~/WelcomeAdmin.aspx");
            //}
            //else
            //{
            //    Label1.Text = "User Name and Password is not matching";
            //}
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string count = "select count (*) from LoginTable where Username = '" + TextBox1.Text + "'";
            OleDbCommand cmd = new OleDbCommand(count, connection);
            int i = int.Parse(cmd.ExecuteScalar().ToString());
            if (i == 1)
            {
                string search_pass = "select Password from LoginTable where Username = '" + TextBox1.Text + "'";
                OleDbCommand cmd1 = new OleDbCommand(search_pass, connection);
                string password = cmd1.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Redirect("~/Admin/WelcomeAdmin.aspx");
                }
                else
                {
                    Label1.Text = "Password is not correct";
                    //Response.Write("Password is not correct");
                }
                //if (TextBox1.Text == "admin" && TextBox2.Text == "kalihati")
                //{
                //    Response.Redirect("~/Admin/WelcomeAdmin.aspx");
                //}
                //else
                //{
                //    Label1.Text = "User Name and Password is not matching";
                //}
            }
            else
            {
                Label1.Text = "Username is not correct";
                //Response.Write("Username is not correct");
            }
            connection.Close();
        }
    }
}