using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {

            }
            else
            {
                Response.Redirect("~/AdminLogin.aspx");
            }
            Guid guid = Guid.NewGuid();
            //LabelGUID.Text = guid.ToString();
            //LabelGUID0.Text = guid.ToString();
        }
        protected void LinkButtonExpenseInsertIntoTable_Click(object sender, EventArgs e)
        {

            ObjectDataSource1.InsertParameters["Purpose"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("TextBoxPurposeInsert11")).Text;
            ObjectDataSource1.InsertParameters["Amount"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("TextBoxAmountInsert11")).Text;
            ObjectDataSource1.InsertParameters["Month"].DefaultValue = ((DropDownList)GridView3.FooterRow.FindControl("DropDownList34775")).SelectedItem.ToString();
            ObjectDataSource1.InsertParameters["Datee"].DefaultValue = ((Calendar)GridView3.FooterRow.FindControl("PrettyCalendar111")).SelectedDate.ToShortDateString();
            ObjectDataSource1.Insert();
        }
    }
}