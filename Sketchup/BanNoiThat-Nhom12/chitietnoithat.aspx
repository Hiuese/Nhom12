<%@ Page Title="Chi Tiết Nội Thất" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chitietnoithat.aspx.cs" Inherits="chitietnoithat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .product-container {
            max-width: 800px;
            margin: 40px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .product-image {
            flex: 1;
            text-align: center;
        }
        .product-image img {
            max-width: 100%;
            border-radius: 10px;
        }
        .product-details {
            flex: 1;
        }
        .product-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #333;
        }
        .product-price {
            font-size: 20px;
            color: #e91e63;
            font-weight: bold;
            margin-bottom: 15px;
        }
        .product-desc {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }
        .btn-add-to-cart {
            display: inline-block;
            padding: 12px 20px;
            background: #007bff;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }
        .btn-add-to-cart:hover {
            background: #0056b3;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="product-container">
        <div class="product-image">
            <asp:Image ID="imgsanpham" runat="server" CssClass="product-img" Height="160px" Width="185px" />
        </div>
        <div class="product-details">
            <div class="product-title">
                <asp:Label ID="lblTenSanPham" runat="server" Text="Tên sản phẩm"></asp:Label>
            </div>
            <div class="product-price">
                Giá: <asp:Label ID="lblGia" runat="server" Text="0"></asp:Label> VND
            </div>
            <div class="product-desc">
                <asp:Label ID="lblMoTa" runat="server" Text="Mô tả sản phẩm"></asp:Label>
            </div>
            <asp:Button ID="btnThemVaoGio" runat="server" CssClass="btn-add-to-cart" Text="🛒 Thêm vào giỏ hàng" OnClick="btnThemVaoGio_Click" />
            <br />
            <asp:Label ID="lblthongbao" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
</asp:Content>
