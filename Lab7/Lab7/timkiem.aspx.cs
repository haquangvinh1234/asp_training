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
    public partial class timkiem : System.Web.UI.Page
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
                string load = "SELECT * FROM tbl_sanpham";
                SqlDataAdapter adapter = new SqlDataAdapter(load, con);
                DataTable data = new DataTable();
                adapter.Fill(data);
                grvDSSP.DataSource = data;
                grvDSSP.DataBind();
            }
            catch(Exception ex)
            {
                lblErorr.Text = "Lỗi. Vui lòng Kiểm tra kết nối" + ex.ToString();
            }
        }

        protected void grvDSSP_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string load = "SELECT * FROM tbl_sanpham";
                SqlDataAdapter adapter = new SqlDataAdapter(load, con);
                DataTable data = new DataTable();
                adapter.Fill(data);

                int a = grvDSSP.SelectedIndex;
                int trang = grvDSSP.PageIndex;

                txtMaSP.Text = data.Rows[trang * 3 + a][0].ToString();
                txtTenSP.Text = data.Rows[trang * 3 + a][1].ToString();

            }
            catch (Exception ex)
            {
                lblErorr.Text = "Lỗi. Vui lòng Kiểm tra kết nối" + ex.ToString();
            }
        }

        protected void grvDSSP_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvDSSP.PageIndex = e.NewPageIndex;
        }

        protected void btnTimTheoMa_Click(object sender, EventArgs e)
        {
            try
            {
                if(txtMaSP.Text == null || txtMaSP.Text.Length == 0)
                {
                    lblErorr.Text = "Lõi. Vui lòng nhập mã sản phẩm";
                }
                else
                {
                    string search_by_id = "SELECT * FROM tbl_sanpham WHERE MaSP='" + txtMaSP.Text + "'";
                    SqlDataAdapter adapter = new SqlDataAdapter(search_by_id, con);
                    DataTable data = new DataTable();
                    adapter.Fill(data);
                    grvDSSP.DataSource = data;
                    grvDSSP.DataBind();
                }
               
            }catch(Exception ex) {
                lblErorr.Text = "Lõi. Vui lòng kiểm tra kết nối" + ex.ToString();
            }
        }

        protected void btnTimTheoTen_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtTenSP.Text == null || txtTenSP.Text.Length == 0)
                {
                    lblErorr.Text = "Lõi. Vui lòng nhập tên sản phẩm";
                }
                else
                {
                    string search_by_id = "SELECT * FROM tbl_sanpham WHERE TenSP=N'" + txtTenSP.Text + "'";
                    SqlDataAdapter adapter = new SqlDataAdapter(search_by_id, con);
                    DataTable data = new DataTable();
                    adapter.Fill(data);
                    grvDSSP.DataSource = data;
                    grvDSSP.DataBind();
                }

            }
            catch (Exception ex)
            {
                lblErorr.Text = "Lõi. Vui lòng kiểm tra kết nối" + ex.ToString();
            }
        }
    }
}