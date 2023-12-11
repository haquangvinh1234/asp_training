<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai1.aspx.cs" Inherits="Lap1.bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bài Tập 1</title>
</head>
     <style>
        #form1 {
            text-align:center;
            align-items: center;
            margin-top: 100px;
        }
        #lbl1 {
            color: red;
            font-size: 25px;
            font-weight: bold;
        }
        #So1 {
            padding: 5px;
            font-size: 18px;
        }

       #So2{
            padding: 5px;
            font-size: 18px;
        }
       .menu {
           margin-left: 40%;
           margin-bottom: 10px;
        }
       #Label2 {
            font-size: 18px;
       }
       #Label1 {
            font-size: 18px;
       }
       #Tinhtong {
            padding: 5px 10px 5px 10px;
            background-color: forestgreen;
            font-size: 20px;
            font-weight: 700;
            color: white;
            border: none;
            border-radius: 5px;
            margin-bottom: 10px;
       }
       #lblTong {
            font-size: 18px;
       }
       #error {
             margin-top: 5px;
             font-size: 15px;
             color: blue;
         }
    </style>
<body>
    <form id="form1" runat="server">
        <div class="menu">
            <asp:Menu  ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
              <Items>
                  <asp:MenuItem Text="Bài 1 - " Value="~/bai1.aspx" />
                  <asp:MenuItem Text="Bài 2 - " Value="~/bai2.aspx" />
                  <asp:MenuItem Text="Bài 3 - " Value="~/bai3.aspx" />
                  <asp:MenuItem Text="Bài 4 - " Value="~/bai4.aspx" />
                  <asp:MenuItem Text="Bài 5" Value="~/bai5.aspx" />
              
              </Items>
          </asp:Menu>
        </div>
         
        <div>
         
       <asp:Label ID="lbl1" runat="server" Text="Tính tổng 2 số"></asp:Label>
            <div>
                  <asp:Label ID="error" runat="server" Text=""></asp:Label>
            </div>
        <div>
              <asp:Label ID="Label1" runat="server" Text="Nhập số a:"></asp:Label>
            <asp:TextBox ID="So1" runat="server" Width="221px"></asp:TextBox>
        
        </div>
        <p>
              <asp:Label ID="Label2" runat="server" Text="Nhập số b:"></asp:Label>
            <asp:TextBox ID="So2" runat="server" Width="221px"></asp:TextBox>
        </p>
         <p>
             <asp:Button ID="Tinhtong" runat="server" Text="Tính tổng" OnClick="Tinhtong_Click" />
         </p>
         <asp:Label ID="lblTong" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
