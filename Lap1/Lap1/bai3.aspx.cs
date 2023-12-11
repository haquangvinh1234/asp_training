using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap1
{
    public partial class bai3 : System.Web.UI.Page
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
            if(So1.Text == null  || So1.Text.Length == 0 || So2.Text == null || So2.Text.Length == 0 ||
                So3.Text == null || So3.Text.Length == 0){
                error.Text = "Không được để trống";
            }
            else
            {
                error.Text = "";
                double a = Convert.ToDouble(So1.Text);
                double b = Convert.ToDouble(So2.Text);
                double c = Convert.ToDouble(So3.Text);

                double[] mang = new double[3];
                mang[0] = a;
                mang[1] = b;
                mang[2] = c;

                double dem = mang[0];
                for (int i = 0; i < mang.Length; i++)
                {
                    if (mang[i] > dem)
                    {
                        dem = mang[i];
                    }
                }
                Ketqua.Text = "Số lớn nhất là: " + dem.ToString();
            }
        }
    }
}