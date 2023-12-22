using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5
{
    public partial class bai1 : System.Web.UI.Page
    {
        public static string chuoiKetNoi = "Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=QL_SinhVien;Integrated Security=True";
        public static SqlConnection connect = new SqlConnection(chuoiKetNoi);
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }

        public void HienThi()
        {
            try
            {
                string load = "SELECT * FROM tbl_monhoc";
                SqlDataAdapter adapter = new SqlDataAdapter(load, connect);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                grvDSMH.DataSource = dataTable;
                grvDSMH.DataBind();
            }
            catch (Exception)
            {
                lblErorr.Style["color"] = "red";
                lblErorr.Text = "Kết nối thất bại";
            }
        }

        protected void grvDSMH_SelectedIndexChanged(object sender, EventArgs e)
        {
            string chuoiSQL = "SELECT * FROM tbl_monhoc";
            SqlDataAdapter da = new SqlDataAdapter(chuoiSQL, chuoiKetNoi);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int dong = grvDSMH.SelectedIndex;
            int trang = grvDSMH.PageIndex;
            txtMamonhoc.Text = dt.Rows[trang * 3 + dong][0].ToString();
            txtTenmonhoc.Text = dt.Rows[trang * 3 + dong][1].ToString();
        }

        protected void grvDSMH_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvDSMH.PageIndex = e.NewPageIndex;
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            txtMamonhoc.Text = "";
            txtTenmonhoc.Text = "";
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                string check = "SELECT * FROM tbl_monhoc WHERE MaMH='"+ txtMamonhoc.Text +"' OR TenMH=N'" + txtTenmonhoc.Text + "'";
                SqlDataAdapter adapter = new SqlDataAdapter(check, connect);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                
                if(dataTable.Rows.Count > 0)
                {
                    lblErorr.Style["color"] = "red";
                    lblErorr.Text = "Dữ liệu đã tồn tại";
                    txtMamonhoc.Text = "";
                    txtTenmonhoc.Text = "";
                }
                else
                {
                    string insert = "INSERT INTO tbl_monhoc(MaMH, TenMH)VALUES('" + txtMamonhoc.Text + "', N'" + txtTenmonhoc.Text + "')";
                    SqlCommand sqlCommand = new SqlCommand(insert, connect);
                    connect.Open();
                    sqlCommand.ExecuteNonQuery();
                    lblErorr.Style["color"] = "blue";
                    lblErorr.Text = "Thêm thành công";
                    HienThi();
                    connect.Close(); 
                }
            }
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
                string delete = "DELETE FROM tbl_monhoc WHERE MaMH='" + txtMamonhoc.Text + "'";
                SqlCommand sqlCommand = new SqlCommand(delete, connect);
                connect.Open();
                sqlCommand.ExecuteNonQuery();
                connect.Close();
                lblErorr.Style["color"] = "blue";
                lblErorr.Text = "Xoá thành công";
                HienThi();
                txtMamonhoc.Text = "";
                txtTenmonhoc.Text = "";
            }
            catch (Exception)
            {
                lblErorr.Style["color"] = "red";
                lblErorr.Text = "Lỗi";
            }
         
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                string update = "UPDATE tbl_monhoc SET TenMH=N'" + txtTenmonhoc.Text + "' WHERE MaMH='" + txtMamonhoc.Text + "'";
                SqlCommand sqlCommand = new SqlCommand(update, connect);
                connect.Open();
                sqlCommand.ExecuteNonQuery();
                connect.Close();
                lblErorr.Style["color"] = "blue";
                lblErorr.Text = "Sửa thành công";
                HienThi();
            }
            catch(Exception)
            {
                lblErorr.Style["color"] = "red";
                lblErorr.Text = "Lỗi";
            }
        
        }
    }
}