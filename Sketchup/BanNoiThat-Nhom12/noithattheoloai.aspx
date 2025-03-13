<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="noithattheoloai.aspx.cs" Inherits="noithattheoloai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* Wrapper chung */
        .product-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            padding: 20px;
        }

        /* Card sản phẩm */
        .product-card {
            width: 250px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 15px;
            background: white;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }

        .product-card:hover {
            transform: scale(1.05);
        }

        /* Ảnh sản phẩm */
        .product-image {
            width: 100%;
            height: 160px;
            object-fit: cover;
            border-radius: 8px;
        }

        /* Tiêu đề sản phẩm */
        .product-title {
            font-size: 18px;
            font-weight: bold;
            margin-top: 10px;
            display: block;
            text-decoration: none;
            color: #333;
        }

        .product-title:hover {
            color: #e74c3c;
        }

        /* Mô tả sản phẩm */
        .product-description {
            font-size: 14px;
            color: #777;
            margin-top: 5px;
        }

        /* Giá sản phẩm */
        .product-price {
            color: #e74c3c;
            font-size: 16px;
            font-weight: bold;
            margin-top: 8px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="product-container">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
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
