using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Lab7
{
    public partial class design : System.Web.UI.Page
    {
        public static string chuoiKetnoi = "Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=QL_SanPham;Integrated Security=True";
        public static SqlConnection con = new SqlConnection(chuoiKetnoi);
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }

        public void HienThi()
        {
            try
            {
                string load = "select * from tbl_sanpham";
                SqlDataAdapter adapter = new SqlDataAdapter(load, con);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                grvDSSP.DataSource = dataTable;
                grvDSSP.DataBind();
            }
            catch (Exception)
            {
                lblErorr.Style["color"] = "red";
                lblErorr.Text = "Lỗi Kết Nối";
            }
          
        }

        protected void grvDSSP_SelectedIndexChanged(object sender, EventArgs e)
        {
            try {
                string load = "select * from tbl_sanpham";
                SqlDataAdapter adapter = new SqlDataAdapter(load, con);
                DataTable table = new DataTable();
                adapter.Fill(table);

                int a = grvDSSP.SelectedIndex;
                int trang = grvDSSP.PageIndex;

                txtMaSP.Text = table.Rows[trang * 3 + a][0].ToString();
                txtTenSP.Text = table.Rows[trang * 3 + a][1].ToString();
            }
            catch (Exception)
            {
                lblErorr.Style["color"] = "red";
                lblErorr.Text = "Lỗi";
            }
        }

        protected void grvDSSP_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvDSSP.PageIndex = e.NewPageIndex;
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            txtMaSP.Text = "";
            txtTenSP.Text = "";
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                string insert = "INSERT INTO tbl_sanpham(MaSP, TenSP)VALUES(N'"+ txtMaSP.Text +"', N'"+ txtTenSP.Text +"')";
                SqlCommand sqlCommand = new SqlCommand(insert, con);
                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();
                HienThi();
                lblErorr.Style["color"] = "blue";
                lblErorr.Text = "Thêm thành công";
                txtMaSP.Text = "";
                txtTenSP.Text = "";            }
            catch (Exception)
            {
                lblErorr.Style["color"] = "red";
                lblErorr.Text = "Lỗi";
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                string delete = "DELETE FROM tbl_sanpham WHERE MaSP=N'" + txtMaSP.Text + "'";
                SqlCommand sqlCommand = new SqlCommand(delete, con);
                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();
                HienThi();
                lblErorr.Style["color"] = "blue";
                lblErorr.Text = "Xoá Thành công";
                txtMaSP.Text = "";
                txtTenSP.Text = "";
            }
            catch (Exception ex)
            {
                lblErorr.Style["color"] = "red";
                lblErorr.Text = "Lỗi" + ex.ToString();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                string update = "UPDATE tbl_sanpham SET TenSP=N'" + txtTenSP.Text + "' WHERE MaSP='" + txtMaSP.Text + "'";
                SqlCommand sqlCommand = new SqlCommand(update, con);
                con.Open();
                sqlCommand.ExecuteNonQuery();   
                con.Close();
                HienThi();
                lblErorr.Style["color"] = "blue";
                lblErorr.Text = "Cập nhật thành công";
                txtMaSP.Text = "";
                txtTenSP.Text = "";
            }
            catch (Exception)
            {
                lblErorr.Style["color"] = "red";
                lblErorr.Text = "Lỗi";
            }
        }
    }
}