using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _4th_november_new_design_collegese
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = Request.QueryString["ImageURL"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Gallery.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Gallery.aspx");
        }
    }
}