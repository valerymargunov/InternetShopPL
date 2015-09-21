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
                                    <span><%= this.GetString("Company") %></span>
                                </h2>
                                <div class="article-content">
                                    <div>
                                        <span class="productPrice">Предлагаем Вам свои услуги посредника в Польше. Мы поможем Вам купить любые товары в польских магазинах. </span>
                                        <br />
                                        <span class="productPrice">     
Польские товары славятся своим качеством и в тоже время доступными ценами! Кроме товаров из Польши, также Вы можете купить товары известных мировых брендов.
                                        </span>
                                        <br />
                                        <span class="productPrice" >Польша – это золотая середина, которая сочетает в себе два важных параметра для каждого покупателя: высокое европейское качество и доступные цены.</span>
                                        <br />
                                        <span class="productPrice">
                                            Мы предлагаем Вам, совершать шоппинг в Польше. не выходя из дома. С нами Вы можете купить в Польше: одежду, обувь, аксессуары, товары для дома и отдыха, авто- и мотозапчасти, комплектующие и многое другое.

Мы работаем со всеми on-line магазинами, с интернет-аукционами Allegro.pl и eBay.pl, польскими производителями.
                                        </span>
                                        <br />
                                        <span class="productPrice">Со списком самых популярных магазинов в Польше Вы можете ознакомится в "Каталоге магазинов".</span>
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
