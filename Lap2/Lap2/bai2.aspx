<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai2.aspx.cs" Inherits="Lap2.bai2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bài 2: Câu Chào</title>
</head>
<style>
    * {
        margin: 0 auto;
        padding: 0;
        box-sizing: border-box;
    }
    .container {
        max-width: 900px;
        text-align: center;
    }
    .container-content {
        margin-top: 40px;
        border: 1px solid #808080;
        font-size: 18px;
    }
    .container-content-top{
        font-size: 18px;
        margin: 20px 0 20px 0;
    }

    .container-content-bottom {
        font-size: 18px;
        background-color: forestgreen;
        color: white;
        padding-top: 10px;
    }
    #btnThaydoicauchao{
        border: none;
        font-size: 18px;
        border-bottom: 1px solid #808080;
        cursor: pointer; 
        color: blue;
        background: none;
    }
    #txtHoten {
        margin: 0 10px 0 10px;
        padding: 5px 5px 5px 5px;
        font-size: 18px;
    }
    #lblHoten {
         color: blue;
    }
    .Label {
        padding-top: 10px;
        padding-bottom: 20px;
    }
    #lblChaoHT{
        font-weight: bold;
    }
    #lblChucmungLT{
        font-weight: bold;
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
            <div class="container-content-top">
                <asp:Label ID="lblHoten" runat="server" Text="Nhập họ tên: "></asp:Label>
                <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                <asp:Button ID="btnThaydoicauchao" runat="server" Text="Thay đổi câu chào" OnClick="btnThaydoicauchao_Click" />
            </div>
            <div class="container-content-bottom">
                <div class="Label">
                      <asp:Label CssClass="lblChaoban" ID="lblChaoban" runat="server" Text="Chào bạn !"></asp:Label>
                     <asp:Label CssClass="lblChaoHT" ID="lblChaoHT" runat="server" Text=""></asp:Label>
                </div>
                     <div class="Label">
                      <asp:Label ID="lblChucmung" runat="server" Text=""></asp:Label>
                       <asp:Label ID="lblChucmungLT" runat="server" Text=""></asp:Label>
                </div>
                
            </div>
        </div>
    </form>
   </div>
</body>
</html>
