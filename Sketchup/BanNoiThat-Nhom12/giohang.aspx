<%@ Page Title="Giỏ hàng" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="giohang.aspx.cs" Inherits="giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .cart-container {
            width: 80%;
            margin: auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background: #007bff;
            color: white;
        }
        .btn-update, .btn-remove, .btn-checkout {
            padding: 8px 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }
        .btn-update {
            background: #28a745;
            color: white;
        }
        .btn-remove {
            background: #dc3545;
            color: white;
        }
        .btn-checkout {
            display: block;
            width: 200px;
            margin: 20px auto;
            background: #ff5733;
            color: white;
            text-align: center;
            text-decoration: none;
            padding: 10px;
            font-size: 16px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="cart-container">
        <h2>Giỏ hàng của bạn</h2>
        
        <asp:GridView ID="GridViewCart" runat="server" AutoGenerateColumns="False" CssClass="cart-table" OnRowCommand="GridViewCart_RowCommand" OnSelectedIndexChanged="GridViewCart_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ten" HeaderText="Tên sản phẩm" />
                <asp:BoundField DataField="dongia" HeaderText="Đơn giá (VND)" />
                <asp:TemplateField HeaderText="Số lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("soluong") %>' Width="50px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="tongtien" HeaderText="Thành tiền (VND)" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnUpdate" runat="server" CommandName="UpdateItem" CommandArgument='<%# Eval("mant") %>' CssClass="btn-update" Text="Cập nhật" />
                        <asp:Button ID="btnRemove" runat="server" CommandName="RemoveItem" CommandArgument='<%# Eval("mant") %>' CssClass="btn-remove" Text="Xóa" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <h3 style="text-align:center;">Tổng tiền: <asp:Label ID="lblTotalPrice" runat="server" Text="0"></asp:Label> VND</h3>

        <asp:HyperLink ID="btnCheckout" runat="server" NavigateUrl="thanhtoan.aspx" CssClass="btn-checkout">Thanh toán</asp:HyperLink>
    </div>
</asp:Content>
