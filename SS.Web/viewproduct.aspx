<%@ Page Title="" Language="C#" MasterPageFile="~/global.Master" AutoEventWireup="true" CodeBehind="viewproduct.aspx.cs" Inherits="SS.Web.viewproduct" %>

<%@ Import Namespace="SS.Web" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="//vk.com/js/api/openapi.js?105"></script>
    <%--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    --%>
    <script type="text/javascript">
        VK.init({ apiId: 4167153, onlyWidgets: true });
    </script>
    <script type="text/javascript">
        function selectPhoto(_src) {
            //$('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();
            document.getElementById('ContentPlaceHolder1_ImageSrcProduct').src = _src;
            document.getElementById('zoom1').href = _src;
            //var a = $('.cloud-zoom');
            //var b = $('.cloud-zoom-gallery');
            //CloudZoom($('.cloud-zoom'),$('.cloud-zoom-gallery'));
            //document.getElementsByClassName('mousetrap')[0].style.width = document.getElementById('ContentPlaceHolder1_ImageSrcProduct').width;
            //document.getElementsByClassName('mousetrap')[0].style.height = document.getElementById('ContentPlaceHolder1_ImageSrcProduct').height;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="vmMainPage3">
        <div class="prod_details">
            <div class="vm_main_info clearfix">
                <div id="zoom_main" style="float: left;">
                    <div id="wrap" style="top: 0px; z-index: 499; position: relative;">
                        <a runat="server" href="http://img2.wildberries.ru/big/new/1090000/1098912-1.jpg" class="cloud-zoom" id="zoom1" rel="position:'right', zoomWidth:'350', zoomHeight:'auto', smoothMove:'15', adjustY:'-4' " style="position: relative; display: block;">
                            <img id="ImageSrcProduct" runat="server" src="http://img2.wildberries.ru/big/new/1090000/1098912-1.jpg" style="width: 200px; display: block;" /></a>
                    </div>
                </div>
                <div class="rcolumn" style="float: left">
                    <h1><span itemprop="name" id="TitleProduct" runat="server">Куртка Paul Frank Julius Sporty Navy</span> </h1>
                    <div class="pprice" style="font-size: 18pt; margin-bottom: 10px;">
                        <%= this.GetString("Zena") %>: 
                        <strong><span id="PriceProduct" runat="server"></span></strong>
                        <br/>
                      
                    </div>
                     <div class="pprice" style="color: #555555; margin-bottom: 10px;">
                        <span>Sposób dostawy:</span>
                         <br/>
                        Przesyłka kurierska: <strong><span id="Dostavka" runat="server" ></span></strong>
                        <br />
                        Przesyłka kurierska pobraniowa: <strong><span id="DostavkaPr" runat="server" ></span></strong>
                    </div>
                    <div style="float: left; padding: 0;">
                        <script type="text/javascript">
                            (function () {
                                if (window.pluso)
                                    if (typeof window.pluso.start == "function") return;
                                if (window.ifpluso == undefined) {
                                    window.ifpluso = 1;
                                    var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
                                    s.type = 'text/javascript';
                                    s.charset = 'UTF-8';
                                    s.async = true;
                                    s.src = ('https:' == window.location.protocol ? 'https' : 'http') + '://share.pluso.ru/pluso-like.js';
                                    var h = d[g]('body')[0];
                                    h.appendChild(s);
                                }
                            })();</script>
                        <div class="pluso" data-background="none;" data-options="medium,square,line,horizontal,nocounter,sepcounter=1,theme=14" data-services="vkontakte,odnoklassniki,facebook,twitter,google,moimir"></div>
                    </div>
                    <div id="PhotoBox" runat="server" class="vmCartContainer">
                    </div>
                </div>
                <div>
                    <span id="SpanDescription" runat="server" class="productPrice"></span>
                </div>
            </div>
            <%-- <div style="margin-right: 20px; text-align: right;">
                <asp:Button ID="PayButton" runat="server" Text="Добавить в корзину" Height="30px" CssClass="input" />
            </div>--%>
        </div>
        <ul id="gk_product_tabs">
            <li class="gk_product_tab_active"><span><%= this.GetString("Commen") %></span></li>
            <li><span><%= this.GetString("Opros") %></span></li>
            <%--<li><span>Подобрать размер</span></li>--%>
        </ul>
        <div class="td_bg clearfix">
            <div id="gk_product_tab_1" class="gk_product_tab">
                <div id="vk_comments"></div>
                <script type="text/javascript">
                    VK.Widgets.Comments("vk_comments", { limit: 10, width: "680", attach: "*" });
                </script>
            </div>
            <div id="gk_product_tab_2" class="gk_product_tab gk_unvisible">
                <div id="vk_poll"></div>
                <script type="text/javascript">
                    VK.Widgets.Poll("vk_poll", { width: "680" }, "122427747_43d2576e88f69b2874");
                </script>
            </div>
            <div class="jlc"></div>
        </div>
    </div>
</asp:Content>
