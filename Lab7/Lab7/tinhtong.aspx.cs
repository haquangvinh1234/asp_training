using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab7
{
    public partial class tinhtong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinhTong_Click(object sender, EventArgs e)
        {
          
            if(txtMaSP.Text == null || txtMaSP.Text.Length == 0)
            {
                lblErorr.Style["color"] = "red";
                lblErorr.Text = "Không được để trống";
            }
            else
            {
                int n = Convert.ToInt32(txtMaSP.Text);
                if (n < 0 || n > 100)
                {
                    lblErorr.Style["color"] = "red";
                    lblErorr.Text = "Số n không được (0 < n < 100)";
                }
                else
                {
                    lblErorr.Text = "";
                    lblketqua.Text = "Kết quả là: " + Tong(n).ToString();
                }
            }
        }

        private int Tong(int n)
        {
            int tong = 0;
            for (int i = 1; i <= n; i++)
            {
                tong += i;
            }
            return tong;
        }
    }
}