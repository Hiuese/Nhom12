<%@ Page Title="Tìm kiếm sản phẩm" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="timkiem.aspx.cs" Inherits="timkiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .search-container {
            width: 60%;
            margin: 20px auto;
            padding: 20px;
            background: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .search-input {
            width: 80%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .search-button {
            background: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        .search-button:hover {
            background: #0056b3;
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

        .product-description {
            font-size: 14px;
            color: #666;
            margin: 5px 0;
        }

        .product-price {
            font-size: 16px;
            font-weight: bold;
            color: #e91e63;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="search-container">
        <h2>Tìm kiếm sản phẩm</h2>
        <asp:TextBox ID="txttensp" runat="server" CssClass="search-input" placeholder="Nhập tên sản phẩm..."></asp:TextBox><br />
        <asp:TextBox ID="txtgia" runat="server" CssClass="search-input" placeholder="Nhập giá sản phẩm..."></asp:TextBox><br />
        <asp:Button ID="btntkiem" runat="server" CssClass="search-button" OnClick="btntkiem_Click1" Text="Tìm kiếm" />
    </div>

    <h3 style="text-align: center; margin-top: 20px;">Kết quả tìm kiếm</h3>

    <div class="product-list">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <div class="product-card">
                    <asp:Image ID="Image1" runat="server" CssClass="product-image" ImageUrl='<%# "~/images/"+ Eval("hinhanh") %>' Height="200px" Width="220px" />
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="product-title"
                        NavigateUrl='<%# "~/chitietnoithat.aspx?mant="+Eval("mant") %>' 
                        Text='<%# Eval("ten") %>'></asp:HyperLink>
                    <p class="product-description">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("mota") %>'></asp:Label>
                    </p>
                    <p class="product-price">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("dongia") %>'></asp:Label> VND
                    </p>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
