<%@ Page Title="" Language="C#" MasterPageFile="~/global.Master" AutoEventWireup="true" CodeBehind="delivery.aspx.cs" Inherits="SS.Web.delivery" %>

<%@ Import Namespace="SS.Web" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Доставка</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="inner ctop cright cleft clearfix">
        <div id="gk-contentwrap">
            <div id="gk-content" class="column" style="width: 100%">
                <div id="gk-current-content" class="column" style="width: 100%">
                    <div class="inner cleft ctop cbottom cright">
                        <div id="component_wrap" class="clear">
                            <div id="component" class="clear">
                                <h2 class="contentheading clearfix">
                                    <span><%= this.GetString("Dostavka") %></span>
                                </h2>
                                <div class="article-content"> 
                                    <div>
                                        Sposób dostawy:
                                        <ul>
                                            <li>Przesyłka kurierska</li>
                                            <li>Przesyłka kurierska pobraniowa</li>
                                            <li>Paczka pocztowa priorytetowa</li>
                                            <li>Pocztex Kurier48</li>
                                            <li>Odbiór osobisty</li>
                                        </ul>
                                    </div>
                                    <div>
                                        <p>
                                        <span style="font-size: 12px;">Пункт вывоза: ul.Kawaleryjska 19/23 lok 121D Bialystok (Белосток)
доставка в Беларусь по договоренности.
                                        </span>
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
