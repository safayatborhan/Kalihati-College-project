using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBoxPAdd(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StudentN student = new StudentN();
            student.StudentName = TextBoxSN.Text;
            student.FatherName = TextBoxFN.Text;
            student.DOP = TextBoxDOP.Text;
            student.Sex = DropDownListSex.SelectedItem.Text;
            student.Religion = TextBoxRlg.Text;
            student.Email = TextBoxEmail.Text;
            student.ContactNo = txtCN.Text;
            student.SSCResutl = TextBoxSSCRslt.Text;
            student.Group = DropDownListGroup.SelectedItem.Text;
            student.ParmanentAdress = TextBoxPadd.Text;
            student.Homedistrict = TextBoxHD.Text;


            Gateway stu = new Gateway();
            var i = Gateway.InsertAdmissionInfo(student);
            Response.Redirect("Admission2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}