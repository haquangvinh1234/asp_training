<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai5.aspx.cs" Inherits="Lap2.bai5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bài Tập 5</title>
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
        margin-top: 30px;
        border: 1px solid #808080;
    }
    #imgBtn {
        width: 30px;
        height: 30px;
        border: 1px solid #000;
        padding: 0px 0px 0px 0px;
        border: none;
    }
    .lblDonDatHang{
        background-color: #b6ff00;
        text-align:center;
        font-size: 25px;
        font-weight: bold;
        padding: 10px 0 10px 0;
        border-bottom: 1px solid #808080;
    }
    .container-content-flex{
        display:flex;
        margin-top: 10px;
        font-size: 18px;
        
    }
    .container-content-flex-left{
        width: 345px;
        padding-left: 60px;
    }
    .container-content-flex-right{
        width: 345px;

    }
    #txtMaSoThue{
        padding: 3px 10px 3px 10px;
        font-size: 18px;
        width: 150px;
        margin-bottom: 5px;
    }
    #txtDiaChi{
        padding: 3px 10px 3px 10px;
        font-size: 18px;
        width: 250px;
        margin-bottom: 5px;
    }
    #txtKhachhang{
        padding: 3px 10px 3px 10px;
        font-size: 18px;
        width: 200px;
        margin-bottom: 5px;
    }
    .lblChung{
        margin-bottom: 15px;
    }
    .clear{
        clear:both;
    }
    .container-content-bottom-flex{
        display:flex;
        margin-top: 20px;
        border-top: 1px solid #808080;
        border-bottom: 1px solid #808080;
    }
    .container-content-bottom-flex-left{
        border-right: 1px solid #808080;
        margin-right: 10px;
    }
    .container-content-bottom-flex-right{
       

    }
    .lblChonCacLoaiBanhSau {
        font-size: 18px;
        font-weight: bold;
        color: #ff0606;
        margin-top: 10px;
    }
    #ListBoxDanhSachBanh {
        margin-left: 10px;
        padding: 3px 5px 3px 5px;
        font-size: 18px;
        width: 350px
    }
    #DropDownListCacLoaiBanh{
        margin-left: 10px;
        padding: 3px 5px 3px 5px;
        font-size: 18px;
    }
    .bottom-flex-soluong{
        margin-top: 10px;
        font-size: 18px;
    }
    #txtSoLuong {
        font-size: 18px;
        padding: 3px 5px 3px 5px;
        width: 100px;
    }
    .btnTiep {
         margin-left: 80%;
    }
    #btnInDonDatHang{
       padding: 3px 5px 3px 5px;
       font-size: 18px;
       font-weight: 700;
       border: 1px solid #808080;
       background-color: #41aacc;
       cursor:pointer;
    }
    .btnInDonDatHang{
        text-align: center;
        margin: 10px 0 10px 0;
    }
    .container-content-bottom {
        display: none;
        margin-top: 25px;
        color: red;
        margin-bottom: 30px;
        width: 500px;
        font-size: 18px;
    }
    .lblHoaDonDatHang{
        text-align: center;
        font-size: 25px;
        font-weight: bold;
    }
    .container-content-bottom-full-border{
        border: 1px solid #808080;
        margin-top: 5px;
    }
    .container-info-user{
        margin-top: 10px;
        margin-left: 10px;
    }
    #lblXuatKhachHang1{
        font-weight: bold;
    }
    #lblXuatDiaChi1{
        font-weight: bold;
    }
    #lblXuatMaSoThue1{
        font-weight: bold;
    }
    .container-dat-cac-loai-banh{
        margin-top: 20px;
        margin-left: 10px;
    }
    .lblDatCacLoaiBanhSau{
        font-weight: bold;
    }
    .container-table-banh{
        margin-bottom: 20px;
        margin-right: 40px;
    }
    table{
        border: 1px solid #808080;
        width: 300px;
    }
    td{
        border: 1px solid #808080;
        padding-left: 5px;
    }
    .soluong {
        width: 70px;
    }
    #Button {
        font-size: 18px;
        padding: 0px 5px 0px 5px;
        margin-top: 10px;
        cursor:pointer;
    }
    #lblErorr{
        font-size: 15px;
        color: lemonchiffon;
        margin-left: 20px;
        font-weight: bold;
    }
    .lblErorr{
        display: none;
        background-color: red;
    }
    .imgBtn {
        margin-top: 5px;
        margin-left: 10%;
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
             <div class="lblDonDatHang"> 
                <asp:Label ID="lblDonDatHang" runat="server" Text="Đơn Đặt Hàng"> </asp:Label>
             </div>
              <div class="lblErorr" id="lblEror" runat="server">
                  <asp:Label ID="lblErorr" runat="server" Text=""> </asp:Label>
                 </div>
            <div class="container-content-flex">
                <div class="container-content-flex-left">
                    <div class="lblChung">
                        <asp:Label ID="lblKhachHang" runat="server" Text="Khách hàng: "> </asp:Label>
                    </div>
                     <div class="lblChung">
                        <asp:Label ID="lblDiaChi" runat="server" Text="Địa chỉ: "> </asp:Label>
                    </div>
                     <div class="lblChung">
                        <asp:Label ID="lblMaSoThue" runat="server" Text="Mã số thuế: "> </asp:Label>
                    </div>
                </div>
                <div class="container-content-flex-right">
                    <div>
                        <asp:TextBox ID="txtKhachhang" runat="server"></asp:TextBox>
                    </div>
                     <div>
                        <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                    </div>
                     <div>
                        <asp:TextBox ID="txtMaSoThue" runat="server" type="number" min="0"/>
                    </div>
                </div>
            </div>
            <div class="clear">

            </div>
            <div class="container-content-bottom-flex">
            <div class="container-content-bottom-flex-left">
                <div style="margin-right: 20px;">
               <div class="lblChonCacLoaiBanhSau">
                    <asp:Label ID="lblChonCacLoaiBanhSau" runat="server" Text="Chọn các loại bánh sau: "> </asp:Label>
               </div>
                <div>
                    <asp:DropDownList ID="DropDownListCacLoaiBanh" runat="server">
                        <asp:ListItem Text="Hamberger" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Bánh bò nướng" Value="2"></asp:ListItem>
                         <asp:ListItem Text="Pates Chauds" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Bánh Croissant bơ" Value="4"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="bottom-flex-soluong">
                    <asp:Label ID="lblSoLuong" runat="server" Text="Số lượng: "> </asp:Label>
                    <asp:TextBox ID="txtSoLuong" runat="server" type="number" min="0"/>
                    <asp:Label ID="lblCai" runat="server" Text="cái"> </asp:Label>
                </div>
                <div class="btnTiep">
                    <asp:Button ID="Button" runat="server" Text=">" OnClick="Button1_Click" />
                </div>
               </div>
            </div>
            <div class="container-content-bottom-flex-right">
                <div class="lblChonCacLoaiBanhSau">
                        <asp:Label ID="lblDanhSachBanh" runat="server" Text="Danh sách bánh được đặt: "></asp:Label>
                </div>
                <div>
                    <asp:ListBox ID="ListBoxDanhSachBanh" runat="server">
                       
                    </asp:ListBox>
                </div>
                <div class="imgBtn">
                    <asp:ImageButton ID="imgBtn" runat="server" ImageUrl="~/Image/delete.png" OnClick="imgBtn_Click"/>

                </div>
            </div>
           </div>
            <div class="clear">

            </div>
      
           <div class="btnInDonDatHang">
               <asp:Button ID="btnInDonDatHang" runat="server" Text="In Đơn Đặt Hàng" OnClick="btnInDonDatHang_Click"/>
           </div>
           
        </div>
        <div class="container-content-bottom" runat="server" id="XuatInHoaDon"> 
            <div class="lblHoaDonDatHang">
                  <asp:Label ID="lblHoaDonDatHang" runat="server" Text="Hoá Đơn Đặt Hàng"></asp:Label>
            </div>
            <div class="container-content-bottom-full-border">
                <div class="container-info-user">
                    <div class="lblXuatKhachHang">
                         <asp:Label ID="lblXuatKhachHang1" runat="server" Text="Khách hàng:"></asp:Label>
                         <asp:Label ID="lblXuatKhachHang2" runat="server" Text="Hạ Quag VInh"></asp:Label>
                    </div>
                      <div class="lblXuatDiaChi">
                         <asp:Label ID="lblXuatDiaChi1" runat="server" Text="Địa chỉ:"></asp:Label>
                         <asp:Label ID="lblXuatDiaChi2" runat="server" Text="Tân Phú"></asp:Label>
                    </div>
                      <div class="lblXuatMaSoThue">
                         <asp:Label ID="lblXuatMaSoThue1" runat="server" Text="Xuất mã số thuế:"></asp:Label>
                         <asp:Label ID="lblXuatMaSoThue2" runat="server" Text="123"></asp:Label>
                    </div>
                </div>
                <div class="container-dat-cac-loai-banh">
                    <div class="lblDatCacLoaiBanhSau">
                         <asp:Label ID="lblDatCacLoaiBanhSau" runat="server" Text="Đặt các loại bánh sau:"></asp:Label>
                    </div>
                    <div class="container-table-banh">
                       <asp:GridView ID="GridViewHienThiBanh" runat="server" AutoGenerateColumns="False" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="TenBanh"  HeaderText="Tên bánh"/>
                                    <asp:BoundField DataField="SoLuong"  HeaderText="Số lượng" />
                                </Columns>
                            </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </form>
     </div>
</body>
</html>
