using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.OleDb;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm18 : System.Web.UI.Page
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
            try
            {
                //Response.Write((HttpContext.Current.Server.MapPath("~/Files/")));
            }
            catch (Exception exp)
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "";
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {
                //Response.Write((HttpContext.Current.Server.MapPath("~/Files/")));
                if (FileUpload1.HasFile)
                {
                    str = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/Files/") + str);
                }
                connection.Open();
                string qry1 = "update FilesTable set Notice = '" + TextBox1.Text + "' where (Number = " + 1 + ")";
                string qry2 = "update FilesTable set Upload = '" + str + "' where (Number = " + 1 + ")";
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                OleDbCommand cmd2 = new OleDbCommand(qry2, connection);
                cmd1.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                TextBox1.Text = string.Empty;
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
            string str = "";
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {
                //Response.Write((HttpContext.Current.Server.MapPath("~/Files/")));
                if (FileUpload2.HasFile)
                {
                    str = FileUpload2.FileName;
                    FileUpload2.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/Files/") + str);
                }
                connection.Open();
                string qry1 = "update FilesTable set Notice = '" + TextBox2.Text + "' where (Number = " + 2 + ")";
                string qry2 = "update FilesTable set Upload = '" + str + "' where (Number = " + 2 + ")";
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                OleDbCommand cmd2 = new OleDbCommand(qry2, connection);
                cmd1.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                TextBox2.Text = string.Empty;
            }
            catch (Exception exp)
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string str = "";
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {
                //Response.Write((HttpContext.Current.Server.MapPath("~/Files/")));
                if (FileUpload3.HasFile)
                {
                    str = FileUpload3.FileName;
                    FileUpload3.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/Files/") + str);
                }
                connection.Open();
                string qry1 = "update FilesTable set Notice = '" + TextBox3.Text + "' where (Number = " + 3 + ")";
                string qry2 = "update FilesTable set Upload = '" + str + "' where (Number = " + 3 + ")";
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                OleDbCommand cmd2 = new OleDbCommand(qry2, connection);
                cmd1.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                TextBox3.Text = string.Empty;
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