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
    public partial class WebForm21 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        public string path = "";
        public string name = "";
        public string fatherName = "";
        public string motherName = "";
        public string permanentAddress = "";
        public string child = "";
        public string designation = "";
        public string department = "";
        public string blood = "";
        public string index = "";
        public string mobile = "";
        public string mpo = "";
        public string qualification = "";
        public string experience = "";
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
                if (FileUpload1.HasFile)
                {
                    string str1 = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/TeachersImage/") + str1);
                    //path = HttpContext.Current.Server.MapPath("~/uploads/") + str.ToString();
                    path = "~//TeachersImage//" + str1.ToString();
                }
                else
                {
                    path = "~//TeachersImage//" + "Untitled.jpg";
                }
                name = TextBoxName.Text;
                fatherName = TextBoxFatherName.Text;
                motherName = TextBoxMotherName.Text;
                permanentAddress = TextBoxPermanentAddress.Text;
                child = TextBoxChildNumber.Text;
                designation = TextBoxDesignation.Text;
                department = TextBoxDepartment.Text;
                blood = TextBoxBlood.Text;
                index = TextBoxIndex.Text;
                mobile = TextBoxMobile.Text;
                mpo = TextBoxMPO.Text;
                qualification = TextBoxQualification.Text;
                experience = TextBoxExperience.Text;
                string str = "insert into TeacherManagement values ('" + name + "','" + fatherName + "','" + motherName + "','" + permanentAddress + "','" + child + "','" + designation + "','" + department + "','" + blood + "','" + mobile + "','" + index + "','" + mpo + "','" + qualification + "','" + experience + "','" + path + "')";
                OleDbCommand cmd = new OleDbCommand(str, connection);
                cmd.ExecuteNonQuery();
                Label1.Text = "Data has been stored";
                TextBoxName.Text = string.Empty;
                TextBoxFatherName.Text = string.Empty;
                TextBoxMotherName.Text = string.Empty;
                TextBoxPermanentAddress.Text = string.Empty;
                TextBoxChildNumber.Text = string.Empty;
                TextBoxDesignation.Text = string.Empty;
                TextBoxDepartment.Text = string.Empty;
                TextBoxIndex.Text = string.Empty;
                TextBoxMobile.Text = string.Empty;
                TextBoxMPO.Text = string.Empty;
                TextBoxQualification.Text = string.Empty;
                TextBoxExperience.Text = string.Empty;
                TextBoxBlood.Text = string.Empty;
            }
            catch(Exception exp)
            { }
            finally
            {
                connection.Close();
            }
        }
    }
}