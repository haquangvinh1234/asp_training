<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Lab4.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hiện thị</title>
</head>
<style>
    *{
        margin: 0 auto;
        padding: 0;
        box-sizing: border-box;
    }
    .container{
        max-width: 1000px;
    }
    .container-content{
        margin-top: 30px;
    }
    .container-content-title{
        font-size: 30px;
        background-color: #ffd800;
        text-align: center;
        font-weight: bold;
        padding: 10px 0 10px 0;
    }
    .container-content-show{
        padding-top: 20px;
        height: 200px;
        background-color: #e6d3d3;
    }
    td{
        border: 1px solid #808080;
        padding: 3px 5px 3px 5px;
    }
    .td-tieude{
        text-align:center;
    }
    #lblHienUocSoChung{
        color: red;
        font-weight: bold;
    }
    .HienUocSoChung{
        border: none;
    }
    .Link{
        font-size: 18px;
    }
</style>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <div class="Link">
        <asp:HyperLink ID="rfvTrangchu" NavigateUrl="~/bai1.aspx" runat="server" Text="Trang chủ |"> </asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/bai2.aspx" runat="server" Text="Tính USCLN |"> </asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" NavigateUrl="~/bai3.aspx" runat="server" Text="Đăng ký thông tin"> </asp:HyperLink>
        </div>
        <div class="container-content">
            <div class="container-content-title">
                <asp:Label ID="lblTitle" runat="server" Text="Thông Tin Đăng Ký"></asp:Label>
            </div>
            <div class="container-content-show">
                <table>
                    <tr>
                        <td class="td-tieude">Họ tên</td>
                        <td class="td-tieude">Tên đăng ký</td>
                        <td class="td-tieude">Mật khẩu</td>
                        <td class="td-tieude">Mật khẩu nhập lại</td>
                        <td class="td-tieude">Năm sinh</td>
                        <td class="td-tieude">Email</td>
                        <td class="td-tieude">Địa chỉ</td>
                        <td class="td-tieude">Sở thích</td>
                    </tr>
                         <tr>
                        <td><asp:Label ID="lblHoten" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblTendangky" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblMatkhau" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblMatkhauNhaplai" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblNamsinh" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblDiachi" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblSothich" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Ước SCLN là:</td>
                        <td><asp:Label ID="lblHienUocSoChung" runat="server" Text=""></asp:Label></td>
                    </tr>
                
                </table>
            </div>
        </div>
    </form>
    </div>
</body>
</html>
