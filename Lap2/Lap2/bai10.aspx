<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai10.aspx.cs" Inherits="Lap2.bai10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bài Tập 10</title>
</head>
<style>
    * {
        margin: 0 auto;
        padding: 0;
        box-sizing: border-box;
    }
    .container {
        max-width: 700px;
    }
    .container-content {
        border: 1px solid #808080;
        margin-top: 40px;
    }
    .container-content-choose-product{
        background-color: #ffd800;
        text-align: center;
        font-size: 25px;
        padding: 10px 0 10px 0;
    }
    #lblChonSanPhamBanThich {
        color: red;
        font-weight: bold;
    }
   
    .row-1 {
        text-align:center;
        font-size: 18px;
        background-color: #e4d4d4;
        font-weight: bold;
    }
    .row-2{
        font-size: 18px;
        background-color: #e4d26d;
    }
    .td-1-row2 {
        
    }
    .td-1-row2-label{
        margin-left: 10px;
    }

    .td1{
        width: 250px;
    }
    .td2{
        width: 150px;
    }
    .td3{
        width: 300px;
    }
    .td-row2 {
        text-align:center;
    }
    .td2-row2{
        text-align:center;
        color: red;
    }
    #ListBoxDanhSachKeo{
        width: 270px;
        height: 130px;
        margin-left: 10px;
    }
    .btnChonLai{
        background-color: #ffd800;
        padding: 10px 0 10px 0;
        border: 1px solid #808080;
        text-align: center;
    }
    #Button1{
        font-size: 18px;
        padding: 3px 5px 3px 5px;
        cursor: pointer;
    }
    #ListBoxDanhSachKeo{
        font-size: 18px;
    }
</style>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <div class="Menu">
             <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem Text="Bài tập 1a | " Value="~/bai1.aspx" />
                <asp:MenuItem Text="Bài tập 1b | " Value="~/bai1b.aspx" />
                <asp:MenuItem Text="Bài tập 2 | " Value="~/bai2.aspx" />
                <asp:MenuItem Text="Bài tập 3 | " Value="~/bai3.aspx" />
                <asp:MenuItem Text="Bài tập 4 | " Value="~/bai4.aspx" />
                <asp:MenuItem Text="Bài tập 5 |" Value="~/bai5.aspx" />
                <asp:MenuItem Text="Bài tập 6 |" Value="~/bai6.aspx" />
                <asp:MenuItem Text="Bài tập 9 |" Value="~/bai9.aspx" />
                <asp:MenuItem Text="Bài tập 10 " Value="~/bai10.aspx" />
            </Items>
        </asp:Menu>
        </div>
        <div class="container-content">
            <div class="container-content-choose-product">
                <asp:Label ID="lblChonSanPhamBanThich" runat="server" Text="Chọn Các Sản Phẩm Bạn Thích"></asp:Label>
            </div>
        </div>
        <table>
            <tr class="row-1">
                <td class="td-row1 td1">Danh sách sản phẩm</td>
                <td class="td-row1 td2">Số lượng</td>
                <td class="td-row1 td3">Sản phẩm được chọn</td>
            </tr>
             <tr class="row-2">
                <td class="td-1-row2 td1">
                    <div class="td-1-row2-label">
                        <asp:CheckBox ID="ckbKeoTraiCay" runat="server" Text="Kẹo trái cây thập cẩm"  AutoPostBack="true" OnCheckedChanged="ckbKeoTraiCay_CheckedChanged"/>
                    </div>
                      <div class="td-1-row2-label">
                        <asp:CheckBox ID="ckbKeoNho" runat="server" Text="Kẹo nho"  AutoPostBack="true" OnCheckedChanged="ckbKeoNho_CheckedChanged"/>
                    </div>
                      <div class="td-1-row2-label">
                        <asp:CheckBox ID="ckbKeoTao" runat="server" Text="Kẹo táo"  AutoPostBack="true" OnCheckedChanged="ckbKeoTao_CheckedChanged"/>
                    </div>
                      <div class="td-1-row2-label">
                        <asp:CheckBox ID="ckbSocoloTao" runat="server" Text="Socola táo"  AutoPostBack="true" OnCheckedChanged="ckbSocoloTao_CheckedChanged"/>
                    </div>
                      <div class="td-1-row2-label">
                        <asp:CheckBox ID="ckbSocolaDauPhong" runat="server" Text="Kẹo Socola đậu phộng"  AutoPostBack="true" OnCheckedChanged="ckbSocolaDauPhong_CheckedChanged"/>
                    </div>
                      <div class="td-1-row2-label">
                        <asp:CheckBox ID="ckbCaPheSua" runat="server" Text="Kẹo coffe sữa"  AutoPostBack="true" OnCheckedChanged="ckbCaPheSua_CheckedChanged"/>
                    </div>
                      <div class="td-1-row2-label">
                        <asp:CheckBox ID="ckbSocoloThapCam" runat="server" Text="Socola thập cẩm có nhân" AutoPostBack="true" OnCheckedChanged="ckbSocoloThapCam_CheckedChanged"/>
                    </div>
                      
                </td>
                <td class="td2-row2 td2" ><asp:Label ID="lblSoluong" runat="server" Text="0 sản phẩm"></asp:Label></td>
                <td class="td3-row2 td3"><asp:ListBox ID="ListBoxDanhSachKeo" runat="server"></asp:ListBox> </td>
            </tr>
        </table>
        <div class="btnChonLai">
            <asp:Button ID="Button1" runat="server" Text="Chọn lại" OnClick="Button1_Click" />
        </div>
    </form>
    </div>
</body>
</html>
