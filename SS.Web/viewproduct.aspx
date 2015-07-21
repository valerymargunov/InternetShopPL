<%@ Page Title="" Language="C#" MasterPageFile="~/global.Master" AutoEventWireup="true" CodeBehind="viewproduct.aspx.cs" Inherits="SS.Web.viewproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="//vk.com/js/api/openapi.js?105"></script>
    <script type="text/javascript">
        VK.init({ apiId: 4167153, onlyWidgets: true });
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
                        <div class="mousetrap" style="background-image: url(http://www.streetstyleonline.ru/); z-index: 999; position: absolute; width: 204px; height: 271px; left: 0px; top: 0px; cursor: crosshair;"></div>
                    </div>
                </div>
                <div class="rcolumn" style="float: left">
                    <h1><span itemprop="name" id="TitleProduct" runat="server">Куртка Paul Frank Julius Sporty Navy</span> </h1>
                    <div class="pprice" style="font-size: 18pt; margin-bottom: 10px;">
                        Цена: 
                        <strong><span id="PriceProduct" runat="server" class="productPrice"></span></strong>
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
                    <div class="vmCartContainer">
                        <div id="DivBrand" runat="server" style="float: left; margin-top: 10px;">
                            <%--<p style="font: italic  180% Verdana, Arial, Helvetica, sans-serif; float: left;">Бренд</p>--%>
