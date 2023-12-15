<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="bai3.aspx.cs" Inherits="Lab4.bai3" %>

<asp:Content ID="CTHeader" ContentPlaceHolderID="cphHeader" runat="server"></asp:Content>
<asp:Content ID="CTContent" runat="server" ContentPlaceHolderID="cphContent">
<style>

    .container-content-titlel{
        padding: 10px 0px 10px 0;
        text-align: center;
        font-weight: bold;
        font-size: 30px;
    }
    #lblTitlel{
        font-size: 30px;
    }
    .container-content-group{
        font-size: 18px;
        padding-bottom: 20px;
    }
 
    .container-content-table{
        padding-top: 10px;
    }
    td{
        width: 250px;
    }
    .td-info{
        padding-left: 5%;
        font-weight: bold;
        font-size: 18px;
    }
    #txtHoten{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 250px;
    }
    #txtTentaikhoan{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 250px;
    }
    #txtEmail {
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 250px;
    }
    #txtMatkhau{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 250px;
    }
    #txtNhaplaimatkhau{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 250px;
    }
    #txtNgaycheck{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 250px;
    }
    #txtSongayo{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 200px;
    }
    #ddlDanhSachPhong{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 250px;
    }
    .container-content-button-register{
        text-align: center;
        margin-top: 15px;
        border-top: 1px solid #ffffff;
    }
    #txtSothich{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 250px;
    }
    #btnDangky{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        font-weight: bold;
        margin-top: 10px;
        border: 1px solid white;
    }
    .td-message{
        color: red;
    }
    #cvPassword{
        margin-left: 5%;
        color: red;
    }
    .container-content-welcome-label{
        border-top: 1px solid white;
        margin-top: 10px;
        margin-bottom: 10px;
        width: 80%;
    }
    #lblWelcome{
        padding-left: 10px;
        padding-top: 20px;
        color: yellow;
        font-weight: bold;
    }
    .container-content-base-info{
        padding-top: 10px;
        padding-left: 10px;
    }
    .group-base-info{
        text-align:center;
    }
    #baseHoten{
        font-weight: bold;
    }
    #baseCoquan{
        font-weight: bold;
    }
   #baseEmail{
        font-weight: bold;
    }
   #basePass{
        font-weight: bold;
    }
   #baseComfirmPass{
        font-weight: bold;
    }
   #baseSongayo{
        font-weight: bold;
    }
   #baseLoaiPhong{
        font-weight: bold;
    }
   #baseNgaycheck{
        font-weight: bold;
    }
   #hyperlinkExample{
      margin-top: 10px;
      font-size: 20px;
  }
   #hyperlink1{
        font-size: 20px;
        margin-top: 10px;
    }
   #hplIndex{
       color: white;
   }
   .thongbao{
      color: green;
   }
   #lblThongbao{
       padding-left: 30px;
       color: green;
   }
   input[type="text" i] {
    padding-block: 5px;
    padding-inline: 2px;
    width: 240px;
   }
   input[type="email" i] {
    padding-block: 5px;
    padding-inline: 2px;
    width: 240px;
   }
   input[type="date" i] {
    padding-block: 5px;
    padding-inline: 2px;
    width: 200px;
   }
   input[type="password" i] {
    padding-block: 5px;
    padding-inline: 2px;
    width: 240px;
   }

