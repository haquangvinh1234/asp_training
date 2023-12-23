<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="capnhat.aspx.cs" Inherits="Lab7.design" %>

<asp:Content ID="header" runat="server" ContentPlaceHolderID="cphHeader"></asp:Content>
 
    <asp:Content ID="ctCapnhap" ContentPlaceHolderID="ctContent" runat="server">
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
   .erorr{
       text-align: center;
       font-size: 15px;
       padding: 10px 0 10px 0;
   }
</style>
                    <div class="right-title">
                        <asp:Label ID="lblright_title" runat="server" Text="Cập nhật Sản Phẩm"></asp:Label>
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
                        <asp:GridView ID="grvDSSP" Width="600px" CellPadding="4"  runat="server" AutoGenerateColumns="False" ForeColor="#333333" PageSize="3"  BackColor="White" AllowPaging="True"  OnSelectedIndexChanged="grvDSSP_SelectedIndexChanged" OnPageIndexChanging="grvDSSP_PageIndexChanging">
                            <Columns>
                                <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="true"/>
                                <asp:BoundField DataField="TenSP"  HeaderText="Tên sản phẩm" />
                                <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            </Columns>

                        </asp:GridView>
                    </div>
                    <div class="btn-action">
                        <asp:Button ID="btnThem" CssClass="btn" runat="server" Text="Thêm" OnClick="btnThem_Click" />
                        <asp:Button ID="btnLuu" CssClass="btn" runat="server" Text="Lưu" OnClick="btnLuu_Click" />
                        <asp:Button ID="btnXoa" CssClass="btn" runat="server" Text="Xoá" OnClick="btnXoa_Click" />
                        <asp:Button ID="btnSua" CssClass="btn" runat="server" Text="Sửa" OnClick="btnSua_Click" />
                    </div>
    </asp:Content>
            