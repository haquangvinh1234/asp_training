using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap1
{
    public partial class bai1 : System.Web.UI.Page
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
            else
            {
                error.Text = "";
                double a = Convert.ToDouble(So1.Text);
                double b = Convert.ToDouble(So2.Text);
                double tong = a + b;
                lblTong.Text = "Tổng của: " + a + " + " + b + " = " + tong.ToString();
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            string targetPage = e.Item.Value;
            Response.Redirect(targetPage);
        }
    }
}