<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.Master" CodeBehind="bai1.aspx.cs" Inherits="Lab5.bai1" %>


<asp:Content ID="CTHeader" runat="server" ContentPlaceHolderID="cphHeader"></asp:Content>
<asp:Content ID="CTContent" runat="server" ContentPlaceHolderID="cphContent">
    <style>
    .title-monhoc{
        font-size: 30px;
        text-align: center;
        margin-bottom: 20px;
    }
    #txtMamonhoc{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 50px;
    }

    input[type="text" i] {
      padding: 3px 5px 3px 5px;
      font-size: 18px;
      margin-top: 10px;
    }
    .actions{
        text-align: center;
        margin-top: 20px;
    }
    td {
        margin: 10px;
    }
    .btn{
        padding: 3px 5px 3px 5px;
        font-weight: 800;
        color: red;
        cursor: pointer;
    }
    .table{
        text-align: center;
    }
    .table1{
        text-align:center;
    }
    .gridview{
        text-align:center;
    }
    #lblErorr{
        color: red;
        font-size: 15px;
        text-align: center;
    }
    .alertPanel {
    background-color: #f8d7da;
    border-color: #f5c6cb;
    color: #721c24;
    padding: 8px;
    margin-bottom: 20px;
    border: 1px solid transparent;
    border-radius: .25rem;
}
</style>
            <div class="title-monhoc">
                 <asp:Label ID="lblmonhoc" runat="server" Text="Danh Sách Môn Học"></asp:Label>
            </div>
            <div class="table">
                <div class="table1">
                <table>
                    <tr>
                        <td> <asp:Label ID="lblMamonhoc" runat="server" Text="Mã môn học: "></asp:Label></td>
                        <td> <asp:TextBox ID="txtMamonhoc" runat="server"></asp:TextBox> </td>
                    </tr>
                      <tr>
                        <td> <asp:Label ID="lblTenmonhoc" runat="server" Text="Tên môn học: "></asp:Label></td>
                        <td> <asp:TextBox ID="txtTenmonhoc" runat="server"></asp:TextBox> </td>
                    </tr>
                </table>
             </div>
                <div class="erorr">
                    <asp:Label ID="lblErorr" runat="server" Text=""></asp:Label>
                </div>
                <div class="gridview">
                    <asp:GridView ID="grvDSMH" runat="server" Width="600px"  AutoGenerateColumns="False"  OnPageIndexChanging="grvDSMH_PageIndexChanging" CellPadding="4"  ForeColor="#333333" PageSize="3"  BackColor="White" AllowPaging="True" OnSelectedIndexChanged="grvDSMH_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="MaMH" HeaderText="Mã môn học" ReadOnly="True" />
                            <asp:BoundField DataField="TenMH" HeaderText="Tên môn học" />
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                        </Columns>
                 <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#0066CC" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </div>
            </div>
            <div class="group-action">
                <div class="actions">
                    <asp:Button ID="btnThem" runat="server" Text="Thêm" CssClass="btn" OnClick="btnThem_Click" />
                    <asp:Button ID="btnLuu" runat="server" Text="Lưu" CssClass="btn" OnClick="btnLuu_Click"/>
                    <asp:Button ID="btnXoa" runat="server" Text="Xoá" CssClass="btn" OnClick="btnXoa_Click" />
                    <asp:Button ID="btnSua" runat="server" Text="Sửa" CssClass="btn" OnClick="btnSua_Click"/>
                </div>
            </div>
   </asp:Content>