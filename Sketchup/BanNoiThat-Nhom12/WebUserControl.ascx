<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
<style>
    .datalist-container {
        padding: 10px;
        background-color: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 5px;
    }
    .datalist-item {
        margin-bottom: 10px;
    }
    .datalist-item a {
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }
    .datalist-item a:hover {
        text-decoration: underline;
    }
    .label-message {
        display: block;
        margin-top: 20px;
        padding: 10px;
        background-color: #e9ecef;
        border: 1px solid #ced4da;
        border-radius: 5px;
        color: #495057;
    }
</style>
<div class="datalist-container">
    <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
        <ItemTemplate>
            <div class="datalist-item">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/noithattheoloai.aspx?maloaint="+Eval("maloaint") %>' Text='<%# Eval("tenloaint") %>'></asp:HyperLink>
            </div>
        </ItemTemplate>
    </asp:DataList>
</div>
<asp:Label ID="lblthongbao" runat="server" Text="Label" CssClass="label-message"></asp:Label>
