<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td colspan="2">Đăng nhập</td>
    </tr>
    <tr>
        <td>Tên đăng nhập</td>
        <td>
            <asp:TextBox ID="txttendn" runat="server" Width="255px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mật khẩu</td>
        <td>
            <asp:TextBox ID="txtmatkhau" runat="server" Width="255px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btndangnhap" runat="server" OnClick="Button1_Click" Text="Đăng nhập" />
            <asp:Label ID="lblthongbao" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

