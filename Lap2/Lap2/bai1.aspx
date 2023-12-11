<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai1.aspx.cs" Inherits="Lap2.bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bai 1 A</title>
</head>
<style>
    * {
        margin: 0 auto;
        padding: 0;
        box-sizing: border-box;
    }
    .container {
        max-width: 900px;
    }
    .container-childen{
        display:flex;
        align-content:center;
        margin-top: 20px;
        border: 1px solid #808080;
    }
  
    .container-left{
        padding: 5px 20px 5px 20px;
        max-width: 500px;
    }
   .container-right{
        padding: 5px 20px 5px 20px;
        border-left: 1px solid #808080;
        max-width: 400px;
    }
   #thontincanhan {
       font-size: 25px;
       color: red;
       font-weight: bold;
       align-items: center;
       text-align:center;
   }
   .lblchung{
       font-size: 18px;
   }
   .txtchung{
       font-size: 18px;
       padding: 5px 5px 5px 5px;
   }
   #txtEmail{
       margin-left: 92px;
   }
   .classChung{
       margin-bottom: 10px;
   }
   #rdbNam{
       margin-left: 70px;
   }
   #rdbNu{
       margin-left: 10px;
   }
   #txtADiachi {
       margin-left: 85px;
   }
   #txtDienthoai {
       margin-left: 60px;
   }
   #btnDangky {
       font-size: 18px;
       background-color: forestgreen;
       color:azure;
       border: none;
       border-radius: 5px;
       padding: 5px 10px 5px 10px;
       font-weight: bold;
   }
   .classBtnDangky {
       text-align: center;
   }
   .classthongtincanhan{
       text-align: center;
       border-bottom: 2px solid #000000;
       margin-bottom: 15px;
   }
   .classErorr {
       text-align: center;
   }
   #erorr {
       font-size: 15px;
       color: blue;
   }
   #hosokhachhang{
       font-size: 25px;
       color: red;
       font-weight: bold;
       align-items: center;
       text-align:center;
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
        <div class="container-childen">
            <div class="container-left">
                <div class="classthongtincanhan">
                    <asp:Label ID="thontincanhan" runat="server" Text="Thông tin cá nhân"></asp:Label>
                </div>
                <div  class="classErorr">
                      <asp:Label ID="erorr" runat="server" Text=""></asp:Label>
                </div>
                 <div class="classChung">
                      <asp:Label class="lblchung" ID="lblEoten" runat="server" Text="Họ tên khách hàng:"></asp:Label>
                      <asp:TextBox class="txtchung" ID="txtHoten" runat="server"></asp:TextBox>
                </div>
                 <div class="classChung">
                      <asp:Label class="lblchung" ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                      <asp:TextBox class="txtchung" ID="txtEmail" runat="server"></asp:TextBox>
                </div>
                 <div class="classChung">
                      <asp:Label class="lblchung" ID="lblGioitinh" runat="server" Text="Giới tính:"></asp:Label>
                      <asp:RadioButton class="rdb" ID="rdbNam" runat="server" Text="Nam" GroupName="options"/>
                      <asp:RadioButton class="rdb"  ID="rdbNu" runat="server" Text="Nữ"  GroupName="options"/>
                </div>
                <div class="classChung">
                      <asp:Label class="lblchung" ID="lblDiachi" runat="server" Text="Địa chỉ:"></asp:Label>
                    <asp:TextBox  class="txtchung" ID="txtADiachi" runat="server" TextMode="MultiLine" Rows="4" Columns="20"></asp:TextBox>
                </div>
                   <div class="classChung">
                      <asp:Label class="lblchung" ID="lblDienthoai" runat="server" Text="Điện thoại:"></asp:Label>
                      <asp:TextBox class="txtchung" ID="txtDienthoai" runat="server"></asp:TextBox>
                </div>
                <div class="classBtnDangky">
                    <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" OnClick="btnDangky_Click" />
                </div>
            </div>
            <div class="container-right">
                 <div class="classthongtincanhan">
                    <asp:Label ID="hosokhachhang" runat="server" Text="Hồ sơ khách hàng"></asp:Label>
                </div>
                <div>
                    <asp:Label class="lblchung" ID="lblXuathoten" runat="server" Text=""></asp:Label>
                </div>
                <div>
                    <asp:Label class="lblchung" ID="lblXuatemail" runat="server" Text=""></asp:Label>
                </div>
                <div>
                    <asp:Label class="lblchung" ID="lblXuatgioitinh" runat="server" Text=""></asp:Label>
                </div>
                <div>
                    <asp:Label class="lblchung" ID="lblXuatdiachi" runat="server" Text=""></asp:Label>
                </div>
                <div>
                    <asp:Label class="lblchung" ID="lblXuatdienthoai" runat="server" Text=""></asp:Label>
                </div>
             
            </div>
        </div>
    </form>
    </div>
</body>

</html>
