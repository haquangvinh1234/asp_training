using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap2
{
    public partial class bai9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void lbtUploadTapTin_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void lbtXemTapTinUpload_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {
                string file = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string folderUpload = Server.MapPath("~/UploadFile/");

                // Kiểm tra xem đã tồn tại folder Upload chưa. Nếu chưa thì tạo
                if (!Directory.Exists(folderUpload))
                {
                    Directory.CreateDirectory(folderUpload);
                }
                else
                {   
                    string filePath = Path.Combine(folderUpload, file);
                    FileUpload1.SaveAs(filePath);
                    lblErorr.Text = "Thêm thành công";
                    Erorr.Style["display"] = "block";
                    LoadListBox();
                }
            }  
        }

        private void LoadListBox()
        {
            string loadFolder = Server.MapPath("~/UploadFile/");
            string[] files = Directory.GetFiles(loadFolder);

            ListBoxFileUpload.Items.Clear();

            foreach (string file in files)
            {
                ListBoxFileUpload.Items.Add(Path.GetFileName(file));
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            string targetPage = e.Item.Value;
            Response.Redirect(targetPage);
        }
    }
}