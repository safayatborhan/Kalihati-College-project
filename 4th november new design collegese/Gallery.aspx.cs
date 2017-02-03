using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UploadImage();
        }

        private void UploadImage()
        {
            foreach (string strFileName in Directory.GetFiles(Server.MapPath("~/Data/")))  //loops through all the data inside the directory
            {
                ImageButton imageButton = new ImageButton();
                FileInfo fileinfo = new FileInfo(strFileName);
                imageButton.ImageUrl = "~/Data/" + fileinfo.Name;
                imageButton.Width = Unit.Pixel(200);
                imageButton.Height = Unit.Pixel(200);
                imageButton.Style.Add("padding", "5px");
                imageButton.Click += imageButton_Click;
                Panel1.Controls.Add(imageButton);
            }
        }
        void imageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/GalleryImages.aspx?ImageURL=" + ((ImageButton)sender).ImageUrl);
        }
    }
}