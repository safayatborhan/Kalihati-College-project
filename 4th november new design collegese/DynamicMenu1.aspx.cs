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
    public partial class WebForm4 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        PagedDataSource pg = new PagedDataSource();
        string menuName = "";
        int pos;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos = (int)this.ViewState["vs"];
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {

                connection.Open();
                string str = "select CategoryName from Category";
                OleDbDataAdapter adp = new OleDbDataAdapter(str, connection);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                //DataList1.DataSource = dt;
                DataBind();


                //LinkButton myButton = sender as LinkButton;
                //Label5.Text = myButton.Text;
                string searchingCategory = StringPass.pass;
                
                //connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
                string str1 = "select sName,Image,Description from AddNotice where Category='" + searchingCategory + "'";
                OleDbDataAdapter adp1 = new OleDbDataAdapter(str1, connection);
                DataTable dt1 = new DataTable();
                adp1.Fill(dt1);
                pg.DataSource = dt1.DefaultView;

                pg.AllowPaging = true;
                pos = 0;
                pg.CurrentPageIndex = pos;
                pg.PageSize = 3;
                DataList2.DataSource = pg;
                DataList2.DataBind();
            }
            catch (Exception exp)
            {

            }
            finally
            {
                connection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            pos = (int)this.ViewState["vs"];
            pos -= 1;
            this.ViewState["vs"] = pos;
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            string str = "select sName,Image,Description from AddNotice where Category='" + StringPass.pass + "'";
            OleDbDataAdapter adp = new OleDbDataAdapter(str, connection);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            //DataList2.DataSource = dt;

            pg.DataSource = dt.DefaultView;

            pg.AllowPaging = true;
            pg.CurrentPageIndex = pos;
            pg.PageSize = 3;
            DataList2.DataSource = pg;
            DataList2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            pos = (int)this.ViewState["vs"];
            pos += 1;
            this.ViewState["vs"] = pos;
            string str = "select sName,Image,Description from AddNotice where Category='" + StringPass.pass + "'";
            OleDbDataAdapter adp = new OleDbDataAdapter(str, connection);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            //DataList2.DataSource = dt;

            pg.DataSource = dt.DefaultView;

            pg.AllowPaging = true;
            pg.CurrentPageIndex = pos;
            pg.PageSize = 3;
            DataList2.DataSource = pg;
            DataList2.DataBind();
        }
    }
}