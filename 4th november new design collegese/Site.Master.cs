using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
using System.Data;

namespace _4th_november_new_design_collegese
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public string pp;
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            LblCount.Text = Application["visitor"].ToString();

            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {



                connection.Open();
                visitNumber.Text = StringPass.hitCountPass.ToString();


                string qry1 = "select Notice from FilesTable where Number=" + 1 + "";
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                cmd1.ExecuteNonQuery();
                Label4.Text = cmd1.ExecuteScalar().ToString();

                string qry2 = "select Notice from FilesTable where Number=" + 2 + "";
                OleDbCommand cmd2 = new OleDbCommand(qry2, connection);
                cmd2.ExecuteNonQuery();
                Label5.Text = cmd2.ExecuteScalar().ToString();

                string qry3 = "select Notice from FilesTable where Number=" + 3 + "";
                OleDbCommand cmd3 = new OleDbCommand(qry3, connection);
                cmd3.ExecuteNonQuery();
                Label6.Text = cmd3.ExecuteScalar().ToString();

                string qry4 = "select PrincipalMessage from PrincipalSection where Number=" + 1 + "";
                OleDbCommand cmd4 = new OleDbCommand(qry4, connection);
                cmd4.ExecuteNonQuery();
                //Label7.Text = cmd4.ExecuteScalar().ToString();

                string str = "select CategoryName from Category";
                OleDbDataAdapter adp = new OleDbDataAdapter(str, connection);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                DataList1.DataSource = dt;
                DataBind();


            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            LinkButton myButton = sender as LinkButton;
            //Label8.Text = myButton.Text;
            StringPass.pass = myButton.Text;
            Response.Redirect("~/DynamicMenu.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry1 = "select Upload from FilesTable where Number=" + 1 + "";
                OleDbCommand cmd = new OleDbCommand(qry1, connection);
                cmd.ExecuteNonQuery();

                string fileName = cmd.ExecuteScalar().ToString();
                string fileExtension = ".txt/.jpg/.pdf/.docx/.xls";

                // Set Response.ContentType
                Response.ContentType = GetContentType(fileExtension);

                // Append header
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

                // Write the file to the Response
                Response.TransmitFile(Server.MapPath("~/Files/" + fileName));
                Response.End();
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry1 = "select Upload from FilesTable where Number=" + 2 + "";
                OleDbCommand cmd = new OleDbCommand(qry1, connection);
                cmd.ExecuteNonQuery();

                string fileName = cmd.ExecuteScalar().ToString();
                string fileExtension = ".txt/.jpg/.pdf/.docx/.xls";

                // Set Response.ContentType
                Response.ContentType = GetContentType(fileExtension);

                // Append header
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

                // Write the file to the Response
                Response.TransmitFile(Server.MapPath("~/Files/" + fileName));
                Response.End();
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry1 = "select Upload from FilesTable where Number=" + 3 + "";
                OleDbCommand cmd = new OleDbCommand(qry1, connection);
                cmd.ExecuteNonQuery();

                string fileName = cmd.ExecuteScalar().ToString();
                string fileExtension = ".txt/.jpg/.pdf/.docx/.xls";

                // Set Response.ContentType
                Response.ContentType = GetContentType(fileExtension);

                // Append header
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

                // Write the file to the Response
                Response.TransmitFile(Server.MapPath("~/Files/" + fileName));
                Response.End();
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }
        private string GetContentType(string fileExtension)
        {
            if (string.IsNullOrEmpty(fileExtension))
                return string.Empty;

            string contentType = string.Empty;
            switch (fileExtension)
            {
                case ".htm":
                case ".html":
                    contentType = "text/HTML";
                    break;

                case ".txt":
                    contentType = "text/plain";
                    break;

                case ".doc":
                case ".rtf":
                case ".docx":
                    contentType = "Application/msword";
                    break;

                case ".xls":
                case ".xlsx":
                    contentType = "Application/x-msexcel";
                    break;

                case ".jpg":
                case ".jpeg":
                    contentType = "image/jpeg";
                    break;

                case ".gif":
                    contentType = "image/GIF";
                    break;

                case ".pdf":
                    contentType = "application/pdf";
                    break;
            }

            return contentType;
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/message1.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/message2.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/message3.aspx");
        }
    }
}