<%--                            <div class="vmAttribChildDetail" style="float: left;">
                                <label for="Размер_field">Бренд</label>:
                            </div>--%>
                            <div style="float: left; padding: 0 8px;">
                                <img id="ImageBrand" runat="server" src="" style="width: 100px;" />
                            </div>
                        </div>
                        <div class="vmCartDetails">
                            <div class="vmCartChild vmRowTwo">
                                <div class="vmCartAttributes">
                                    <div class="vmAttribChildDetail" style="float: left;">
                                        <label for="Размер_field">Размер</label>:
                                    </div>
                                    <div class="vmAttribChildDetail" style="float: left;">
                                        <%--<select class="inputboxattrib" id="Размер_field" name="Размер1005">
                                            <option value="_не_выбрано">не выбрано</option>
                                            <option value="_L">L</option>
                                        </select>--%>
                                        <asp:DropDownList ID="ListOfSize" runat="server" CssClass="inputboxattrib">
                                            <asp:ListItem Selected="True" Text="Не выбрано"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="vmAttribChildDetail" style="float: left;">
                                        <label for="Размер_field">Количество</label>:
                                    </div>
                                    <div class="vmAttribChildDetail" style="float: left;">
                                        <asp:TextBox ID="CountProduct" runat="server" Width="40px" Text="1"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--<div float: right;">
                            <div id="quan">
                                <label for="quantity1005" class="quantity_box">Количество:&nbsp;</label>
                                <input type="text" class="inputboxquantity" size="3" id="quantity1005" name="quantity[]" value="1">
                            </div>
                            <input type="submit" class="addtocart_button" value="Купить" title="Купить">
                        </div>--%>
                    </div>

                </div>
                <div style="margin-right: 20px; text-align: right;">
                    <asp:Button ID="PayButton" runat="server" Text="Добавить в корзину" Height="30px" CssClass="input" />
                </div>
            </div>
            <ul id="gk_product_tabs">
                <li class="gk_product_tab_active"><span>Комментарии</span></li>
                <li><span>Опрос</span></li>
                <li><span>Подобрать размер</span></li>
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
                <div id="gk_product_tab_4" class="gk_product_tab gk_unvisible">
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        Основной сложностью при покупке вещей через Интернет является подбор размера. Мы предлагаем Вам таблицы размеров, однако практика показывает, что и они не всегда решают эту проблему. Во избежание несовпадений размеров при покупке, пожалуйста, воспользуйтесь услугами нашего&nbsp;консультанта. Сопоставив Ваши параметры и пожелания относительно размера вещи, он сможет подсказать Вам нужный.&nbsp;
                    </p>
                    <p class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: center;">
                        <img alt="" src="images/stories/1.png"><img alt="" src="images/stories/2.png"><img alt="" src="images/stories/3.png"><img alt="" src="images/stories/4.png"><img alt="" src="images/stories/5.png">
                        <o:p></o:p>
                    </p>
                    <div align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                        <hr align="center" noshade="noshade" size="1" style="color: #A0A0A0" width="100%">
                    </div>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        <b>Бейсболка</b><br>
                        Все, что Вам нужно сделать, — это измерить обхват головы. Приложите сантиметр на&nbsp;2-3&nbsp;см выше бровей и измерьте окружность Вашей головы в самом широком месте.&nbsp;Определите Ваш размер с помощью приведенной таблицы. Всегда округляйте размер до большего.
                    </p>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        <o:p></o:p>
                    </p>
                    <p>
                        &nbsp;
                    </p>
                    <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse; border: none;">
                        <tbody>
                            <tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes; height: 25.5pt">
                                <td style="width: 88.45pt; border: solid #666666 1.0pt; background: #EDEDED; padding: .75pt .75pt .75pt .75pt; height: 25.5pt"
                                    width="118">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        Обхват головы<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 36.55pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 25.5pt"
                                    width="49">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        54см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 38.8pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 25.5pt"
                                    width="52">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        54.5см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 40.2pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 25.5pt"
                                    width="54">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        55-56см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 44.85pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 25.5pt"
                                    width="60">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        56-58см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.6pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 25.5pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        58-59см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.5pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 25.5pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        59-60см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.55pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 25.5pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        60-61см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.5pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 25.5pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        62см<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2" style="width: 88.45pt; border: solid #666666 1.0pt; border-top: none; mso-border-top-alt: solid #666666 1.0pt; background: #EDEDED; padding: .75pt .75pt .75pt .75pt"
                                    width="118">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        Размер<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 36.55pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="49">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        S<o:p></o:p>
                                    </p>
                                </td>
                                <td colspan="2" style="width: 79.0pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="105">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        M<o:p></o:p>
                                    </p>
                                </td>
                                <td colspan="2" style="width: 94.45pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="126">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        L<o:p></o:p>
                                    </p>
                                </td>
                                <td colspan="2" style="width: 3.0cm; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="113">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XL<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.5pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XXL<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 36.55pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="49">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        6 7/8<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 38.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="52">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        7<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 40.2pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="54">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        7 1/8<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 44.85pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="60">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        7 1/4<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        7 3/8<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.5pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        7 1/2<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.55pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        7 5/8<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.5pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        7 3/4<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p>
                        <b>&nbsp;Размерная таблица колец</b>
                    </p>
                    <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse; border: none; background-position: initial initial; background-repeat: initial initial;">
                        <tbody>
                            <tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes; height: 12.75pt">
                                <td style="width: 85.8pt; border: solid #666666 1.0pt; background: #EDEDED; padding: .75pt .75pt .75pt .75pt; height: 12.75pt"
                                    width="114">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        Окружность (мм)<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.65pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 12.75pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        50.3-51.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.6pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 12.75pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        51.5-52.8<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.5pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 12.75pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        52.8-54<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.55pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 12.75pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        54-56.6<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.6pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 12.75pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        57.8-59.1<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.6pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 12.75pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        59.1-60.3<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.8pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 12.75pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        60.3-61.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 50.15pt; border: solid #666666 1.0pt; border-left: none; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 12.75pt"
                                    width="67">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        61.5-62.8<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr style="mso-yfti-irow: 1; height: 21.0pt">
                                <td style="width: 85.8pt; border: solid #666666 1.0pt; border-top: none; mso-border-top-alt: solid #666666 1.0pt; background: #EDEDED; padding: .75pt .75pt .75pt .75pt; height: 21.0pt"
                                    width="114">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        Диаметр (мм)<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.65pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 21.0pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        16-16.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 21.0pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        16.05.17<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.5pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 21.0pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        17-17.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.55pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 21.0pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        17.05.18<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 21.0pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        18.05.19<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 21.0pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        19-19.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 21.0pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        19.05.20<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 50.15pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 21.0pt"
                                    width="67">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        20-20.5<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr style="mso-yfti-irow: 2; mso-yfti-lastrow: yes; height: 22.5pt">
                                <td style="width: 85.8pt; border: solid #666666 1.0pt; border-top: none; mso-border-top-alt: solid #666666 1.0pt; background: #EDEDED; padding: .75pt .75pt .75pt .75pt; height: 22.5pt"
                                    width="114">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        Размер<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.65pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 22.5pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        11<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 22.5pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        12<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.5pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 22.5pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        13.05.13<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 42.55pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 22.5pt"
                                    width="57">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        14.05.13<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 22.5pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        19<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 22.5pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        20<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 49.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 22.5pt"
                                    width="66">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        21<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 50.15pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 22.5pt"
                                    width="67">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        22<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        &nbsp;<b>Размерная таблица перчаток</b>
                    </p>
                    <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse; border: none; background-position: initial initial; background-repeat: initial initial;" width="100%">
                        <tbody>
                            <tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes; height: 15.0pt">
                                <td colspan="5" style="width: 469.25pt; border: solid #666666 1.0pt; background: #EDEDED; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="626">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        Женские перчатки<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr style="mso-yfti-irow: 1; height: 15.0pt">
                                <td style="width: 294.0pt; border: solid #666666 1.0pt; border-top: none; mso-border-top-alt: solid #666666 1.0pt; background: #EDEDED; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="392">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Обхват руки (см.)<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.85pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        18<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        19<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        20<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        22<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr style="mso-yfti-irow: 2; height: 15.0pt">
                                <td style="width: 294.0pt; border: solid #666666 1.0pt; border-top: none; mso-border-top-alt: solid #666666 1.0pt; background: #EDEDED; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="392">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Размер<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.85pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XS<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        S<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        M<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        L<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr style="mso-yfti-irow: 3; height: 15.0pt">
                                <td colspan="5" style="width: 469.25pt; border: solid #666666 1.0pt; border-top: none; mso-border-top-alt: solid #666666 1.0pt; background: #EDEDED; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="626">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        Мужские перчатки<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr style="mso-yfti-irow: 4; height: 15.0pt">
                                <td style="width: 294.0pt; border: solid #666666 1.0pt; border-top: none; mso-border-top-alt: solid #666666 1.0pt; background: #EDEDED; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="392">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Обхват руки (см.)<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.85pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        22<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        23<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        24<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        26<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr style="mso-yfti-irow: 5; mso-yfti-lastrow: yes; height: 15.0pt">
                                <td style="width: 294.0pt; border: solid #666666 1.0pt; border-top: none; mso-border-top-alt: solid #666666 1.0pt; background: #EDEDED; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="392">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Размер<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.85pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XS<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        S<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        M<o:p></o:p>
                                    </p>
                                </td>
                                <td style="width: 43.8pt; border-top: none; border-left: none; border-bottom: solid #666666 1.0pt; border-right: solid #666666 1.0pt; mso-border-top-alt: solid #666666 1.0pt; mso-border-left-alt: solid #666666 1.0pt; background: transparent; padding: .75pt .75pt .75pt .75pt; height: 15.0pt"
                                    width="58">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        L<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="MsoNormal" style="margin-bottom: 0.0001pt;">
                        <strong>Как измерить обхват мужской груди:</strong><br>
                        - Измеряется по наиболее выступающей точке груди на выдохе.<br>
                        - Приложите сантиметр прямо под рукой и измерьте обхват Вашей груди<!--[if gte vml 1]><v:rect
 id="Прямоугольник_x0020_7" o:spid="_x0000_s1028" alt="Описание: http://streetstyle-online.ru/index.php?page=shop.product_details&amp;category_id=217&amp;flypage=flypage.tpl&amp;product_id=3074&amp;option=com_virtuemart&amp;Itemid=59"
 style='position:absolute;margin-left:-27.2pt;margin-top:0;width:24pt;height:24pt;
 z-index:251657728;visibility:visible;mso-wrap-style:square;
 mso-width-percent:0;mso-height-percent:0;mso-wrap-distance-left:0;
 mso-wrap-distance-top:0;mso-wrap-distance-right:0;mso-wrap-distance-bottom:0;
 mso-position-horizontal:right;mso-position-horizontal-relative:text;
 mso-position-vertical:absolute;mso-position-vertical-relative:line;
 mso-width-percent:0;mso-height-percent:0;mso-width-relative:page;
 mso-height-relative:page;v-text-anchor:top' o:gfxdata="UEsDBBQABgAIAAAAIQC75UiUBQEAAB4CAAATAAAAW0NvbnRlbnRfVHlwZXNdLnhtbKSRvU7DMBSF
