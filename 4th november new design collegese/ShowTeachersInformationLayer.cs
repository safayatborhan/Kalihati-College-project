using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _4th_november_new_design_collegese
{
    public class Teacher
    {
        OleDbConnection connection = new OleDbConnection();
        public string name
        { get; set; }
        public string fatherName
        { get; set; }
        public string motherName
        { get; set; }
        public string permanentAddress
        { get; set; }
        public string child
        { get; set; }
        public string image
        { get; set; }
        public string designation
        { get; set; }
        public string department
        { get; set; }
        public string blood
        { get; set; }
        public string mobile
        { get; set; }
        public string index
        { get; set; }
        
        public string mpo
        { get; set; }
        public string qualification
        { get; set; }
        public string experience
        { get; set; }
    }

    public class ShowTeachersInformationLayer
    {
        public static void UpdateStudent(string name,string fatherName,string motherName,string permanentAddress,string child, string image, string designation, string department, string blood, string index, string mobile, string mpo, string qualification, string experience)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "update TeacherManagement SET TeacherName='" + name + "',FatherName='" + fatherName + "',MotherName='" + motherName + "',PermanentAddress='" + permanentAddress + "',Child='" + child + "',Designation='" + designation + "',Department='" + department + "',Blood='" + blood + "',MobileNo='" + mobile + "',IndexNo='" + index + "',MPODate='" + mpo + "',Qualification='" + qualification + "',Experience='" + experience + "' where Image = '" + image + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static void DeleteStudent(string image)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry = "delete from TeacherManagement where Image = '" + image + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static List<Teacher> GetAllTeacher()
        {
            List<Teacher> listTeacher = new List<Teacher>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            connection.Open();
            string qry1 = "select Image,TeacherName,FatherName,MotherName,PermanentAddress,Child,Designation,Department,Blood,MobileNo,IndexNo,MPODate,Qualification,Experience from TeacherManagement";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Teacher teacher = new Teacher();
                //tea.image = rdr[0].ToString();
                //student.rollNumber = rdr[1].ToString();
                //student.name = rdr[2].ToString();
                //student.result = rdr[3].ToString();
                //listStudent.Add(student);
                teacher.image = rdr[0].ToString();
                teacher.name = rdr[1].ToString();
                teacher.fatherName = rdr[2].ToString();
                teacher.motherName = rdr[3].ToString();
                teacher.permanentAddress = rdr[4].ToString();
                teacher.child = rdr[5].ToString();
                teacher.designation = rdr[6].ToString();
                teacher.department = rdr[7].ToString();
                teacher.blood = rdr[8].ToString();
                teacher.mobile = rdr[9].ToString();
                teacher.index = rdr[10].ToString();
                teacher.mpo = rdr[11].ToString();
                teacher.qualification = rdr[12].ToString();
                teacher.experience = rdr[13].ToString();
                listTeacher.Add(teacher);
            }
            connection.Close();
            return listTeacher;
        }
    }
}