<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai1.aspx.cs" Inherits="Lab4.bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    *{
        margin: 0 auto;
        padding: 0;
        box-sizing: border-box;
    }
    .container{
        max-width: 1200px;
    }
    .container-content-title{
        text-align:center;
        font-size: 30px;
        padding: 10px 0 10px 0;
        border: 1px solid #808080;
        margin-top: 10px;
    }
    .container-content{
     
    }
    .container-content-content-center{
        border-left: 1px solid #808080;
        border-right: 1px solid #808080;
        height: 400px;
        font-size: 18px;
      
    }
    .container-content-center-float-left{
        float: left;
        border-right: 1px solid #808080;
        height: 400px;
        width: 300px;
    }
    .container-content-center-float-right{
        float: right;
        height: 400px;
    }
    .float-right-trang-chu{
        margin-left: 20px;
        font-size: 20px;
        font-weight: bold;
    }
    .container-content-center-float-left-group{
       margin-top: 20%;
       margin-left: 20px;
    }
    #lblUSCLN{
      margin-right: 20px;
    }
   .container-content-content-bottom{
       border: 1px solid #808080;
   }
   .content-bottom-design-by{
       text-align: center;
       padding: 15px 0  15px 0;
   }
   #lblNameDesigner{
       font-weight: bold;
   }
</style>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <div class="container-content">
            <div class="container-content-title">
                <asp:Label ID="lblTitle" runat="server" Text="ASP.NET"></asp:Label>
            </div>
            <div class="container-content-content-center">
                <div class="container-content-center-float-left">
                    <div class="container-content-center-float-left-group">
                    <div class="float-left-uscln">
                       <asp:HyperLink ID="hyperlinkExample" runat="server" NavigateUrl="~/bai2.aspx" Text="Tính USCLN(a, b)"></asp:HyperLink>
                    </div>
                    <div class="float-left-uscln">
                      <asp:HyperLink ID="hyperlink1" runat="server" NavigateUrl="~/bai3.aspx" Text="Đăng Ký Thông Tin"></asp:HyperLink>
                    </div>
                    <div class="float-left-uscln">
                      <asp:HyperLink ID="hyperlink2" runat="server" NavigateUrl="~/index.aspx" Text="Hiển thị Thông Tin"></asp:HyperLink>
                    </div>
                    </div>
                </div>
                <div class="container-content-content-float-right">
                    <div class="float-right-trang-chu">
                        <asp:Label ID="lblDaylatrangchu" runat="server" Text="ĐÂY LÀ TRANG CHỦ"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="container-content-content-bottom">
                <div class="content-bottom-design-by">
                     <asp:Label ID="lblDesignBy" runat="server" Text="Design by: "></asp:Label>
                     <asp:Label ID="lblNameDesigner" runat="server" Text="Hạ Quang Vinh"></asp:Label>
                </div>
            </div>
        </div>
    </form>
    </div>
</body>
</html>
