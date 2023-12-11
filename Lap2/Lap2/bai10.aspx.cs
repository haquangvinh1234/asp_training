using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap2
{
    public partial class bai10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ckbKeoTraiCay_CheckedChanged(object sender, EventArgs e)
        {
            int dem = ListBoxDanhSachKeo.Items.Count;
            
            if (ckbKeoTraiCay.Checked)
            {
                dem++;
                ListBoxDanhSachKeo.Items.Add(ckbKeoTraiCay.Text);
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
            else
            {
                ListBoxDanhSachKeo.Items.Remove(ckbKeoTraiCay.Text);
                dem--;
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ckbKeoTraiCay.Checked = false;
            ckbKeoNho.Checked = false;
            ckbKeoTao.Checked = false;
            ckbCaPheSua.Checked = false;
            ckbSocoloTao.Checked = false;
            ckbSocoloThapCam.Checked = false;
            ckbSocolaDauPhong.Checked = false;
            ViewState["SelectedItems"] = new List<string>();
            ListBoxDanhSachKeo.Items.Clear();
            lblSoluong.Text = "0 sản phẩm";
        }
      

        protected void ckbKeoNho_CheckedChanged(object sender, EventArgs e)
        {
            int dem = ListBoxDanhSachKeo.Items.Count;
            if (ckbKeoNho.Checked)
            {
                dem++;
                ListBoxDanhSachKeo.Items.Add(ckbKeoNho.Text);
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
            else
            {
                ListBoxDanhSachKeo.Items.Remove(ckbKeoNho.Text);
                dem--;
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
        }

        protected void ckbKeoTao_CheckedChanged(object sender, EventArgs e)
        {
            int dem = ListBoxDanhSachKeo.Items.Count;
            if (ckbKeoTao.Checked)
            {
                dem++;
                ListBoxDanhSachKeo.Items.Add(ckbKeoTao.Text);
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
            else
            {
                ListBoxDanhSachKeo.Items.Remove(ckbKeoTao.Text);
                dem--;
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
        }

        protected void ckbSocoloTao_CheckedChanged(object sender, EventArgs e)
        {
            int dem = ListBoxDanhSachKeo.Items.Count;
            if (ckbSocoloTao.Checked)
            {
                dem++;
                ListBoxDanhSachKeo.Items.Add(ckbSocoloTao.Text);
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
            else
            {
                ListBoxDanhSachKeo.Items.Remove(ckbSocoloTao.Text);
                dem--;
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
        }

        protected void ckbSocolaDauPhong_CheckedChanged(object sender, EventArgs e)
        {
            int dem = ListBoxDanhSachKeo.Items.Count;
            if (ckbSocolaDauPhong.Checked)
            {
                dem++;
                ListBoxDanhSachKeo.Items.Add(ckbSocolaDauPhong.Text);
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
            else
            {
                ListBoxDanhSachKeo.Items.Remove(ckbSocolaDauPhong.Text);
                dem--;
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
        }

        protected void ckbCaPheSua_CheckedChanged(object sender, EventArgs e)
        {
            int dem = ListBoxDanhSachKeo.Items.Count;
            if (ckbCaPheSua.Checked)
            {
                dem++;
                ListBoxDanhSachKeo.Items.Add(ckbCaPheSua.Text);
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
            else
            {
                ListBoxDanhSachKeo.Items.Remove(ckbCaPheSua.Text);
                dem--;
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
        }

        protected void ckbSocoloThapCam_CheckedChanged(object sender, EventArgs e)
        {
            int dem = ListBoxDanhSachKeo.Items.Count;
            if (ckbSocoloThapCam.Checked)
            {
                dem++;
                ListBoxDanhSachKeo.Items.Add(ckbSocoloThapCam.Text);
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
            else
            {
                ListBoxDanhSachKeo.Items.Remove(ckbSocoloThapCam.Text);
                dem--;
                lblSoluong.Text = dem.ToString() + " sản phẩm";
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            string targetPage = e.Item.Value;
            Response.Redirect(targetPage);
        }
    }
}