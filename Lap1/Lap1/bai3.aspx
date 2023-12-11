<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai3.aspx.cs" Inherits="Lap1.bai3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bài tập 3</title>
</head>
    <style>
        #form1 {
            text-align:center;
            align-items: center;
            margin-top: 100px;
        }
        #lbl1{
            font-size: 25px;
            font-weight: bold;
            color: red;
        }
        #lblSo1 {
            margin-right: 10px;
        }
       #lblSo2 {
            margin-right: 10px;
        }
        #lblSo3 {
            margin-right: 10px;
        }
        #Tim {
            padding: 5px 10px 5px 10px;
            background-color: forestgreen;
            font-size: 20px;
            font-weight: 700;
            color: white;
            border: none;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .menu {
           margin-left: 40%;
           margin-bottom: 10px;
        }
        .sothu1 {
            margin-bottom: 10px;
            font-size: 18px;
        }
         .sothu2 {
            margin-bottom: 10px;
            font-size: 18px;
        }
         .sothu3 {
            margin-bottom: 10px;
            font-size: 18px;
        }
         #So1{
             padding-top: 5px;
             padding-bottom: 5px;
             font-size: 18px;
         }
         #So2{
             padding-top: 5px;
             padding-bottom: 5px;
             font-size: 18px;
         }
         #So3{
             padding-top: 5px;
             padding-bottom: 5px;
             font-size: 18px;
         }
         #error {
             margin-top: 5px;
             font-size: 15px;
             color: blue;
         }
          #Ketqua {
             font-size: 18px;
         }
    </style>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="menu"> 
                <asp:Menu  ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
              <Items >
                  <asp:MenuItem Text="Bài 1 - " Value="~/bai1.aspx" />
                  <asp:MenuItem Text="Bài 2 - " Value="~/bai2.aspx" />
                  <asp:MenuItem Text="Bài 3 - " Value="~/bai3.aspx" />
                  <asp:MenuItem Text="Bài 4 - " Value="~/bai4.aspx" />
                  <asp:MenuItem Text="Bài 5 " Value="~/bai5.aspx" />
              </Items>
          </asp:Menu></div>
           
              <asp:Label ID="lbl1" runat="server" Text="Tìm số lớn nhất"></asp:Label>
            
        <div>
              <asp:Label ID="error" runat="server" Text=""></asp:Label>
            <div class="sothu1">
                   <asp:Label ID="lblSo1" runat="server" Text="Số thứ 1:"></asp:Label>
            <asp:TextBox ID="So1" runat="server" Width="221px"></asp:TextBox>
            </div>
             <div class="sothu2">
                   <asp:Label ID="lblSo2" runat="server" Text="Số thứ 2:"></asp:Label>
            <asp:TextBox ID="So2" runat="server" Width="221px"></asp:TextBox>
            </div>
             <div class="sothu3">
                   <asp:Label ID="lblSo3" runat="server" Text="Số thứ 3:"></asp:Label>
            <asp:TextBox ID="So3" runat="server" Width="221px"></asp:TextBox>
            </div>
        </div>
            <asp:Button ID="Tim" runat="server" Text="Tìm" OnClick="Tim_Click" />

           
        </div>
        <asp:Label ID="Ketqua" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
