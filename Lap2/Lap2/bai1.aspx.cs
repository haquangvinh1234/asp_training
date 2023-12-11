using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap2
{
    public partial class bai1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            string hoten = txtHoten.Text;
            string email = txtEmail.Text;
            string dienthoai = txtDienthoai.Text;
            string diachi = txtADiachi.Text;
            if (txtHoten.Text == null || txtHoten.Text.Length == 0
                || txtEmail.Text == null || txtEmail.Text.Length == 0
                || txtDienthoai.Text == null || txtDienthoai.Text.Length == 0
                || txtADiachi.Text == null || txtADiachi.Text.Length == 0
                || (!rdbNam.Checked && !rdbNu.Checked))
            {
                erorr.Text = "Không được để trống";
            }else
            {
                erorr.Text = "";
                lblXuathoten.Text = "Họ tên khách hàng: " + hoten.ToString();
                if (rdbNam.Checked)
                {
                    lblXuatgioitinh.Text = "Giới tính: " + rdbNam.Text.ToString();
                }else if (rdbNu.Checked)
                {
                    lblXuatgioitinh.Text = "Giới tính: " + rdbNu.Text.ToString();
                }else
                {
                    lblXuatgioitinh.Text = "Giới tính: ";
                }
             
                lblXuatemail.Text = "Email: " + email.ToString();
                lblXuatdiachi.Text = "Địa chỉ: " + diachi.ToString();
                lblXuatdienthoai.Text = "Điện thoại: " + dienthoai.ToString();
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            string targetPage = e.Item.Value;
            Response.Redirect(targetPage);
        }
    }
}