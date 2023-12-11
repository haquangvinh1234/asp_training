<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai1b.aspx.cs" Inherits="Lap2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bài 1 B</title>
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
    .container-childen {
        margin-top: 20px;
        border: 1px solid #808080;
    }
    #lblLoiichdocbao {
        margin-top: 10px;
        padding: 10px 10px 10px 10px;
        font-size: 25px;
        color: blue;
        font-weight: bold;
    }
    .container-childen-content {
        margin-left: 50px;
        font-size: 18px;
        color: blue;
    }
    .container-childen-content-img {
        width: 350px;
        height: 300px;
    }
    .container-childen-content-flex{
        display: flex;
        align-items: center;
    }
    .container-childen-content-newspaper-a {
        background-color: blue;
        padding: 10px 20px 10px 20px;
        margin-bottom: 5px;
    }
    .container-childen-content-newspaper {
        margin-top: 20px;
    }
    a {
        text-decoration: none;
        font-weight: bold;
        font-size: 18px;
        color: white;
    }

     .container-childen-content-newspaper-a a:hover {
         color: yellow;
     }
     .Menu{
         margin-top: 20px;
         background-color: red;
     }
     #Menu1{
         color: red;
     }
</style>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <div class="Menu" >
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

        </div>
        <div class="container-childen">
            <asp:Label ID="lblLoiichdocbao" runat="server" Text="Lợi ích của việc đọc báo:"></asp:Label>
            <div class="container-childen-content">
                <div class="container-childen-content-flex">
                    <ul>
                        <li>Mở rộng kiến thức</li>
                        <li>Cập nhật thông tin</li>
                        <li>Rèn luyện trí nhớ</li>
                        <li>Giải trí ít tốn kém</li>
                        <li>.....</li>
                    </ul>
                    <img class="container-childen-content-img" src="https://camnanggiaoduc.com/wp-content/uploads/2018/04/Cau-hoi-mo.jpg" alt="Alternate Text" />
                </div>
             
            </div>
               <div class="container-childen-content-newspaper">
                    <div class="container-childen-content-newspaper-a">
                        <a href="https://tuoitre.vn/">Tuổi trẻ</a>
                    </div>
                  <div class="container-childen-content-newspaper-a">
                        <a href="https://vnexpress.net/">Tin nhanh</a>
                    </div>
                  <div class="container-childen-content-newspaper-a">
                        <a href="https://thanhnien.vn/">Thanh niên</a>
                    </div>
                  <div class="container-childen-content-newspaper-a">
                        <a href="https://nld.com.vn/">Người lao động</a>
                    </div>
                </div>
        </div>
    </form>
    </div>
</body>
</html>
