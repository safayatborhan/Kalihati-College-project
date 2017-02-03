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
    public partial class WebForm11 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        public String path = "";
        public string name = "";
        public string fathersName = "";
        public string mothersName = "";
        public string rollNumber = "";
        public string result = "";
        public string year = "";
        public string Class = "";
        public string department = "";
        public string section = "";
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
                if (FileUpload1.HasFile)
                {
                    string str1 = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/uploads/") + str1);
                    //path = HttpContext.Current.Server.MapPath("~/uploads/") + str.ToString();
                    path = "~//uploads//" + str1.ToString();
                }
                else
                {
                    path = "~//uploads//" + "Untitled.jpg";
                }
                name = nameTextbox.Text;
                rollNumber = rollTextbox.Text;
                fathersName = fatherNameTextbox.Text;
                mothersName = motherNameTextbox.Text;
                result = resultTextbox.Text;
                year = yearDropdown.SelectedItem.ToString();
                Class = classDropdown.SelectedItem.ToString();
                department = departmentDropdown.SelectedItem.ToString();
                section = SectionDropDownList.SelectedItem.ToString();
                connection.Open();
                string str = "insert into StudentManagement2 values ('" + rollNumber + "','" + name + "','" + path + "','" + fathersName + "','" + mothersName + "','" + result + "','" + year + "','" + Class + "','" + department + "','" + section + "')";
                OleDbCommand cmd = new OleDbCommand(str, connection);
                cmd.ExecuteNonQuery();
                Label1.Text = "Data has been stored";
                nameTextbox.Text = string.Empty;
                rollTextbox.Text = string.Empty;
                fatherNameTextbox.Text = string.Empty;
                motherNameTextbox.Text = string.Empty;
                resultTextbox.Text = string.Empty;
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/StudentDatabase.aspx");
        }
    }
}