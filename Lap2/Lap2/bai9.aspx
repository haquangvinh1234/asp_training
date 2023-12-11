<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai9.aspx.cs" Inherits="Lap2.bai9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bài Tập 9</title>
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
    .container-content{
        margin-top: 30px;
    }
    .container-content-linkButton{
        border: 1px solid #808080;
        background-color: #e55858;
        font-size: 18px;
        text-align:center;
        color: white;
        font-weight: bold;
        padding: 10px 0 10px 0;
    }
    #lbtUploadTapTin{
        color:white;
        margin-right: 10px;
    }
    #lbtXemTapTinUpload{
        color:white;
    }
    .container-content-upload-file{
        margin-top: 20px;
        text-align:center;
    }
    #FileUpload1{
        width: 400px;
        font-size: 18px;
    }
    .file-upload{
        margin-top: 10px;
        margin-bottom: 10px;
    }
    #btnUpload{
        padding: 3px 5px 3px 5px;
        font-size: 18px;
    }
    #ListBoxFileUpload{
        width: 80%;
        font-size: 18px;
        padding: 3px 10px 3px 10px;
    }
    .Erorr {
        display:none;
        background-color: #4d5bfa;
        font-size: 15px;
    }
    #lblErorr{
        margin-left: 20px;
        font-weight: bold;
        color: white;
    }
    .lblDanhSachTapTin{
        font-size: 18px;
        font-weight: bold;
        text-align: left;
        color: red;
        margin-left: 30px;
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
            <div class="container-content-linkButton">
                <div class="linkButton">
                    <asp:LinkButton ID="lbtUploadTapTin" runat="server" OnClick="lbtUploadTapTin_Click">Upload tập tin</asp:LinkButton>
                    <asp:LinkButton ID="lbtXemTapTinUpload" runat="server" OnClick="lbtXemTapTinUpload_Click">Xem các tập tin đã Upload</asp:LinkButton>
                </div>
            </div>
            <div class="Erorr" runat="server" id="Erorr">
                   <asp:Label ID="lblErorr" runat="server" Text=""> </asp:Label>
            </div>
            <div class="container-content-upload">
                <div class="container-content-upload-file">
                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="ViewUploadFile" runat="server">
                            <div class="file-upload">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                            <div class="btnUpload">
                                 <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                            </div>
                           
                        </asp:View>
                        <asp:View ID="ViewAllFileUpload" runat="server">
                            <div class="lblDanhSachTapTin">
                                 <asp:Label ID="lblDanhSachTapTin" runat="server" Text="Danh Sách Tập Tin Đã Upload:"> </asp:Label>
                            </div>
                            <div class="list-box-upload">
                                <asp:ListBox ID="ListBoxFileUpload" runat="server"></asp:ListBox>
                            </div>
                        </asp:View>
                    </asp:MultiView>
                </div>
            </div>
        </div>
    </form>
    </div>
</body>
</html>
