<%@ Page Language="C#" MasterPageFile="~/global.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SS.Web.Account.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function validate() {
            var emailAddress = document.getElementById("emailAddress").value;
            var password = document.getElementById("password").value;
            if (password != "" && IsValidEmail(emailAddress)) {
                return true;
            }
            else {
                return false;
            }
        }
        function IsValidEmail(emailAddress) {
            emailTest = "^[_\\.0-9a-z-]+@([0-9a-z][0-9a-z_-]+\\.)+[a-z]{2,4}$";
            var regex = new RegExp(emailTest);
            if (regex.test(emailAddress)) return true; else return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <div style="border: 2px solid #ddd; margin: 10px; padding: 5px; padding-left: 10px; text-align: left; font-size: 16px; background-color: #c8dd5a">Авторизация</div>
        <div align="center" style="border: 2px solid #ddd; margin: 10px; padding: 40px;">
            
            <div align="left">
                <span>Email:</span>
                <br />
                <input type="text" id="emailAddress" style="width: 200px" />
                <br />
                <br />
                <span>Пароль:</span>
                <br />
                <input type="password" id="password" style="width: 200px" />
                <br />
                <asp:Label ID="errorMessage" runat="server" Text="" ForeColor="#006600" Font-Bold="True"></asp:Label>
                <br />
                <asp:Button ID="butLogin" runat="server" Text="Войти" OnClick="butLogin_Click" OnClientClick="return validate();" />
                <input type="button" value="Регистрация" onclick="javascript: location.href = 'registration.aspx'" />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
