using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap2
{
    public partial class bai3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ltbImg_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedImage = ltbImg.SelectedValue;
            string ImagePath = "/Image/"+ selectedImage +".jpg";
            displayImage.ImageUrl = ImagePath;
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            string targetPage = e.Item.Value;
            Response.Redirect(targetPage);
        }
    }
}