using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4
{
    public partial class bai2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKetqua_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                int so1 = Convert.ToInt32(txtSo1.Text);
                int so2 = Convert.ToInt32(txtSo2.Text);

                int ketqua = USCLN(so1, so2);
                Session["uocsochung"] = ketqua;
                XuatKetQua.Style["display"] = "block";
                lblXuatketqua.Text = $"Ước số chung lớn nhất của {so1} và {so2} là: ";
                lblUSCLN.Text = ketqua.ToString();
            }
        }

        private int USCLN(int a, int b)
        {
            while (b != 0)
            {
                int temp = b;
                b = a % b;
                a = temp;
            }
            return a;
        }
    }
}