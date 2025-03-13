<%@ Page Title="Trang chủ" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .welcome-text {
            font-size: 36px;
            font-weight: bold;
            color: #ff5733; /* Màu cam nổi bật */
            text-align: center;
            margin-top: 20px;
            text-shadow: 3px 3px 5px rgba(0, 0, 0, 0.2);
            animation: fadeIn 2s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .banner {
            width: 100%;
            height: 300px;
            background: url('images/banner.jpg') no-repeat center center;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 28px;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
        }

        .menu {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }

        .menu a {
            margin: 0 15px;
            padding: 10px 20px;
            text-decoration: none;
            background: #007bff;
            color: white;
            border-radius: 5px;
            transition: 0.3s;
        }

        .menu a:hover {
            background: #0056b3;
        }

        .section {
            text-align: center;
            margin: 30px 0;
        }

        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
        }

        .product-card {
            width: 250px;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }

        .product-image {
            border-radius: 8px;
            max-width: 100%;
            height: auto;
        }

        .product-title {
            font-size: 16px;
            font-weight: bold;
            color: #333;
            text-decoration: none;
            display: block;
            margin-top: 10px;
        }

        .product-price {
            font-size: 16px;
            font-weight: bold;
            color: #e91e63;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Banner -->
    <div class="banner">
        Chào mừng đến với cửa hàng nội thất của chúng tôi!
    </div>

    <!-- Menu Điều Hướng -->
    <div class="menu">
        <a href="timkiem.aspx">🔍 Tìm kiếm sản phẩm</a>
        <a href="noithattheoloai.aspx">🛋 Danh sách nội thất</a>
    </div>

    <!-- Sản phẩm nổi bật -->
    <div class="section">
        <h2>Sản phẩm nổi bật</h2>
        <div class="product-list">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    <div class="product-card">
                        <asp:Image ID="Image1" runat="server" CssClass="product-image" ImageUrl='<%# "~/images/"+ Eval("hinhanh") %>' Height="200px" Width="220px" />
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="product-title"
                            NavigateUrl='<%# "~/chitietnoithat.aspx?mant="+Eval("mant") %>' 
                            Text='<%# Eval("ten") %>'></asp:HyperLink>
                        <p class="product-price">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("dongia") %>'></asp:Label> VND
                        </p>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
