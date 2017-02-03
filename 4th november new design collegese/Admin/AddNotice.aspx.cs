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
    public partial class WebForm12 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        string path = "";
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
            catch (Exception exp)
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
                if (FileUpload1.HasFile)
                {
                    string str = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/uploads/") + str);
                    //path = HttpContext.Current.Server.MapPath("~/uploads/") + str.ToString();
                    path = "~//uploads//" + str.ToString();
                }
                else
                {
                    path = "~//uploads//" + "Untitled.jpg";
                }
                //Response.Write(HttpContext.Current.Server.MapPath("~/uploads/") + FileUpload1.FileName);
                Label2.Text = path;
                connection.Open();
                string des = TextBox2.Text;

                string qry = "insert into AddNotice values ('" + DropDownList1.SelectedItem.ToString() + "','" + TextBox1.Text + "','" + path.ToString() + "','" + TextBox2.Text.Replace("'","") + "')";
                OleDbCommand cmd = new OleDbCommand(qry, connection);
                // Label2.Text = DropDownList1.SelectedItem.ToString();
                cmd.ExecuteNonQuery();
                Label2.Text = "Data has been stored";
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
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