<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangky1.aspx.cs" Inherits="dangky1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .form-container {
            max-width: 450px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-header h2 {
            margin: 0;
            font-size: 24px;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .error-message {
            color: red;
            font-size: 12px;
        }
        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .btn-container input {
            padding: 10px;
            width: 48%;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s ease;
        }
        .btn-register {
            background: #007bff;
            color: white;
        }
        .btn-register:hover {
            background: #0056b3;
        }
        .btn-reset {
            background: #dc3545;
            color: white;
        }
        .btn-reset:hover {
            background: #c82333;
        }
        @media (max-width: 500px) {
            .btn-container {
                flex-direction: column;
            }
            .btn-container input {
                width: 100%;
                margin-bottom: 10px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
        <div class="form-header">
            <h2>Đăng Ký Tài Khoản</h2>
        </div>
        <div class="form-group">
            <label for="txttendn">Tên đăng nhập</label>
            <asp:TextBox ID="txttendn" runat="server" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txttendn" ErrorMessage="Tên đăng nhập không hợp lệ" 
                ForeColor="Red" CssClass="error-message">(*)</asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="txtmk">Mật khẩu</label>
            <asp:TextBox ID="txtmk" runat="server" TextMode="Password" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtmk" ErrorMessage="Mật khẩu không được trống" 
                ForeColor="Red" CssClass="error-message">(*)</asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="txtnlmk">Nhập lại mật khẩu</label>
            <asp:TextBox ID="txtnlmk" runat="server" TextMode="Password" Width="100%"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtmk" ControlToValidate="txtnlmk" 
                ErrorMessage="Mật khẩu không khớp" ForeColor="Red" 
                CssClass="error-message">(*)</asp:CompareValidator>
        </div>

        <div class="form-group">
            <label for="txtemail">Email</label>
            <asp:TextBox ID="txtemail" runat="server" Width="100%"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegexEmailValidator" runat="server"
                ControlToValidate="txtemail"
                ErrorMessage="Email không hợp lệ"
                ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
                ForeColor="Red" CssClass="error-message">(*)</asp:RegularExpressionValidator>
        </div>

        <div class="btn-container">
            <asp:Button ID="btndangky" runat="server" CssClass="btn-register" OnClick="btndangky_Click" Text="Đăng ký" />
            <asp:Button ID="btnreset" runat="server" CssClass="btn-reset" OnClick="btnreset_Click" Text="Reset" />
        </div>

        <p style="text-align: center; color: green;">
            <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
        </p>
    </div>
</asp:Content>