dyTewfKKEqcMCKEmHfgZgaE8wMW+SSwc27JvS/v23KTJgkoXFsu+P+c7Ol5vDoMTe0zZBl/LVVlJ
gV4HY31Xy4/tS3EvRSbwBlzwWMsjZrlprq/W22PELHjb51r2RPFBqax7HCCXIaLnThvSAMTP1KkI
+gs6VLdVdad08ISeCho1ZLN+whZ2jsTzgcsnJwldluLxNDiyagkxOquB2Knae/OLUsyEkjenmdzb
mG/YhlRnCWPnb8C898bRJGtQvEOiVxjYhtLOxs8AySiT4JuDystlVV4WPeM6tK3VaILeDZxIOSsu
ti/jidNGNZ3/J08yC1dNv9v8AAAA//8DAFBLAwQUAAYACAAAACEArTA/8cEAAAAyAQAACwAAAF9y
ZWxzLy5yZWxzhI/NCsIwEITvgu8Q9m7TehCRpr2I4FX0AdZk2wbbJGTj39ubi6AgeJtl2G9m6vYx
jeJGka13CqqiBEFOe2Ndr+B03C3WIDihMzh6RwqexNA281l9oBFTfuLBBhaZ4ljBkFLYSMl6oAm5
8IFcdjofJ0z5jL0MqC/Yk1yW5UrGTwY0X0yxNwri3lQgjs+Qk/+zfddZTVuvrxO59CNCmoj3vCwj
MfaUFOjRhrPHaN4Wv0VV5OYgm1p+LW1eAAAA//8DAFBLAwQUAAYACAAAACEAn/4FuoUDAABeBwAA
HwAAAGNsaXBib2FyZC9kcmF3aW5ncy9kcmF3aW5nMS54bWysVc1u4zYQvhfoOxA89CZLciTbclcJ
Ev8sFsi2QdI9B4xES0QpkiXpvy0KLNBrgT5CH6KXoj/7DMobdUjJaycLtEC3umg4HA6/mflm+OJi
13C0odowKXIcDyKMqChkyUSV4zffLIMJRsYSURIuBc3xnhp8cf75Zy/ItNJE1axA4EGYKclxba2a
hqEpatoQM5CKCthbSd0QC0tdhaUmW/Dc8HAYRaOwIUzg86OrObEErTX7D664LL6l5YyIDTHgkhfT
U02PkRef7plMxealVnfqRjvkxVebG41YmWPInCANpAiH/UZvBsvw2anq6GC30o2zl6sV2uV4FKVp
lqUY7XM8HqbZ2TDq/NGdRQUYnEXJJIK7CjDo5e6++ut/8VDUi3/0ASA7MCCcADTKwRObjyMeHyJu
f3l89/hz+2f7/vHH9tf2ffvH40/tX+1v7e8IbEpqCn1MvNWUWmP3nAZScCboQK9DJkq6G6haXShS
0dzUUg2UluW6sPcltYRx8wVp1JcFsbSSen8PGR/GY69b8b0/1P8HVnGvP5wH07NonHidVNYRvZDN
/YZpuwaiaut3XlnagGWafSjfIWCjroFcBgk5q4mo6KVRtLDQLBD+QaW13NaUlMapu4IDMzoPvvhH
Z0CXh+1rWQJTyNpKz///hwQfCkimShv7ksoGOSHHGgD7i8jm2tgO38HEV1cuGeeeR1w8UYDPTgP8
g6NuzzHRN+n3WZQtJotJEiTD0SJIovk8uFzOkmC0jMfp/Gw+m83jH9y9cTKtWVlS4a45DIw4OZKi
HxkNK7Q0cmUHUKEQWoIV9DA0YGTE0XFkGMlZ6dw5SEZXDzOu0YbwHC/911fhxCx8CsN3JcTyLKR4
mERXwyxYjibjIFkmaZCNo0kQxdlVNoqSLJkvn4Z0DRT+9JDQNsdZOkx9lU5AP4st8t/HsZFpwyzV
iLMmxzAf4Ot47Ei5EKUvrWujTj5JhYN/TAWU+1BoEE0/5Ozuzg8Bu7uS5d4l7AH+QGQtgVwwjOAB
AaGW+i1GW3gWcmy+WxNNMeKvBPREFicJmFm/SNIxDDWkT3ceTneIKMBVji1GnTizsIIja6VZVcNN
sU+TkJfQQCvWE7rD5NBxY+/cgPFRe+RUlDdEk1vAzKGHoSPWwe2bPo9gAcEeg1sbeqduoWW6Rumi
9+kAw2cviz/av4Tu+Tpdn/8NAAD//wMAUEsDBBQABgAIAAAAIQDUkmfO+AYAAGocAAAaAAAAY2xp
cGJvYXJkL3RoZW1lL3RoZW1lMS54bWzsWU9v3EQUvyPxHUa+t9n/zUbdVNnNbgNtSpTdFvU4a8/a
Q8YeazybdG9VekQCIQriQCU4cUBApFbi0n6H9DMEiqBI/Qq8mbG9nqxD0jaCCppD1n7+zfv/3ryx
L1+5EzK0S0RCedRxqhcrDiKRyz0a+R3n5mhwYdlBicSRhxmPSMeZkcS5svruO5fxistoPOZYeKOA
hAQBoyhZwR0nkDJeWVpKXCDj5CKPSQTPJlyEWMKt8Jc8gfdAQMiWapVKaynENHJWgaNUjPoM/kUy
UQSXiaFiQ1CEQ5B++O3T/cODwyeHjw4Pnt6F6yfw+6le6+1U1YpklvSYQLuYdRyQ4fG9EbkjHcRw
IuFBx6noP2dp9fISXkkXMXnC2sK6gf5L16ULvJ2alin8cS60Omi0L63n/DWAyUVcv9/v9as5Pw3A
rguWG12KPBuD5Wo341kAmctF3r1Ks9Kw8QX+9QWd291ut9lOdTFMNchcNhbwy5VWY61m4TXI4JsL
+EZ3rddrWXgNMvjWAn5wqd1q2HgNChiNdhbQKqCDQco9h0w42yiFLwN8uZLC5yjIhjzblIgJj+RZ
cy/EH3ExgAVqIcOSRkjOYjLBLuRsD4djQbESiFcILjwxJDdZICnZKHEFjWXHeT/GkVOAvHj8w4vH
D9HR/qOj/Z+P7t072v/JMLJWbeDIL656/t1nfz64i/54+M3z+1+U45Mi/tcfP/7lyeflQCinuXnP
vjz47dHBs68++f37+yXwNYHHRfiIhiRBN8ge2uYhGKa9YmtOxuLlVowCTIsr1iI/wRFWUkr492Vg
oW/MMEujY+nRJbYHbwloJ2XAq9OPLIWHgZhKWiL5WhBawE3OWZeLUi9cU7IKbh5NI79cuJgWcdsY
75bJ7uHIim9/GkNfzdLSMrwXEEvNLYYjiX0SEYnUM75DSIl1tym1/LpJXcETPpHoNkVdTEtdMqJj
K5vmizZoCHGZldkM8bZ8s3kLdTkrs3qd7NpIqArMSpQfEWa58SqeShyWsRzhkBUdfh3LoEzJ4Uy4
RVw/kRBpnzCO+h5JkrI1HwiwtxD0axg6WGnYN9kstJFC0p0yntcx50XkOt/pBTiMy7BDGgVF7HvJ
DqQoRltclsE3uV0h6h7igKMTw32LEivcp3eDm9S3VJoniHoyFSWxvEq4lb/DGZtgolsNNHmrV4c0
+rvGzSh0biPh/Bo3tMpnXz8o0ftNbdlrsHuV1czGsUZ9Eu54e+5x4dE3vzuv42m0RaAgFreot835
bXN2/vPN+aR6Pv+WPO/C0KDVLGIGbz2Gh2eewieUsaGcMXI90YN4AnuRNwCi4qNPoyQ/pcUBXKrK
BoEWzhdYr0GCyw+pDIYBjmGIrzqKiZ+krP0ExTyBw6Qml/JWeDgISHMUbapDiukkCZab3DPkuiJn
Z5GcjdbK1wfgTFBdMTirsPqllCnY9irCqkqpM0uratV0k7Sk5SYrF+tDPLg8Nw2IuTdhyEEwGoGX
W/A+QImGww9mxFN+NzHKwqKjcJ4hSgLskTRGyu7FGFV1kLJcWTBE2WGSQR0sT/FaQVpbsX0NaWcJ
UlFc4wRxWfReJ0pZBs+jBNyOlyOLisXJIrTXcdrNWtNBLo47zgTOzXAZxhD1RM2VmPnwRsqVwqT9
qcWsq3wezXZmmF0EVXg1Yvy+YLDVB2KRyHWcBCY19KM0BVikJBn9a01w63kZUNKNzqZFfRmS4V/T
Avxoh5ZMJsSVxWAXKMp35jZtpXwqiRgG3h4as6nYxhB+lapgj0cTeP2hO4K6gXd3ytv6kd2c06Ir
vjHTOEPHLA5w2m5ViWaVbOC6IeU66LuCemBbqe7auJc3RZf8OZlSTOP/mSlqP4G3EXVPRcCFF8MC
I1UpHYcLGXDoQnFA3YGAQUL3DsgWeP8LjyGp4C22/hVkV/2amjM8dFnDoVJuUx8JCvuRDAQhW9CW
dPadwqya7l2GJUsZ6YwqqJvERu0x2SVspHpgS+3tDgog1XU3SduAxh3PP/s+raCxr4acYr1ZnSzf
e00N/NOTjylmMMruw3qgyfyfq5iPB/Nd1azXy7O9t2iIejAfsxpZVYCwwlbQTsv+FVV4ya3WdKwF
i2vNTDmI4qLFQMwHohjeKSH1D/Y/KlxGdBqrDXXEt6G3Ivi4oZhB2kBWXzCDB1IN0hDHMDgZokkm
xcq4Nh2dlNeyzfqcJ91c7jFnK83OEu+XdHY+nNnirFo8T2enHrZ8bWgnuhoie7xEgTTJDjY6MGVf
vjZxjMZ+tePA1yYI9B24gu9VDtBqilZTNLiCj1AwLJkvRx0nvcgo8NxQckw9o9QzTCOjNDJKM6PA
cJZ+o8koLehU6rMKfOZTPw7KvqDABJd+ccmaqvV5cPUvAAAA//8DAFBLAwQUAAYACAAAACEAnGZG
QbsAAAAkAQAAKgAAAGNsaXBib2FyZC9kcmF3aW5ncy9fcmVscy9kcmF3aW5nMS54bWwucmVsc4SP
zQrCMBCE74LvEPZu0noQkSa9iNCr1AcIyTYtNj8kUezbG+hFQfCyMLPsN7NN+7IzeWJMk3ccaloB
Qae8npzhcOsvuyOQlKXTcvYOOSyYoBXbTXPFWeZylMYpJFIoLnEYcw4nxpIa0cpEfUBXNoOPVuYi
o2FBqrs0yPZVdWDxkwHii0k6zSF2ugbSL6Ek/2f7YZgUnr16WHT5RwTLpRcWoIwGMwdKV2edNS1d
gYmGff0m3gAAAP//AwBQSwECLQAUAAYACAAAACEAu+VIlAUBAAAeAgAAEwAAAAAAAAAAAAAAAAAA
AAAAW0NvbnRlbnRfVHlwZXNdLnhtbFBLAQItABQABgAIAAAAIQCtMD/xwQAAADIBAAALAAAAAAAA
AAAAAAAAADYBAABfcmVscy8ucmVsc1BLAQItABQABgAIAAAAIQCf/gW6hQMAAF4HAAAfAAAAAAAA
AAAAAAAAACACAABjbGlwYm9hcmQvZHJhd2luZ3MvZHJhd2luZzEueG1sUEsBAi0AFAAGAAgAAAAh
ANSSZ874BgAAahwAABoAAAAAAAAAAAAAAAAA4gUAAGNsaXBib2FyZC90aGVtZS90aGVtZTEueG1s
UEsBAi0AFAAGAAgAAAAhAJxmRkG7AAAAJAEAACoAAAAAAAAAAAAAAAAAEg0AAGNsaXBib2FyZC9k
cmF3aW5ncy9fcmVscy9kcmF3aW5nMS54bWwucmVsc1BLBQYAAAAABQAFAGcBAAAVDgAAAAA=
" o:allowoverlap="f" filled="f" stroked="f">
 <o:lock v:ext="edit" aspectratio="t"/>
 <w:wrap type="square" anchory="line"/>
