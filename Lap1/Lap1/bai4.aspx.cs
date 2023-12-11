using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap1
{
    public partial class bai4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            string targetPage = e.Item.Value;
            Response.Redirect(targetPage);
        }

        protected void Tim_Click(object sender, EventArgs e)
        {
            if(So1.Text == null || So1.Text.Length == 0 || So2.Text == null || So2.Text.Length == 0)
            {
                error.Text = "Không được để trống";
            }else
            {
                double a = Convert.ToDouble(So1.Text);
                double b = Convert.ToDouble(So2.Text);
                double x;

                if(a == 0)
                {
                    Ketqua.Text = "Phương trình vô nghiệm";
                }else
                {
                    x = -b / a;
                    Ketqua.Text = "Phương trình có nghiệm là: x = " + x.ToString();
                }
            }
        }
    }
}