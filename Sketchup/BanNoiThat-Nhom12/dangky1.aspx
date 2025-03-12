<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangky1.aspx.cs" Inherits="dangky1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        height: 23px;
        width: 448px;
    }
    .auto-style4 {
        width: 448px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Tên đăng nhập</td>
            <td class="auto-style2">
                <asp:TextBox ID="txttendn" runat="server" OnTextChanged="txttendn_TextChanged" Width="281px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttendn" ErrorMessage="Tên đăng nhập không hợp lệ" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">mật khẩu</td>
            <td>
                <asp:TextBox ID="txtmk" runat="server" Width="281px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmk" ErrorMessage="Mật khẩu không được trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">nhập lại mất khẩu</td>
            <td>
                <asp:TextBox ID="txtnlmk" runat="server" Width="281px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtmk" ControlToValidate="txtnlmk" ErrorMessage="mất khẩu không khớp" ForeColor="Red">(*)</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" OnTextChanged="txtemail_TextChanged" Width="281px"></asp:TextBox>
            </td>
        </tr>
    </table>
</div>
<asp:Button ID="btndangky" runat="server" OnClick="btndangky_Click" Text="Đăng ký" />
<asp:Button ID="btnreset" runat="server" Text="Reset" OnClick="btnreset_Click" />
<p>
    <asp:Label ID="lblthongbao" runat="server" Text="Label"></asp:Label>
</p>
</asp:Content>

