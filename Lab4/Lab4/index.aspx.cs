using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] != null || Session["username"] != null || Session["password"] != null ||
             Session["confirmPass"] != null || Session["namsinh"] != null || Session["email"] != null ||
             Session["diachi"] != null || Session["sothich"] != null)
            {
                lblHoten.Text = Session["fullname"].ToString(); ;
                lblTendangky.Text = Session["username"].ToString();
                lblMatkhau.Text = Session["password"].ToString();
                lblMatkhauNhaplai.Text = Session["confirmPass"].ToString();
                lblNamsinh.Text = Session["namsinh"].ToString();
                lblEmail.Text = Session["email"].ToString();
                lblDiachi.Text = Session["diachi"].ToString();
                lblSothich.Text = Session["sothich"].ToString();
            }
            if (Session["uocsochung"] != null)
            {
                lblHienUocSoChung.Text = Session["uocsochung"].ToString();
            }
        }
    }
}