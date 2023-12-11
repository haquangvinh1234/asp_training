using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap1
{
    public partial class bai5 : System.Web.UI.Page
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
            if (So1.Text == null || So1.Text.Length == 0 || So2.Text == null || So2.Text.Length == 0 ||
              So3.Text == null || So3.Text.Length == 0)
            {
                error.Text = "Không được để trống";
            }
            else
            {
                error.Text = "";
                double a = Convert.ToDouble(So1.Text);
                double b = Convert.ToDouble(So2.Text);
                double c = Convert.ToDouble(So3.Text);

                double delta, x, x1, x2;
                delta = b * b - 4 * a * c;
                if(delta > 0)
                {
                    x1 = (-b + Math.Sqrt(delta)) / (2 * a);
                    x2 = (-b - Math.Sqrt(delta)) / (2 * a);
                    Ketqua.Text = "PT có 2 nghiệm phân biệt: \n" + "x1 = " + x1.ToString() + "và x2 = " + x2.ToString();
                }else if(delta == 0) { 
                    x = -b / (2 * a);
                    Ketqua.Text = "PT có nghiệm phân biệt: " + x.ToString();
                }else
                {
                    Ketqua.Text = "Phương trình vô nghiệm";
                }
            }
        }
    }
}