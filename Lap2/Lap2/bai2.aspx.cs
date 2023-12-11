using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap2
{
    public partial class bai2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThaydoicauchao_Click(object sender, EventArgs e)
        {
            string hoten = txtHoten.Text;
            if (txtHoten.Text == null || txtHoten.Text.Length == 0)
            {
                // Hiển thị thông báo khi trang load lần đầu
                string script = "alert('Không được để trống');";
                ClientScript.RegisterStartupScript(this.GetType(), "Thông báo", script, true);
            }
            else
            {
                lblChaoHT.Text = hoten.ToString();
                lblChucmung.Text = "Chào mừng bạn đã đến với môn học ";
                lblChucmungLT.Text = "Lập trình Web2";
                string confirmScript = "if (confirm('Bạn có muốn tiếp tục không?')) { document.getElementById('" + lblChaoHT.ClientID + "').style.display='block'; document.getElementById('" + lblChucmung.ClientID + "').style.display='block'; document.getElementById('" + lblChucmungLT.ClientID + "').style.display='block'; } else { document.getElementById('" + lblChaoHT.ClientID + "').style.display='none'; document.getElementById('" + lblChucmung.ClientID + "').style.display='none'; document.getElementById('" + lblChucmungLT.ClientID + "').style.display='none'; }";

                ClientScript.RegisterStartupScript(this.GetType(), "ConfirmationScript", confirmScript, true);

                lblChaoHT.Style["display"] = "none"; // Ẩn ban đầu
                lblChucmung.Style["display"] = "none"; // Ẩn ban đầu
                lblChucmungLT.Style["display"] = "none"; // Ẩn ban đầu
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            string targetPage = e.Item.Value;
            Response.Redirect(targetPage);
        }
    }
}