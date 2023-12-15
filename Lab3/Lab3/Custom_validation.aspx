<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Custom_validation.aspx.cs" Inherits="Lab3.Custom_validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Custom Validation</title>
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
        margin-top: 10%;
        background-color: #2982a9;

    }
    table{
        margin-top: 10px;
        padding-bottom: 20px;
    }
    td{

    }
    #lblSochan{
        max-width: 150px;
        padding: 3px 5px 3px 5px;
        font-size: 18px;
    }
    #lblVuilongnhapMBM{
        max-width: 150px;
        padding: 3px 5px 3px 5px;
        font-size: 18px;
    }
    #txtSochan{
        font-size: 18px;
        padding: 3px 5px 3px 5px;
    }
    #Label1{
        font-size: 18px;
        color: white;
        font-weight: bold;
    }
    #txtMabaomat{
        font-size: 18px;
        padding: 3px 5px 3px 5px;
    }
    #Label2{
        font-size: 18px;
        color: white;
        font-weight: bold;
    }
    #lblSochan{
        color: #ffd800;
        font-weight: bold;
    }
    #lblVuilongnhapMBM{
        color: #ffd800;
        font-weight: bold;
    }
    #lblMabaomat{
        color: yellow;
    }
    #btnKiemTra{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
    }
    .td-btn{
        text-align:center;
    }
    #hyperlinkExample{
        font-size: 20px;
        margin-top: 10px;
    }
    #hyperlink1{
        font-size: 20px;
        margin-top: 10px;
    }
    .Title{
        background-color: #ffd800;
        text-align: center;
        font-size: 25px;
        font-weight: bold;
        padding: 10px 0 10px 0;
    }
   
</style>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <asp:HyperLink ID="hyperlinkExample" runat="server" NavigateUrl="~/bai-1-Validation_Controls.aspx" Text="Bài 1: Validation Controls  |  "></asp:HyperLink>
        <asp:HyperLink ID="hyperlink1" runat="server" NavigateUrl="~/Custom_validation.aspx" Text="Bài 2: Contom Validation"></asp:HyperLink>
        <div class="container-content">
            <div class="Title">
                <asp:Label ID="title" runat="server" Text="Custom Validation"></asp:Label>
            </div>
            <table>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Số chẵn: "></asp:Label></td>
                    <td><asp:TextBox ID="txtSochan" runat="server"></asp:TextBox></td>
                    <td><asp:CustomValidator ID="customValidatorSochan" runat="server" ValidateEmptyText="True" ControlToValidate="txtSochan"
                      ErrorMessage="Vui lòng nhập số chẵn" OnServerValidate="ValidateSochan"></asp:CustomValidator> </td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Mã bảo mật: "></asp:Label></td>
                    <td><asp:TextBox ID="txtMabaomat" runat="server"></asp:TextBox><asp:Label ID="lblMabaomat" runat="server" Text=""></asp:Label></td>
                    <td><asp:CustomValidator ID="customValidatorMabaomat" runat="server" ControlToValidate="txtMabaomat" ValidateEmptyText="True" ErrorMessage="" OnServerValidate="ValidateMaBK"></asp:CustomValidator></td>
                </tr>
              <tr>
                    <td></td>
                    <td class="td-btn"><asp:Button ID="btnKiemTra" runat="server" Text="Kiểm tra" OnClick="btnKiemTra_Click" /></td>
                    <td></td>
                </tr>
            </table>
            <div class="k"></div>
        </div>
    </form>
    </div>
   
</body>
</html>