</v:rect><![endif]--><o:p></o:p>
                    </p>
                    <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="width: 100.0%; background: black; border-collapse: collapse; border: none; mso-border-alt: solid #BFBFBF 1.0pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 0cm 0cm 0cm"
                        width="100%">
                        <tbody>
                            <tr>
                                <td rowspan="2" style="border: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Размер<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        S<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        M<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        L<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XL<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XXL<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XXXL<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XXXXL<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XXXXXL<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        48<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        50<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        52<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        54<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        56<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        58<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        60<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        62<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Обхват груди (см.)<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        80-85<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        85-90<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        90-95<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        95-100<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        100-105<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        105-110<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        110-115<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        115-120<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Рост<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        165-170<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        170-175<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        175-180<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        180-185<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        185-190<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        190-195<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        195-200<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        200-205<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        &nbsp;<b>Как измерить обхват женской груди:</b>
                    </p>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        - Измеряется по наиболее выступающей точке груди на выдохе.<br>
                        - Приложите сантиметр прямо под рукой и измерьте обхват Вашей груди.<br>
                        - Сантиметр должен прилегать плотно, но не стягивать грудь.<o:p></o:p>
                    </p>
                    <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="width: 100.0%; background: black; border-collapse: collapse; border: none; mso-border-alt: solid #BFBFBF 1.0pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 0cm 0cm 0cm"
                        width="100%">
                        <tbody>
                            <tr>
                                <td rowspan="2" style="border: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Размер<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XXS<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XS<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        S<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        M<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        L<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XL<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XXL<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        40<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        42<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        42-44<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        44-46<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        46-48<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        50<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        52<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Обхват груди<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        72-75<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        75-82<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        82-90<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        90-95<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        95-98<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        98-100<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        100-102<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Рост<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        148-150<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        150-155<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        163<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        168<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        173<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        178<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        183<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        <b>Как измерить и подобрать размер мужских джинс:</b>
                    </p>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        - В таблице указан размер пояса джинс.<br>
                        - Измерьте обхват бедер в том месте, где Вы обычно носите джинсы.<br>
                        - Определите Ваш размер с помощью приведенной таблицы.<o:p></o:p>
                    </p>
                    <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="width: 100.0%; background: black; border-collapse: collapse; border: none; mso-border-alt: solid #BFBFBF 1.0pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 0cm 0cm 0cm"
                        width="100%">
                        <tbody>
                            <tr>
                                <td rowspan="3" style="border: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        &nbsp;Размер<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        28<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        30<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        32<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        34<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        36<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        38<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        40<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        42<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        44<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        46<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        48<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        50<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        52<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        54<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        56<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        58<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        S<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        M<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        L<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        L-XL<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XL<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XL-XXL<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XXL<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XXXL<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Обхват пояса, см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        74-77<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        78-81<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        82-85<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        86-89<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        90-94<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        95-99<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        100-104<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        105-109<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Длина штанины, см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        104<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        107<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        107<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        110<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        110<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        113<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        113<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        116<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Рост, см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        165-170<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        170-175<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        175-180<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        180-185<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        185-190<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        190-195<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        195-200<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        200-205<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        <b>Как измерить и подобрать размер джинс для женщин:&nbsp;<o:p></o:p></b>
                    </p>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        - В таблице указан размер пояса джинс.<br>
                        - Измерьте обхват бедер в том месте, где Вы обычно носите джинсы.<br>
                        - Определите Ваш размер с помощью приведенной таблицы.<o:p></o:p>
                    </p>
                    <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="width: 100.0%; background: black; border-collapse: collapse; border: none; mso-border-alt: solid #BFBFBF 1.0pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 0cm 0cm 0cm"
                        width="100%">
                        <tbody>
                            <tr>
                                <td rowspan="4" style="border: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Размер<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        25<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        26<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        27<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        28<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        29<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        30<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        31<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        32<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        32<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        34<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        36<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        38<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        40<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        42<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        44<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        46<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        40<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        42<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        44<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        46<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        48<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        50<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        52<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        54<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XS<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XS-S<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        S<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        S-M<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        M<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        L<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        L-XL<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        XL<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Обхват бедер, см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        84-87<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        88-91<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        92-95<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        96-98<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        99-102<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        103-106<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        107-110<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        111-115<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Длина штанины, см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        102<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        105<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        105<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        108<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        108<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        111<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        111<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        111<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Рост, см<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        157-162<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        162-167<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        165-170<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        168-173<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        171-176<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        174-179<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        177-182<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        180-185<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        <b>Как измерить и подобрать размер мужской обуви:<br>
                        </b>- Поставьте стопу на лист бумаги.- Измерьте сантиметром расстояние от пятки до края пальцев, чтобы определить длину стопы.
                    </p>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        - Определите Ваш размер с помощью таблицы. В
                    </p>
                    <p class="MsoNormal" style="margin-bottom: 0.0001pt;">
                        - Обведите контур стопы.
                    </p>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        сегда округляйте размер до большего.
                    </p>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        <o:p></o:p>
                    </p>
                    <div align="center">
                        <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="width: 100.0%; background: black; border-collapse: collapse; border: none; mso-border-alt: solid #BFBFBF 1.0pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 0cm 0cm 0cm"
                            width="100%">
                            <tbody>
                                <tr>
                                    <td style="border: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                            Длина ноги, см<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            24.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            25<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            25.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            26<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            26.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            27<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="width: 5.0%; border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt"
                                        width="5%">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            27.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="width: 3.0%; border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt"
                                        width="3%">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            28<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            28.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            29<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            29.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            30<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            31<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            32<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            33<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            34<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            35<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            36<o:p></o:p>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                            USA<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            6.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            7<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            7.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            8<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            8.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            9<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="width: 5.0%; border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt"
                                        width="5%">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            9.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="width: 3.0%; border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt"
                                        width="3%">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            10<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            10.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            11<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            11.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            12<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            13<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            14<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            15<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            16<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            17<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            18<o:p></o:p>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                            RUS<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            38<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            39<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            39.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            40<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            41<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            41.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="width: 5.0%; border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt"
                                        width="5%">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            42<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="width: 3.0%; border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt"
                                        width="3%">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            43<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            43.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            44<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            44.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            45<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            46.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            47.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            48.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            49.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            50.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            51.5<o:p></o:p>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                            EUR<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            39<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            40<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            40.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            41<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            42<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            42.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="width: 5.0%; border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt"
                                        width="5%">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            43<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="width: 3.0%; border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt"
                                        width="3%">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            44<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            44.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            45<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            45.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            46<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            47.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            48.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            49.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            50.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            51.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            52.5<o:p></o:p>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                            UK<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            5.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            6<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            6.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            7<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            7.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            8<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="width: 5.0%; border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt"
                                        width="5%">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            8.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="width: 3.0%; border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt"
                                        width="3%">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            9<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            9.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            10<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            10.5<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            11<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            12<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            13<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            14<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            15<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            16<o:p></o:p>
                                        </p>
                                    </td>
                                    <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: white; padding: 1.4pt 1.4pt 1.4pt 1.4pt">
                                        <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                            17<o:p></o:p>
                                        </p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        <b>Как измерить и подобрать размер женской &nbsp;обуви:<br>
                        </b>- Поставьте стопу на лист бумаги.<br>
                        - Обведите контур стопы.<br>
                        - Измерьте сантиметром расстояние от пятки до края пальцев, чтобы определить длину стопы.<br>
                        - Определите Ваш размер с помощью таблицы. Всегда округляйте размер до большего.<o:p></o:p>
                    </p>
                    <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="width: 100%; border-collapse: collapse; border: none; background-position: initial initial; background-repeat: initial initial;" width="100%">
                        <tbody>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        Длина ноги. См<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        20.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        22<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        22.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        23<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        23.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        24<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        24.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        25<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        25.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        26<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        26.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border: solid #BFBFBF 1.0pt; border-left: none; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        27<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        USA<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        4<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        4.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        5.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        6<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        6.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        7<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        7.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        8<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        8.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        9<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        9.5<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        RUS<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        33.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        34<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        34.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        35<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        35.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        36.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        37<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        37.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        38<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        39<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        39.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        40<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        EUR<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        34.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        35<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        35.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        36<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        36.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        37.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        38<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        38.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        39<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        40<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        40.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        41<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: solid #BFBFBF 1.0pt; border-top: none; mso-border-top-alt: solid #BFBFBF 1.0pt; background: #EDEDED; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                                        UK<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        1.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        2<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        2.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        3<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        3.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        4<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        4.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        5.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        6<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        6.5<o:p></o:p>
                                    </p>
                                </td>
                                <td style="border-top: none; border-left: none; border-bottom: solid #BFBFBF 1.0pt; border-right: solid #BFBFBF 1.0pt; mso-border-top-alt: solid #BFBFBF 1.0pt; mso-border-left-alt: solid #BFBFBF 1.0pt; background: transparent; padding: 2.25pt 2.25pt 2.25pt 2.25pt">
                                    <p align="center" class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt; text-align: center">
                                        7<o:p></o:p>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p>
                        &nbsp;
                    </p>
                    <p class="MsoNormal" style="margin-bottom: 0cm; margin-bottom: .0001pt">
                        <o:p>&nbsp;</o:p>
                    </p>

                </div>

            </div>
        </div>
    </div>
</asp:Content>
