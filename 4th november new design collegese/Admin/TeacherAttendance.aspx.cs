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
    public partial class WebForm35 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {

            }
            else
            {
                Response.Redirect("~/TeacherAttendance.aspx");
            }
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            CheckBox ch;
            Label lb;
            string str = "";
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                ch = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                lb = (Label)GridView1.Rows[i].FindControl("Label1");
                if (ch.Checked)
                {
                    //ListBox1.Items.Add(lb.Text.ToString());
                    str += lb.Text+",";
                    
                }
            }
            Label2.Text = "Data stored";
            try
            {
                connection.Open();
                string countInfo = "select count(*) from TeacherAttendance where Datee='" + PrettyCalendar111.SelectedDate.ToShortDateString() + "'";
                OleDbCommand cmd1 = new OleDbCommand(countInfo, connection);
                int i = int.Parse(cmd1.ExecuteScalar().ToString());
                if (i == 0)
                {
                    string datee = PrettyCalendar111.SelectedDate.ToShortDateString();
                    string insertQuery = "insert into TeacherAttendance values('" + datee + "','" + str + "')";
                    OleDbCommand cmd = new OleDbCommand(insertQuery, connection);
                    cmd.ExecuteNonQuery();
                }
                if (i > 0)
                {
                    string datee = PrettyCalendar111.SelectedDate.ToShortDateString();
                    string insertQuery = "update TeacherAttendance set TeacherNames='" + str + "' where Datee='" + datee + "'";
                    OleDbCommand cmd = new OleDbCommand(insertQuery, connection);
                    cmd.ExecuteNonQuery();
                }
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
            //ListBox1.Items.Add(str);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string searchQuery = "select TeacherNames from TeacherAttendance where Datee='" + PrettyCalendar111.SelectedDate.ToShortDateString() + "'";
                OleDbCommand cmd = new OleDbCommand(searchQuery, connection);
                string str = cmd.ExecuteScalar().ToString();
                ListBox1.Items.Add(str);
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }
    }
}