<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai3.aspx.cs" Inherits="Lap2.bai3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    .container-content{
        margin-top: 40px;
        border: 1px solid #808080;
    }
    .container-content-label{
        background-color: #e288e1;
        padding: 10px 0 10px 0;
        font-size: 25px;
        color: #ff009c;
        font-weight: bold;
        margin-bottom: 10px;
    }
    .container-content-listbox{
        display: flex;
        justify-content: space-between;
    }
    #displayImage {
        width: 400px;
        height: 400px;
    }
    #ltbImg{
        width: 400px;
        height: 100px;
        font-size: 18px;
        padding: 0 5px 0 5px;
    }
    .container-content-listbox-left{
        width: 450px;
    }
    .container-content-listbox-right{
        width: 450px;
    }
</style>
<body>
    <div class="container">
    <form id="form1" runat="server">
          <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem Text="Bài tập 1a | " Value="~/bai1.aspx" />
                <asp:MenuItem Text="Bài tập 1b | " Value="~/bai1b.aspx" />
                <asp:MenuItem Text="Bài tập 2 | " Value="~/bai2.aspx" />
                <asp:MenuItem Text="Bài tập 3 | " Value="~/bai3.aspx" />
                <asp:MenuItem Text="Bài tập 4 |" Value="~/bai4.aspx" />
                <asp:MenuItem Text="Bài tập 5 |" Value="~/bai5.aspx" />
                <asp:MenuItem Text="Bài tập 6 |" Value="~/bai6.aspx" />
                <asp:MenuItem Text="Bài tập 9 |" Value="~/bai9.aspx" />
                <asp:MenuItem Text="Bài tập 10 " Value="~/bai10.aspx" />
        
            </Items>
        </asp:Menu>
        <div class="container-content">
            <div class="container-content-label">
                <asp:Label ID="lblTieude" runat="server" Text="Xem Album các loài hoa"></asp:Label>
            </div>
            <div class="container-content-listbox">
                <div class="container-content-listbox-left">
                    <asp:ListBox ID="ltbImg" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="ltbImg_SelectedIndexChanged">
                      <asp:ListItem Text="Hoa Sen" Value="hoa-sen" Selected="False"></asp:ListItem>
                      <asp:ListItem Text="Hoa Lan" Value="hoa-lan"></asp:ListItem>
                      <asp:ListItem Text="Hoa Anh Đào" Value="hoa-anh-dao"></asp:ListItem>
                      <asp:ListItem Text="Hoa Cẩm Tú Cầu" Value="hoa-cam-ti-cau"></asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="container-content-listbox-right">
                    
                    <asp:Image ID="displayImage"  runat="server"/>
                    </div>
                
            </div>
        </div>
    </form>
    </div>
  
</body>
</html>
