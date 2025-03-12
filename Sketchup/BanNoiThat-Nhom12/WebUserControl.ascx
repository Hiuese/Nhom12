<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
<asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/noithattheoloai.aspx?maloaint="+Eval("maloaint") %>' Text='<%# Eval("tenloaint") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
<asp:Label ID="lblthongbao" runat="server" Text="Label"></asp:Label>

