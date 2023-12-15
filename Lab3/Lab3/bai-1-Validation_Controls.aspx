<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai-1-Validation_Controls.aspx.cs" Inherits="Lab3.bai_1_Validation_Controls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Controls</title>
</head>
<style>
    *{
        margin: 0 auto;
        padding: 0;
        box-sizing: border-box;
    }
    .container{
        max-width: 700px;
    }
    .container-content{
        margin-top: 30px;
        margin-bottom: 20px;
    }
    .container-content-title{
        background-color: #0094ff;
        padding: 10px 0px 10px 0;
        text-align: center;
        font-weight: bold;
    }
    #lblTitle{
        font-size: 25px;
        color: white;
    }
    .container-content-group{
        background-color: #333b8f;
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
        color: white;
    }
    #txtHoten{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 250px;
    }
    #txtCoquan{
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
        color: white;
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
        padding-left: 30%;
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
</style>
<body>
    <div class="container">
    <form id="form1" runat="server">
                <asp:HyperLink ID="hyperlink1" runat="server" NavigateUrl="~/bai-1-Validation_Controls.aspx" Text="Bài 1: Validation Controls  |  "></asp:HyperLink>
                <asp:HyperLink ID="hyperlinkExample" runat="server" NavigateUrl="~/Custom_validation.aspx" Text="Bài 2: Contom Validation"></asp:HyperLink>
        <div class="container-content">
            <div class="container-content-title">
                <asp:Label ID="lblTitle" runat="server" Text="Đăng Ký Phòng Hội Nghị"></asp:Label>
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
                        <td class="td-info">Cơ quan:</td>   
                        <td class="td-textbox"> <asp:TextBox ID="txtCoquan" runat="server"></asp:TextBox></td>
                        <td class="td-message"><asp:RequiredFieldValidator ID="rfvCoquan" runat="server" ControlToValidate="txtCoquan" ErrorMessage="< Vui lòng nhập cơ quan"></asp:RequiredFieldValidator></td>
                    </tr>
                      <tr>
                        <td class="td-info">Email:</td>   
                        <td class="td-textbox"><asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></td>
                            <td class="td-message"><asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="< Vui lòng nhập email"></asp:RequiredFieldValidator></td>
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
                        <td class="td-info">Ngày check:</td>   
                        <td class="td-textbox"> <asp:TextBox ID="txtNgaycheck" runat="server" TextMode="Date"></asp:TextBox></td>
                            <td class="td-message"><asp:RequiredFieldValidator ID="rfvNgaycheck" runat="server" ControlToValidate="txtNgaycheck" ErrorMessage="< Vui lòng nhập ngày check"></asp:RequiredFieldValidator></td>
                    </tr>
                      <tr>
                        <td class="td-info">Số ngày ở:</td>   
                        <td class="td-textbox"> <asp:TextBox ID="txtSongayo" runat="server" TextMode="Number" Min="0"></asp:TextBox></td>
                            <td class="td-message"><asp:RequiredFieldValidator ID="rfvSongayo" runat="server" ControlToValidate="txtSongayo" ErrorMessage="< Vui lòng nhập số ngày ở"></asp:RequiredFieldValidator></td>
                    </tr>
                      <tr>
                        <td class="td-info">Loại phòng:</td>   
                        <td class="td-textbox td-dropdown">
                            <asp:DropDownList ID="ddlDanhSachPhong" runat="server">
                                <asp:ListItem Text="Phòng đơn" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Phòng đôi" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Phòng víp đơn" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Phòng víp đôi" Value="4"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
          
                    </tr>
                </table>
            </div>
            <div class="container-content-button-register">
                <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" OnClick="btnDangky_Click" />
            </div>
                <div class="container-content-welcome">
                    <div class="container-content-welcome-label">
                         <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
                            <div class="container-content-base-info">
                             <asp:Label ID="lblBase_info" runat="server" Text=""></asp:Label>
                            </div>
                        <div class="group-base-info">
                            <div class="base-info">
                                 <asp:Label ID="baseHoten" runat="server" Text=""></asp:Label>
                            </div>
                              <div class="base-info">
                                 <asp:Label ID="baseCoquan" runat="server" Text=""></asp:Label>
                            </div>
                              <div class="base-info">
                                 <asp:Label ID="baseEmail" runat="server" Text=""></asp:Label>
                            </div>
                              <div class="base-info">
                                 <asp:Label ID="basePass" runat="server" Text=""></asp:Label>
                            </div>
                   
                              <div class="base-info">
                                 <asp:Label ID="baseSongayo" runat="server" Text=""></asp:Label>
                            </div>
                              <div class="base-info">
                                 <asp:Label ID="baseLoaiPhong" runat="server" Text=""></asp:Label>
                            </div>
                             <div class="base-info">
                                 <asp:Label ID="baseNgaycheck" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
           </div>
        </div>
    </form>
    </div>
</body>
</html>
