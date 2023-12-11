<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai4.aspx.cs" Inherits="Lap2.bai4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bài Tập 4</title>
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
    .container-content {
        margin-top: 30px;
        border: 1px solid #808080;
    }
    .lblPhieuYKien {
        background: #ffd800;
        padding-top: 10px;
        padding-bottom: 10px;
        font-weight: 900;
        font-size: 20px;
        text-align: center;
    }
    .container-content-flex{
       
        justify-content: space-between;
    }
    .container-content-left {
        float: left;
        text-align: left;
        font-size: 18px;
        border-right: 1px solid #808080;
        border-bottom: 1px solid #808080;
        height: 200px;
    }
      .container-content-right {
        float: right;
        text-align: left;
        font-size: 18px;
        border-left: 1px solid #808080;
        border-bottom: 1px solid #808080;
        height: 200px;
    }
    .lblBanhaychon{
        background-color: #ff6a00;
        width: 445px;
        text-align: center;
        font-size: 20px;
        padding:10px 0 10px 0;
    }
    .lblTieuchuan{
        background-color: #ff6a00;
        width: 445px;
        text-align: center;
        font-size: 20px;
        padding:10px 0 10px 0;
    }
    .clear-float {
        clear: both;
    }
    .groupradio{
        margin: 10px 40px 0 40px;
    }
    .groupCheckBox{
        margin: 10px 40px 0 40px;
    }
    .container-content-bottom-flex {
        margin-top: 20px;
        border-top: 1px solid #808080;
    }
    .container-content-bottom-flex-left{
        float: left;
        text-align: left;
        font-size: 18px;
        margin: 10px 0 10px 0;
        width: 445px;
        height: 36px;
    }
    .container-content-bottom-flex-right{
        float: right;
        text-align: left;
        font-size: 18px;
        margin: 10px 0 10px 0px;
        width: 445px;
    }
    .groupLabel{
        margin-left: 40px;
        margin-top: 20px;
    }
    #lblBandangchonSP{
        color: red;
    }
    #lblSanPhamBC{
        color: red;
        font-weight: bold;
    }
    #btnKetquabinhchon{
        padding: 5px 6px 5px 6px;
        background-color: #0ef3d0;
        font-size: 15px;
        border-radius: 7px;
        border: 1px solid #004bff;
        cursor: pointer;
        color: #004bff;
        font-weight: bold;
    }
    .btnKetquabinhchon{
        margin-left: 40px;
    }
    .LabelContent {
        color: red;
    }
    #lblErorr{
        font-size: 15px;
        color: red;
        margin: 40px;
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
            <div class="lblPhieuYKien"> 
                <asp:Label ID="lblPhieuYKien" runat="server" Text="PHIẾU LẤY Ý KIẾN NGƯỜI TIÊU DÙNG CỦA HÃNG ABC">
                  </asp:Label></div>
            <div>
                  <asp:Label ID="lblErorr" runat="server" Text=""> </asp:Label>
            </div>
           <div class="container-content-flex">
            <div class="container-content-left">
                <div class="lblBanhaychon">
                       <asp:Label ID="lblBanhaychon" runat="server" Text="Bạn hãy chọn sản phẩm sau:"></asp:Label>
                </div>
                <div class="groupradio">
                    <div>
                        <asp:RadioButton ID="rdbMaygiat" runat="server" Text="Máy giặt" GroupName="rdbChoose" OnCheckedChanged="rdbMaygiat_CheckedChanged" />
                    </div>
                    <div>
                        <asp:RadioButton ID="rdbTivi" runat="server" Text="Ti vi"  GroupName="rdbChoose" OnCheckedChanged="rdbTivi_CheckedChanged"/>
                    </div>
                    <div>
                        <asp:RadioButton ID="rdbTulanh" runat="server" Text="Tủ lạnh" GroupName="rdbChoose" OnCheckedChanged="rdbTulanh_CheckedChanged" />
                    </div>
                    <div>
                        <asp:RadioButton ID="rdbDaudiaDVD" runat="server" Text="Đầu đĩa DVD" GroupName="rdbChoose" OnCheckedChanged="rdbDaudiaDVD_CheckedChanged" />
                    </div>
                    <div>
                        <asp:RadioButton ID="rdbLovisong" runat="server" Text="Lò vi sóng" GroupName="rdbChoose" OnCheckedChanged="rdbLovisong_CheckedChanged" />
                    </div>
                    <div>
                        <asp:RadioButton ID="rdbNoicomdien" runat="server" Text="Nồi cơm điện" GroupName="rdbChoose" OnCheckedChanged="rdbNoicomdien_CheckedChanged" />
                    </div>
                </div>
            </div>
              <div class="container-content-right">
                  <div class="lblTieuchuan">
                       <asp:Label ID="lblTieuchuan" runat="server" Text="Các tiêu chuẩn bình chọn:"></asp:Label>
                </div>
                  <div class="groupCheckBox">
                      <div>
                          <asp:CheckBox ID="ckbCoNhieuChucNangGiat" runat="server" Text="Có nhiều chức năng giặt" />
                    </div>
                    <div>
                      <asp:CheckBox ID="ckbChoPhepNgung" runat="server" Text="Cho phép ngưng giữa chừng" />
                    </div>
                    <div>
                        <asp:CheckBox ID="ckbSayKho" runat="server" Text="Sấy khô đồ sau khi giặt xong" />
                    </div>
                    <div>
                       <asp:CheckBox ID="ckbMauma" runat="server" Text="Mẫu mã gọn và đẹp" />
                    </div>
                  </div>
                  
              </div>
           </div>
            <div class="clear-float">

            </div>
            <div class="container-content-bottom-flex">
                <div class="container-content-bottom-flex-left">
                    <div class="btnKetquabinhchon">
                         <asp:Button ID="btnKetquabinhchon" runat="server" Text="Xem kết quả bình chọn >" OnClick="btnKetquabinhchon_Click" />
                    </div>
                </div>
                <div class="container-content-bottom-flex-right">
             
                      <asp:Label ID="lblBandangchonSP" runat="server" Text="Bạn đang chọn sản phẩm: "></asp:Label>
                      <asp:Label ID="lblSanPhamBC" runat="server" Text=""></asp:Label>
                    <div class="groupLabel">
                    <div class="LabelContent">
                          <asp:Label ID="lblConnhieuChucNang" runat="server" Text=""></asp:Label>
                    </div >
                       <div class="LabelContent">
                          <asp:Label ID="lblChoPhepNgung" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="LabelContent">
                          <asp:Label ID="lblSayKho" runat="server" Text=""></asp:Label>
                    </div>
                     <div class="LabelContent">
                          <asp:Label ID="lblMauma" runat="server" Text=""></asp:Label>
                    </div>
                   </div>
                </div>
            </div>
               <div class="clear-float">

            </div>
        </div>
    </form>
    </div>
</body>
</html>
