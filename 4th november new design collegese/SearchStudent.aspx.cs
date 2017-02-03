using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        PagedDataSource pg = new PagedDataSource();
        int pos;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {
                connection.Open();
                string str1 = "select Image,sName,FatherName,MotherName,Result from StudentManagement2 where Roll='" + TextBox1.Text + "'";
                //string str1 = "select sName,Image,Description from AddNotice where Category='" + TextBox1.Text + "'";
                OleDbDataAdapter adp1 = new OleDbDataAdapter(str1, connection);
                DataTable dt1 = new DataTable();
                adp1.Fill(dt1);
                pg.DataSource = dt1.DefaultView;
                pg.AllowPaging = true;
                pos = 0;
                pg.CurrentPageIndex = pos;
                pg.PageSize = 1;
                DataList1.DataSource = pg;
                DataList1.DataBind();

            }
            catch
            {
            }
            finally
            {
                connection.Close();
            }
        }
    }
}