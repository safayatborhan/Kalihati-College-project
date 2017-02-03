using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.OleDb;
using System.IO;
using System.Data;

namespace _4th_november_new_design_collegese
{
    public class Global : System.Web.HttpApplication
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["visitor"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            int counter = Convert.ToInt32(Application["visitor"]) + 1;
            Application["visitor"] = counter;

            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {
                connection.Open();
                string getHitQry = "select hitCount from Hitcounter";
                OleDbCommand cmdd = new OleDbCommand(getHitQry, connection);
                cmdd.ExecuteNonQuery();
                double hit = 0;
                hit = double.Parse(cmdd.ExecuteScalar().ToString());
                hit = hit + 1;
                string updateHitQry = "update Hitcounter SET hitCount = '" + (hit) + "' where name = 'hit' ";
                OleDbCommand cmdhit = new OleDbCommand(updateHitQry, connection);
                cmdhit.ExecuteNonQuery();
                StringPass.hitCountPass = hit;
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}