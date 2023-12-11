using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap2
{
    public partial class bai5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInDonDatHang_Click(object sender, EventArgs e)
        {
          
            if (txtDiaChi.Text == null || txtDiaChi.Text.Length == 0 || txtKhachhang.Text == null || txtKhachhang.Text.Length == 0
                || txtMaSoThue.Text == null || txtMaSoThue.Text.Length == 0 || txtSoLuong.Text == null || txtSoLuong.Text.Length == 0)
            {
                lblErorr.Text = "Không được để trống";
                lblEror.Style["display"] = "block";
            }else if (ListBoxDanhSachBanh.Items.Count == 0)
            {
                lblErorr.Text = "Danh sách Bánh đang trống";
                lblEror.Style["display"] = "block";
            }
            else
            {
                lblErorr.Text = "";
                lblEror.Style["display"] = "none";
                XuatInHoaDon.Style["display"] = "block";

                ListBoxDanhSachBanh.SelectedIndex = 0;
                lblXuatKhachHang2.Text = txtKhachhang.Text.ToString();
                lblXuatDiaChi2.Text = txtDiaChi.Text.ToString();
                lblXuatMaSoThue2.Text = txtMaSoThue.Text.ToString();

                List<string> danhSachBanh = new List<string>();
                foreach (ListItem item in ListBoxDanhSachBanh.Items)
                {
                    danhSachBanh.Add(item.Text);
                }
                Session["DanhSachBanh"] = danhSachBanh;

                Show();
            } 
        }

            private void Show()
            {
             
                List<string> danhSachBanh = Session["DanhSachBanh"] as List<string>;
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[2] { new DataColumn("TenBanh"), new DataColumn("SoLuong") });
                foreach (string banh in danhSachBanh)
                {
                string input = banh;
                string pattern = @"\(([^)]*)\)"; // Mô tả mẫu regex để lấy dữ liệu trong dấu ngoặc đơn

                Match match = Regex.Match(input, pattern); // Tìm các chuỗi khớp với mẫu regex
                if (match.Success)
                {
                    // Lấy giá trị trong dấu ngoặc đơn từ kết quả khớp và gắn vào cột Số lượng 
                    string result = match.Groups[1].Value; 
                    dt.Rows.Add(banh, result);
                }
                else
                {
                    Console.WriteLine("Không tìm thấy dữ liệu trong dấu ngoặc đơn");
                }
              
                }
                GridViewHienThiBanh.DataSource = dt;
                GridViewHienThiBanh.DataBind();

            }

            protected void Button1_Click(object sender, EventArgs e)
             {
            string selectedItem = DropDownListCacLoaiBanh.SelectedItem.Text;
            string soluong = txtSoLuong.Text;
            if (string.IsNullOrEmpty(soluong))
            {
                lblErorr.Text = "Chưa có số lượng";
                lblEror.Style["display"] = "block";
            }
            else
            {
                lblErorr.Text = "";
                lblEror.Style["display"] = "none";
                ListBoxDanhSachBanh.Items.Add(new ListItem(selectedItem + " (" + soluong + ")", selectedItem));
              //  DropDownListCacLoaiBanh.SelectedIndex = 0;
                //txtSoLuong.Text = "";
            }
        }

        protected void imgBtn_Click(object sender, ImageClickEventArgs e)
        {
            int indexToRemove = ListBoxDanhSachBanh.SelectedIndex; // Lấy vị trí mục được chọn
            if (indexToRemove != -1) // Kiểm tra xem có mục được chọn không
            {
                ListBoxDanhSachBanh.Items.RemoveAt(indexToRemove); // Xóa mục theo vị trí
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            string targetPage = e.Item.Value;
            Response.Redirect(targetPage);
        }
    }
}