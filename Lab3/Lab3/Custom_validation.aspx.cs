using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class Custom_validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)//load lần đầu
            {
                // sinh số ngẫu nhiên, hiển thị và lưu vào session
                Random r = new Random();
                lblMabaomat.Text = r.Next(10000, 99999).ToString();
                Session["mabaomat"] = lblMabaomat.Text;
            }
        }

        protected void btnKiemTra_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            lblMabaomat.Text = r.Next(10000, 99999).ToString();
            Session["mabaomat"] = lblMabaomat.Text;
        }

        protected void ValidateSochan(object source, ServerValidateEventArgs args)
        {
            int number;
            if (int.TryParse(args.Value, out number))
            {
                args.IsValid = (number % 2 == 0);
            }
            else
            {
                args.IsValid = false;
                customValidatorSochan.ErrorMessage = "Vui lòng nhập số chẵn";
            }
        }

        protected void ValidateMaBK(object source, ServerValidateEventArgs args)
        {
            string ma = Session["mabaomat"].ToString();
            if (txtMabaomat.Text == ma)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
                customValidatorMabaomat.ErrorMessage = "Nhập không đúng mã bảo mật";
            }
        }
    }
}