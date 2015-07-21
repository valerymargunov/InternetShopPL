<%@ Page Language="C#" MasterPageFile="~/global.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="SS.Web.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <div style="border: 2px solid #ddd; margin: 10px; padding: 5px; padding-left:10px; text-align: left; font-size: 16px; background-color: #c8dd5a">Регистрация</div>
        <div align="center" style="border: 2px solid #ddd; margin: 10px; padding: 40px;">
            <div align="left">
                <span>Имя:</span>
                <br />
                <input type="text" style="width: 200px" />
                <br />
                <br />
                <span>Фамилия:</span>
                <br />
                <input type="text" style="width: 200px" />
                <br />
                <br />
                <span>Адрес доставки товара:</span>
                <br />
                <input type="text" style="width: 200px" />
                <br />
                <br />
                <span>Пароль:</span>
                <br />
                <input type="text" style="width: 200px" />
                <br />
                <br />
                <span>Повтор пароля:</span>
                <br />
                <input type="text" style="width: 200px" />
                <br />
                <br />
                <input type="button" value="Зарегистрироваться" />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
