<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai6.aspx.cs" Inherits="Lap2.bai6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
   
    body {
    font-family: Arial,sans-serif;
    margin: 0px;
    padding: 30px
}

table {
    border-collapse: collapse;
    border: 2px solid #010817;
    width:40%
}

table, th, td {
    border: 2px solid #010817;
}

.row-1 {
    background-color: #3266cc;
    color: white;
    text-align:center;
}
.row-3{
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
        <div>
             <div>
            <table>
                <tr class="row-1">
                    <td>Hệ thống các bài tập Các điều khiển cơ bản</td>
                </tr>
                <tr class="row-2">
                    <td>
                        <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="LinkButton" BulletStyle="Disc" OnClick="BulletedList1_Click">
                            <asp:ListItem Text="Bài 3.1: Trang đọc báo" Value="~/bai1b.aspx" />
                            <asp:ListItem Text="Bài 3.2: Trang câu chào" Value="~/bai2.aspx" />
                            <asp:ListItem Text="Bài 3.3: Album các loài hoa" Value="~/bai3.aspx" />
                            <asp:ListItem Text="Bài 3.4: Trang đơn đặt hàng" Value="~/bai5.aspx" />
                            <asp:ListItem Text="Bài 3.5: Trang phiếu ý kiến người tiêu dùng" Value="~/bai4.aspx" />
                        </asp:BulletedList>

                    </td>
                </tr>
                <tr class="row-3">
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Đổi Bullet"></asp:Label>
                        <asp:DropDownList ID="ddlDisplayMode" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlDisplayMode_SelectedIndexChanged">
                            <asp:ListItem Text="Số" Value="1" />
                            <asp:ListItem Text="Ký tự thường" Value="2" />
                            <asp:ListItem Text="Ký tự in" Value="3" />
                            <asp:ListItem Text="Hình tròn" Value="4" />
                            <asp:ListItem Text="Hình vuông" Value="5" />
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
        </div>
    </form>
        </div>
</body>
</html>
