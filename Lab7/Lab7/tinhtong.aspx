<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="tinhtong.aspx.cs" Inherits="Lab7.tinhtong" %>

<asp:Content ID="header" runat="server" ContentPlaceHolderID="cphHeader"></asp:Content>
<asp:Content ID="ctContent" runat="server" ContentPlaceHolderID="ctContent">
          <style>
    .right-title{
        font-size: 25px;
        font-weight: bold;
        margin-bottom: 10px;
    }
    input[type='number'i]{
        font-size: 18px;
        padding: 3px 5px 3px 5px;
        margin-top: 7px;
    }
    table{
        width: 400px;
    }
    td{
        padding: 0 10px 0 10px;
    }
    .btn-action{
        margin-top: 20px;
    }
    .btn{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        font-weight: bold;
    }
   .td-row1{
       margin-top: 8px;
   }
</style>
                    <div class="right-title">
                        <asp:Label ID="lblright_title" runat="server" Text="Trang tính toán"></asp:Label>
                    </div>
                    <div class="table">
                        <table>
                            <tr>
                                <td>Nhập vào n:</td>
                                <td class="td-row1"><asp:TextBox ID="txtMaSP" runat="server" min="0" type="number"/></td>
                            </tr>
                        </table>
                    </div>
                 <div class="erorr">
                    <asp:Label ID="lblErorr" runat="server" Text=""></asp:Label>
                </div>
                    
                    <div class="btn-action">
                        <asp:Button ID="btnTinhTong" CssClass="btn" runat="server" Text="Tính" OnClick="btnTinhTong_Click"/>
                    </div>
                <div class="ketqua">
                         <asp:Label ID="lblketqua" runat="server" Text=""></asp:Label> 
                </div>
</asp:Content>
