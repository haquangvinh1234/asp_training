using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4
{
    public partial class bai3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Session["fullname"] = txtHoten.Text;
                Session["username"] = txtTentaikhoan.Text;
                Session["password"] = txtMatkhau.Text;
                Session["confirmPass"] = txtNhaplaimatkhau.Text;
                Session["namsinh"] = txtNgaycheck.Text;
                Session["email"] = txtEmail.Text;
                Session["diachi"] = txtSongayo.Text;
                Session["sothich"] = txtSothich.Text;

                thongbao.Style["display"] = "block";
            }
        }
    }
}