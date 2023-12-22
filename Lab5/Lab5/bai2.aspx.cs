using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Management.Instrumentation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5
{
    public partial class bai2 : System.Web.UI.Page
    {
        private static string chuoiKetnoi = "Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=QL_SinhVien;Integrated Security=True";
        private static SqlConnection conn = new SqlConnection(chuoiKetnoi);
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }

        private void HienThi()
        {
            try
            {
                string select = "SELECT * FROM tbl_monhoc";
                SqlDataAdapter adapter = new SqlDataAdapter(select, conn);
                DataTable data = new DataTable();
                adapter.Fill(data);
                grvDSMH.DataSource = data;
                grvDSMH.DataBind();
            }catch (Exception)
            {
                lblErorr.Text = "Lỗi kết nối. Vui lòng kiếm tra lại";
            }
        }

        protected void grvDSMH_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM tbl_monhoc";
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sql, conn);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            int dong = grvDSMH.SelectedIndex;
            int trang = grvDSMH.PageIndex;
            txtMamonhoc.Text = dataTable.Rows[trang * 3 + dong][0].ToString();
            txtTenmonhoc.Text = dataTable.Rows[trang * 3 + dong][1].ToString();
        }

        protected void grvDSMH_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvDSMH.PageIndex = e.NewPageIndex;
        }

        protected void btnTimtheoma_Click(object sender, EventArgs e)
        {
            try
            {
                string search_by_id = "SELECT * FROM tbl_monhoc WHERE MaMH='" + txtMamonhoc.Text + "'";
                SqlDataAdapter adapter = new SqlDataAdapter(search_by_id, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                grvDSMH.DataSource = dt;
                grvDSMH.DataBind();
                txtMamonhoc.Text = "";
            }catch(Exception)
            {
                lblErorr.Text = "Lỗi. Vui lòng kiểm tra lại";
            }
        }

        protected void btnTimTheoTen_Click(object sender, EventArgs e)
        {
            try
            {
                string search_by_name = "SELECT * FROM tbl_monhoc WHERE TenMH='" + txtTenmonhoc.Text + "'";
                SqlDataAdapter adapter = new SqlDataAdapter(search_by_name, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                grvDSMH.DataSource = dt;
                grvDSMH.DataBind();
                txtTenmonhoc.Text = "";
            }
            catch (Exception)
            {
                lblErorr.Text = "Lỗi. Vui lòng kiểm tra lại";
            }
        }
    }
}