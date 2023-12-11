using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap2
{
    public partial class bai4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnKetquabinhchon_Click(object sender, EventArgs e)
        {
            if (!rdbMaygiat.Checked && !rdbTivi.Checked && !rdbTulanh.Checked && !rdbDaudiaDVD.Checked && !rdbLovisong.Checked && !rdbNoicomdien.Checked)
            {
                lblErorr.Text = "Vui lòng chọn sản phẩm";
            }
            else
            {
                // Radio Máy Giặt
                if (rdbMaygiat.Checked)
                {
                    if (rdbMaygiat.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "4. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbMaygiat.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbMaygiat.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbMaygiat.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbMaygiat.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbMaygiat.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbMaygiat.Checked && ckbCoNhieuChucNangGiat.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbMaygiat.Checked && ckbCoNhieuChucNangGiat.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbMaygiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                    }

                    else if (rdbMaygiat.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblSayKho.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                    }
                    else if (rdbMaygiat.Checked && ckbMauma.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbMaygiat.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblMauma.Text = "1. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbMaygiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbSayKho.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbMaygiat.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbMaygiat.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbMaygiat.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";

                    }
                }

                // Radio Tủ lạnh
                if (rdbTulanh.Checked)
                {
                    if (rdbTulanh.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "4. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbTulanh.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbTulanh.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbTulanh.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbTulanh.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbTulanh.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbTulanh.Checked && ckbCoNhieuChucNangGiat.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbTulanh.Checked && ckbCoNhieuChucNangGiat.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbTulanh.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                    }

                    else if (rdbTulanh.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblSayKho.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                    }
                    else if (rdbTulanh.Checked && ckbMauma.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbTulanh.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblMauma.Text = "1. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbTulanh.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbSayKho.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbTulanh.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbTulanh.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTulanh.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";

                    }
                }

                // Radio Tivi
                if (rdbTivi.Checked)
                {
                    if (rdbTivi.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "4. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbTivi.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbTivi.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbTivi.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbTivi.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbTivi.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbTivi.Checked && ckbCoNhieuChucNangGiat.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbTivi.Checked && ckbCoNhieuChucNangGiat.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbTivi.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                    }

                    else if (rdbTivi.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblSayKho.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                    }
                    else if (rdbTivi.Checked && ckbMauma.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbTivi.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblMauma.Text = "1. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbTivi.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbSayKho.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbTivi.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbTivi.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbTivi.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";

                    }
                }

                // Radio Đầu đĩa DVD
                if (rdbDaudiaDVD.Checked)
                {
                    if (rdbDaudiaDVD.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "4. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbDaudiaDVD.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbDaudiaDVD.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbDaudiaDVD.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbDaudiaDVD.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbDaudiaDVD.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbDaudiaDVD.Checked && ckbCoNhieuChucNangGiat.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbDaudiaDVD.Checked && ckbCoNhieuChucNangGiat.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbDaudiaDVD.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                    }

                    else if (rdbDaudiaDVD.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblSayKho.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                    }
                    else if (rdbDaudiaDVD.Checked && ckbMauma.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbDaudiaDVD.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblMauma.Text = "1. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbDaudiaDVD.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbSayKho.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbDaudiaDVD.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbDaudiaDVD.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbDaudiaDVD.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";

                    }
                }

                // Radio Lò vi Sóng
                if (rdbLovisong.Checked)
                {
                    if (rdbLovisong.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "4. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbLovisong.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbLovisong.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbLovisong.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbLovisong.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbLovisong.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbLovisong.Checked && ckbCoNhieuChucNangGiat.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbLovisong.Checked && ckbCoNhieuChucNangGiat.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbLovisong.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                    }

                    else if (rdbLovisong.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblSayKho.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                    }
                    else if (rdbLovisong.Checked && ckbMauma.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbLovisong.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblMauma.Text = "1. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbLovisong.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbSayKho.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbLovisong.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbLovisong.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbLovisong.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";

                    }
                }

                // Radio Nồi cơm điện
                if (rdbNoicomdien.Checked)
                {
                    if (rdbNoicomdien.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "4. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbNoicomdien.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbNoicomdien.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbNoicomdien.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "3. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbNoicomdien.Checked && ckbCoNhieuChucNangGiat.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbNoicomdien.Checked && ckbCoNhieuChucNangGiat.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "2. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                    }
                    else if (rdbNoicomdien.Checked && ckbCoNhieuChucNangGiat.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                    }
                    else if (rdbNoicomdien.Checked && ckbCoNhieuChucNangGiat.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblConnhieuChucNang.Text = "1. " + ckbCoNhieuChucNangGiat.Text.ToString();
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";
                    }
                    else if (rdbNoicomdien.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblSayKho.Text = "2. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "3. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                    }

                    else if (rdbNoicomdien.Checked && ckbSayKho.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblSayKho.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                    }
                    else if (rdbNoicomdien.Checked && ckbMauma.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbNoicomdien.Checked && ckbMauma.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblMauma.Text = "1. " + ckbMauma.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                    }

                    else if (rdbNoicomdien.Checked && ckbChoPhepNgung.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "2. " + ckbSayKho.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbNoicomdien.Checked && ckbChoPhepNgung.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbChoPhepNgung.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }
                    else if (rdbNoicomdien.Checked && ckbSayKho.Checked)
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblChoPhepNgung.Text = "1. " + ckbSayKho.Text.ToString();
                        lblMauma.Text = "";
                        lblConnhieuChucNang.Text = "";
                        lblSayKho.Text = "";
                    }

                    else
                    {
                        lblErorr.Text = "";
                        lblSanPhamBC.Text = rdbNoicomdien.Text.ToString();
                        lblConnhieuChucNang.Text = "";
                        lblChoPhepNgung.Text = "";
                        lblSayKho.Text = "";
                        lblMauma.Text = "";

                    }
                }
            }
        }

        protected void rdbTulanh_CheckedChanged(object sender, EventArgs e)
        {
         
        }

        protected void rdbMaygiat_CheckedChanged(object sender, EventArgs e)
        {
          
        }

        protected void rdbTivi_CheckedChanged(object sender, EventArgs e)
        {
          
        }

        protected void rdbDaudiaDVD_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void rdbLovisong_CheckedChanged(object sender, EventArgs e)
        {
         
        }

        protected void rdbNoicomdien_CheckedChanged(object sender, EventArgs e)
        {
          
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            string targetPage = e.Item.Value;
            Response.Redirect(targetPage);
        }
    }
}