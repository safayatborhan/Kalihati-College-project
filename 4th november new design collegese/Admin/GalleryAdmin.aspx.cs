using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm16 : System.Web.UI.Page
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
            UploadImage();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/Data/" + fileName));
            }
            Response.Redirect("~/Admin/GalleryAdmin.aspx");
        }
        private void UploadImage()
        {
            foreach (string strFileName in Directory.GetFiles(Server.MapPath("~/Data/")))  //loops through all the data inside the directory
            {
                ImageButton imageButton = new ImageButton();
                FileInfo fileinfo = new FileInfo(strFileName);
                imageButton.ImageUrl = "~/Data/" + fileinfo.Name;
                imageButton.Width = Unit.Pixel(100);
                imageButton.Height = Unit.Pixel(100);
                imageButton.Style.Add("padding", "5px");
                imageButton.Click += imageButton_Click;
                Panel1.Controls.Add(imageButton);
            }
        }
        void imageButton_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("~/GalleryImages.aspx?ImageURL=" + ((ImageButton)sender).ImageUrl);
            string ss = ((ImageButton)sender).ImageUrl;
            string sp = ss.Replace("~/Data/", "");
            File.Delete(HttpContext.Current.Server.MapPath("~/Data/" + sp));
            Response.Redirect("~/Admin/GalleryAdmin.aspx");
        }
    }
}