using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm30 : System.Web.UI.Page
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
        }

        protected void LinkButtonIncomeInsertIntoTable_Click(object sender, EventArgs e)
        {
            ObjectDataSource3.InsertParameters["Purpose"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("TextBoxPurposeInsert11")).Text;
            ObjectDataSource3.InsertParameters["Amount"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("TextBoxAmountInsert11")).Text;
            ObjectDataSource3.InsertParameters["Month"].DefaultValue = ((DropDownList)GridView3.FooterRow.FindControl("DropDownList34785")).SelectedItem.ToString();
            ObjectDataSource3.InsertParameters["Datee"].DefaultValue = ((Calendar)GridView3.FooterRow.FindControl("PrettyCalendar111")).SelectedDate.ToShortDateString();
            ObjectDataSource3.Insert();
        }

        protected void LinkButtonMonthlyFeeInsertIntoTable_Click(object sender, EventArgs e)
        {
            ObjectDataSource2.InsertParameters["Class"].DefaultValue = ((DropDownList)GridView4.FooterRow.FindControl("DropDownList10")).SelectedItem.ToString();
            ObjectDataSource2.InsertParameters["Roll"].DefaultValue = ((TextBox)GridView4.FooterRow.FindControl("TextBoxRollInsert1")).Text;
            ObjectDataSource2.InsertParameters["Name"].DefaultValue = ((TextBox)GridView4.FooterRow.FindControl("TextBoxNameInsert1")).Text;
            ObjectDataSource2.InsertParameters["Amount"].DefaultValue = ((TextBox)GridView4.FooterRow.FindControl("TextBoxAmountInsert1")).Text;
            ObjectDataSource2.InsertParameters["Month"].DefaultValue = ((DropDownList)GridView4.FooterRow.FindControl("DropDownList345")).SelectedItem.ToString();
            ObjectDataSource2.InsertParameters["Date"].DefaultValue = ((Calendar)GridView4.FooterRow.FindControl("PrettyCalendar1")).SelectedDate.ToShortDateString();
            ObjectDataSource2.Insert();
        }
        
        protected void InsertLinkButton_Click(object sender, EventArgs e)
        {
            double num = 500;
            //ObjectDataSource1.InsertParameters["Class"].DefaultValue = ((DropDownList)GridView2.FooterRow.FindControl("DropDownList1")).SelectedItem.ToString();
            //ObjectDataSource1.InsertParameters["Roll"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxRollInsert")).Text;
            //ObjectDataSource1.InsertParameters["Name"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxNameInsert")).Text;
            //ObjectDataSource1.InsertParameters["Amount"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxAmountInsert")).Text;
            //ObjectDataSource1.InsertParameters["Date"].DefaultValue = ((Calendar)GridView2.FooterRow.FindControl("PrettyCalendar")).SelectedDate.ToShortDateString();
            

            ObjectDataSource1.InsertParameters["Class"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownList1")).SelectedItem.ToString();
            ObjectDataSource1.InsertParameters["Roll"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxRollInsert")).Text;
            ObjectDataSource1.InsertParameters["Name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNameInsert")).Text;
            ObjectDataSource1.InsertParameters["Amount"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxAmountInsert")).Text;
            ObjectDataSource1.InsertParameters["Month"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownList3475")).SelectedItem.ToString();
            ObjectDataSource1.InsertParameters["Date"].DefaultValue = ((Calendar)GridView1.FooterRow.FindControl("PrettyCalendar")).SelectedDate.ToShortDateString();
            
            
            //ObjectDataSource1.InsertParameters["Class"].DefaultValue = "1";
            //ObjectDataSource1.InsertParameters["Roll"].DefaultValue = "1";
            //ObjectDataSource1.InsertParameters["Name"].DefaultValue = "zisan";
            //ObjectDataSource1.InsertParameters["Amount"].DefaultValue = "500";
            //ObjectDataSource1.InsertParameters["Date"].DefaultValue = "11";
            ObjectDataSource1.Insert();
        }
    }
}