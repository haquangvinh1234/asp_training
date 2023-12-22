<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="bai2.aspx.cs" Inherits="Lab5.bai2" %>

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
    input[type='submit' i]{
        padding: 3px 5px 3px 5px;
        margin-top: 10px;
    }
</style>
            <div class="title-monhoc">
                 <asp:Label ID="lblmonhoc" runat="server" Text="Tìm Kiếm Môn Học"></asp:Label>
            </div>
            <div class="table">
                <div class="table1">
                <table>
                    <tr>
                        <td> <asp:Label ID="lblMamonhoc" runat="server" Text="Mã môn học: "></asp:Label></td>
                        <td> <asp:TextBox ID="txtMamonhoc" runat="server"></asp:TextBox> </td>
                        <td> <asp:Button ID="btnTimtheoma" runat="server" Text="Tìm theo mã" OnClick="btnTimtheoma_Click" /></td>
                    </tr>
                      <tr>
                        <td> <asp:Label ID="lblTenmonhoc" runat="server" Text="Tên môn học: "></asp:Label></td>
                        <td> <asp:TextBox ID="txtTenmonhoc" runat="server"></asp:TextBox> </td>
                        <td> <asp:Button ID="btnTimTheoTen" runat="server" Text="Tìm theo tên" OnClick="btnTimTheoTen_Click" /></td>
                    </tr>
                </table>
             </div>
                <div class="erorr">
                    <asp:Label ID="lblErorr" runat="server" Text=""></asp:Label>
                </div>
                <div class="gridview">
                    <asp:GridView ID="grvDSMH" runat="server"  OnPageIndexChanging="grvDSMH_PageIndexChanging" Width="600px"  AutoGenerateColumns="False" CellPadding="4"  ForeColor="#333333" PageSize="3"  BackColor="White" AllowPaging="True" OnSelectedIndexChanged="grvDSMH_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="MaMH" HeaderText="Mã môn học" ReadOnly="True" />
                            <asp:BoundField DataField="TenMH" HeaderText="Tên môn học" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
</asp:Content>