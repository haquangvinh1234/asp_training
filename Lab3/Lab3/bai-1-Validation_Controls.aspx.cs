using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class bai_1_Validation_Controls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            string hoten = txtHoten.Text;
            string coquan = txtCoquan.Text;
            string matkhau = txtMatkhau.Text;
            string nhaplaiMk = txtNhaplaimatkhau.Text;
            string ngaycheck = txtNgaycheck.Text;
            string songayo = txtSongayo.Text;
            string loaiphong = ddlDanhSachPhong.SelectedItem.Text;
            string email = txtEmail.Text;

            if (string.IsNullOrEmpty(hoten) || string.IsNullOrEmpty(coquan) || string.IsNullOrEmpty(matkhau)
              || string.IsNullOrEmpty(nhaplaiMk) || string.IsNullOrEmpty(ngaycheck) || string.IsNullOrEmpty(songayo)
                || string.IsNullOrEmpty(loaiphong) || string.IsNullOrEmpty(email))
            {
                lblWelcome.Text = "";
            }
            else
            {
                lblWelcome.Text = "Chào mừng " + hoten.ToString() + " đã đăng ký thành công !";
                lblBase_info.Text = "Thông tin cơ bản của bạn:";
                baseHoten.Text = "Họ tên: " + hoten.ToString();
                baseCoquan.Text = "Cơ quan: " + coquan.ToString();
                baseEmail.Text = "Email đăng ký: " + email.ToString();
                basePass.Text = "Mật khẩu: " + matkhau.ToString();
               // baseComfirmPass.Text = nhaplaiMk.ToString();
                baseNgaycheck.Text = "Ngày check: " + ngaycheck.ToString();
                baseSongayo.Text = "Số ngày ở: " + songayo.ToString();
                baseLoaiPhong.Text = "Loại phòng: " + loaiphong.ToString();  
            }
        }
    }
}