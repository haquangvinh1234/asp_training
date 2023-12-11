using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap1
{
    public partial class bai2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Tinhtong_Click(object sender, EventArgs e)
        {
            if (So1.Text == null || So1.Text.Length == 0 || So2.Text == null || So2.Text.Length == 0)
            {
                error.Text = "Không được để trống";
            }
            else{
                error.Text = "";
                double so1 = Convert.ToDouble(So1.Text);
                double so2 = Convert.ToDouble(So2.Text);
                double tong = so1 + so2;
                lblTong.Text = "Tổng: " + so1 + " + " + so2 + " = " + tong.ToString();
            }
        }

        protected void Tinhhieu_Click(object sender, EventArgs e)
        {
            if (So1.Text == null || So1.Text.Length == 0 || So2.Text == null || So2.Text.Length == 0)
            {
                error.Text = "Không được để trống";
            }else
            {
                error.Text = "";
                double so1 = Convert.ToDouble(So1.Text);
                double so2 = Convert.ToDouble(So2.Text);
                double tong = so1 - so2;
                lblTong.Text = "Hiệu: " + so1 + " - " + so2 + " = " + tong.ToString();
            }
        }

        protected void Tinhtich_Click(object sender, EventArgs e)
        {
            if (So1.Text == null || So1.Text.Length == 0 || So2.Text == null || So2.Text.Length == 0)
            {
                error.Text = "Không được để trống";
            }
            else
            {
                error.Text = "";
                double so1 = Convert.ToDouble(So1.Text);
                double so2 = Convert.ToDouble(So2.Text);
                double tong = so1 * so2;
                lblTong.Text = "Tích: " + so1 + " * " + so2 + " = " + tong.ToString();
            }
        }

        protected void Tinhthuong_Click(object sender, EventArgs e)
        {
            if (So1.Text == null || So1.Text.Length == 0 || So2.Text == null || So2.Text.Length == 0)
            {
                error.Text = "Không được để trống";
            }else
            {
                error.Text = "";
                double so1 = Convert.ToDouble(So1.Text);
                double so2 = Convert.ToDouble(So2.Text);
                double tong = so1 / so2;
                lblTong.Text = "Thương: " + so1 + " / " + so2 + " = " + tong.ToString();
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            string targetPage = e.Item.Value;
            Response.Redirect(targetPage);
        }
    }
}