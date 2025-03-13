<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            max-width: 400px;
            width: 100%;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            animation: fadeIn 1s ease-in-out;
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

        .form-header h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 15px;
        }

        .form-group {
            text-align: left;
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
            color: #444;
            display: block;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            transition: 0.3s;
        }

        .form-group input:focus {
            border-color: #667eea;
            outline: none;
            box-shadow: 0 0 5px rgba(102, 126, 234, 0.5);
        }

        .btn-container {
            margin-top: 20px;
        }

        .btn-login {
            width: 100%;
            padding: 10px;
            background: #667eea;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-login:hover {
            background: #5a67d8;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }

        .register-link {
            margin-top: 15px;
            font-size: 14px;
        }

        .register-link a {
            color: #667eea;
            text-decoration: none;
        }

        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
        <div class="form-header">
            <h2>Đăng Nhập</h2>
        </div>

        <div class="form-group">
            <label for="txttendn">Tên đăng nhập</label>
            <asp:TextBox ID="txttendn" runat="server" CssClass="input-text"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtmatkhau">Mật khẩu&nbsp; </label>
            &nbsp;<asp:TextBox ID="txtmatkhau" runat="server" CssClass="input-text" TextMode="Password"></asp:TextBox>
        </div>

        <div class="btn-container">
            <asp:Button ID="btndangnhap" runat="server" CssClass="btn-login" OnClick="btndangnhap_Click" Text="Đăng nhập" />
        </div>

        <p class="error-message">
            <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
        </p>

        <p class="register-link">
            Chưa có tài khoản? <a href="dangky1.aspx">Đăng ký ngay</a>
        </p>
    </div>
</asp:Content>


