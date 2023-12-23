<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="timkiem.aspx.cs" Inherits="Lab7.timkiem" %>

<asp:Content ID="header" runat="server" ContentPlaceHolderID="cphHeader"></asp:Content>
<asp:Content ID="ctContent" runat="server" ContentPlaceHolderID="ctContent">
         <style>
    .right-title{
        font-size: 25px;
        font-weight: bold;
        margin-bottom: 10px;
    }
    input[type='text'i]{
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
                        <asp:Label ID="lblright_title" runat="server" Text="Tìm Kiếm Sản Phẩm"></asp:Label>
                    </div>
                    <div class="table">
                        <table>
                            <tr>
                                <td>Mã sản phẩm:</td>
                                <td class="td-row1"><asp:TextBox ID="txtMaSP" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr class="tr">
                                <td>Tên sản phẩm:</td>
                                <td><asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox></td>
                            </tr>
                        </table>
                    </div>
                 <div class="erorr">
                    <asp:Label ID="lblErorr" runat="server" Text=""></asp:Label>
                </div>
                    <div class="gridView">
                        <asp:GridView ID="grvDSSP" Width="600px" CellPadding="4" runat="server" AutoGenerateColumns="False" PageSize="3" OnSelectedIndexChanged="grvDSSP_SelectedIndexChanged" OnPageIndexChanging="grvDSSP_OnPageIndexChanging">
                            <Columns>
                                <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="true"/>
                                <asp:BoundField DataField="TenSP"  HeaderText="Tên sản phẩm" />
                                <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            </Columns>

                        </asp:GridView>
                    </div>
                    <div class="btn-action">
                        <asp:Button ID="btnTimTheoMa" CssClass="btn" runat="server" Text="Tìm theo mã" OnClick="btnTimTheoMa_Click" />
                        <asp:Button ID="btnTimTheoTen" CssClass="btn" runat="server" Text="Tìm theo tên" OnClick="btnTimTheoTen_Click" />
                    </div>
</asp:Content>
 