</style>
   
            <div class="container-content-titlel">
                <asp:Label ID="lblTitlel" runat="server" Text="Đăng Ký Thông Tin"></asp:Label>
            </div>
            <div class="thongbao" runat="server" id="thongbao" style="display:none;">
                <table>
                    <tr>
                        <td><asp:Label ID="lblThongbao" runat="server" Text="Đăng ký thành công"></asp:Label></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            
            </div>
            <div class="container-content-group">
            <div class="container-content-table">
                <table>
                    <tr>
                        <td class="td-info">Họ tên:</td>
                        <td class="td-textbox"> <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox></td>
                        <td class="td-message"><asp:RequiredFieldValidator ID="rfvHoten" runat="server" ControlToValidate="txtHoten" ErrorMessage="< Vui lòng nhập họ tên"></asp:RequiredFieldValidator></td>
                    </tr>
                     <tr>
                        <td class="td-info">Tên tai khoản:</td>   
                        <td class="td-textbox"> <asp:TextBox ID="txtTentaikhoan" runat="server"></asp:TextBox></td>
                        <td class="td-message"><asp:RequiredFieldValidator ID="rfvCoquan" runat="server" ControlToValidate="txtTentaikhoan" ErrorMessage="< Vui lòng nhập tên tài khoản"></asp:RequiredFieldValidator></td>
                    </tr>
                      <tr>
                        <td class="td-info">Mật khẩu:</td>   
                        <td class="td-textbox"><asp:TextBox ID="txtMatkhau" runat="server" type="password" TextMode="Password"></asp:TextBox></td>
                         <td class="td-message"><asp:RequiredFieldValidator ID="rfvmatkhau" runat="server" ControlToValidate="txtMatkhau" ErrorMessage="< Vui lòng nhập mật khẩu"></asp:RequiredFieldValidator></td>  
                    </tr>
                      <tr>
                        <td class="td-info">Nhập lại mật khẩu:</td>   
                        <td class="td-textbox"> <asp:TextBox ID="txtNhaplaimatkhau" runat="server" type="password" TextMode="Password"></asp:TextBox></td>
                        <td class="td-message"><asp:RequiredFieldValidator ID="rfvNhaplaimatkhau" runat="server" ControlToValidate="txtNhaplaimatkhau" ErrorMessage="< Vui lòng nhập mật khẩu xác nhận"></asp:RequiredFieldValidator></td>
                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtNhaplaimatkhau" ControlToCompare="txtMatkhau" Operator="Equal" ErrorMessage="Mật khẩu xác nhận không khớp"></asp:CompareValidator>
                    </tr>
                      <tr>
                        <td class="td-info">Năm sinh:</td>   
                        <td class="td-textbox"> <asp:TextBox ID="txtNgaycheck" runat="server" TextMode="Date"></asp:TextBox></td>
                        <td class="td-message"><asp:RequiredFieldValidator ID="rfvNgaycheck" runat="server" ControlToValidate="txtNgaycheck" ErrorMessage="< Vui lòng nhập năm sinh"></asp:RequiredFieldValidator></td>
                    </tr>
                      <tr>
                        <td class="td-info">Email:</td>   
                        <td class="td-textbox"><asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></td>
                        <td class="td-message"><asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="< Vui lòng nhập email"></asp:RequiredFieldValidator></td>
                    </tr>
                      <tr>
                        <td class="td-info">Địa chỉ:</td>   
                        <td class="td-textbox"> <asp:TextBox ID="txtSongayo" runat="server" Text=""></asp:TextBox></td>
                        <td class="td-message"><asp:RequiredFieldValidator ID="rfvSongayo" runat="server" ControlToValidate="txtSongayo" ErrorMessage="< Vui lòng nhập địa chỉ"></asp:RequiredFieldValidator></td>
                    </tr>
                      <tr>
                        <td class="td-info">Sở thích:</td>   
                         <td class="td-textbox"> <asp:TextBox ID="txtSothich" runat="server" Text=""></asp:TextBox></td>
                        <td class="td-message"><asp:RequiredFieldValidator ID="rfvSothich" runat="server" ControlToValidate="txtSothich" ErrorMessage="< Vui lòng nhập sở thích"></asp:RequiredFieldValidator></td>
                    </tr>
                </table>
            </div>
            <div class="container-content-button-register">
                <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" OnClick="btnDangky_Click"/>
            </div>
                <div class="container-content-welcome">
                    <div class="container-content-welcome-label">
                         <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
                            <div class="container-content-base-info">
                             <asp:Label ID="lblBase_info" runat="server" Text=""></asp:Label>
                            </div>
                        <div class="group-base-info">
                            <div class="base-info">
                                 <asp:HyperLink ID="hplIndex" runat="server" NavigateUrl="~/index.aspx" Text="Xem thông tin Đăng ký"></asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
           </div>
      
  
</asp:Content>
