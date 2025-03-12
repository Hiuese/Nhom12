<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="noithattheoloai.aspx.cs" Inherits="noithattheoloai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="228px" RepeatColumns="2">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">tên nội thất</td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/chitietnoithat.aspx?mant="+Eval("mant") %>' Text='<%# Eval("ten") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>mô tả</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("mota") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>đơn giá</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("dongia") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# "~/images/"+ Eval("hinhanh") %>' Width="250px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

