<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="bai2.aspx.cs" Inherits="Lab4.bai2" %>

<asp:Content ID="CTHeader" runat="server" ContentPlaceHolderID="cphHeader"></asp:Content>
<asp:Content ID="CTContent" runat="server" ContentPlaceHolderID="cphContent">
    <style>
    .container-content-titlel {
        text-align: center;
        padding: 10px 0 10px 0;
        font-size: 30px;
    }
    .container-content-input-data{
        text-align: center;
        padding-top: 20px;
    }
    .container-table table{
        text-align:center;
    }
    .container-table table td{
        padding: 3px 5px 3px 5px;
    }
    td #txtSo1{
        padding: 3px 5px 3px 5px;
     }
    input[type="number" i] {
    padding-block: 5px;
    padding-block-start: ;
    padding-block-end: ;
    padding-inline: 2px;
    font-size: 15px;
}
    #rfvSo1{
        color: red;
    }
    .Ketqua{
        padding-top: 10px;
        width: 1000px;
        text-align: center;
        margin-top: 10px;
        
    }
    #btnKetqua{
 
    }
    input[type="submit" i] {
        padding: 3px 5px 3px 5px;
        font-size: 17px;
        font-weight: bold;
    }
    .Xuat-ketqua{
        padding-top: 10px;
    }
   
</style>
            <div class="container-content-titlel">
                <asp:Label ID="lblTitle" runat="server" Text="Tính Ước Số Chung Lớn Nhất"></asp:Label>
            </div>
            <div class="container-content-input-data">
                <div class="container-table">
                <table>
                    <tr>
                        <td class="td-td1"><asp:Label ID="lblSo1" runat="server" Text="Nhập số a: "></asp:Label></td>
                        <td class="td-td2"><asp:TextBox ID="txtSo1" runat="server" type="number" Min="0"/></td>
                        <td><asp:RequiredFieldValidator ID="rfvSo1" runat="server" ControlToValidate="txtSo1" ErrorMessage="Không được để trống" Display="Static" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                      <tr>
                        <td><asp:Label ID="lblSo2" runat="server" Text="Nhập số b: "></asp:Label></td>
                        <td><asp:TextBox ID="txtSo2" runat="server"  type="number" Min="0" /></td>
                        <td><asp:RequiredFieldValidator ID="rfvSo2" runat="server" ControlToValidate="txtSo2" ErrorMessage="Không được để trống" Display="Dynamic"  ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                </table>
               </div>
                <div class="Ketqua">
                    <asp:Button ID="btnKetqua" runat="server" Text="Tính" OnClick="btnKetqua_Click" />
                </div>
                <div class="Xuat-ketqua" id="XuatKetQua" runat="server" style="display:none;">
                    <asp:Label ID="lblXuatketqua" runat="server" Text=""></asp:Label>
                    <asp:Label ID="lblUSCLN" runat="server" Text="8" ForeColor="Red"></asp:Label>
                </div>
            </div>
</asp:Content>


