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
                                    <p>
                                        <span style="font-size: 12px;">&nbsp; Доставка курьером по Солнечногорску производится несколько раз в неделю. Когда Ваш заказ будет собран, с Вами &nbsp;свяжется наш менеджер и уточнит удобное для Вас время доставки. Срок доставки от 2 до 7 дней.</span>
                                    </p>
                                    <p style="margin-bottom: 0cm">
                                        <span style="font-size: 12px;"><strong>&nbsp; Доставка по Солнечногорску бесплатна.</strong></span>
                                    </p>
                                    <p style="margin-bottom: 0cm">
                                        <span style="font-size: 12px;">
                                            <br />
                                            &nbsp; Доставка в другие города рассчитывается отдельно. Всю информацию сообщит вам наш менеджер по телефону.</span>
                                    </p>
                                    <p style="margin: 12px 0px; padding: 0px; border: 0px none; font-size: 12px; line-height: 18px; vertical-align: baseline">
                                        <span style="color: #99cc00">&nbsp; Срок доставки:</span>&nbsp;от 2 до 7 дней.
                                            <br />
                                    </p>
                                    <p style="margin: 12px 0px; padding: 0px; border: 0px none; font-size: 12px; line-height: 18px; vertical-align: baseline">
                                        <span style="font-size: 12px"><span style="color: #99cc00">&nbsp; Доставка:</span> Солнечногорск, Зеленоград, Клин</span>
                                    </p>
                                    <p style="margin: 12px 0px; padding: 0px; border: 0px none; font-size: 12px; line-height: 18px; vertical-align: baseline; float: none !important">
                                        <span style="font-size: 12px"><span style="color: #99cc00">&nbsp; Бесплатная доставка:</span> Солнечногорск</span>
                                    </p>
                                    <p style="margin: 12px 0px; padding: 0px; border: 0px none; font-size: 12px; line-height: 18px; vertical-align: baseline; float: none !important">
                                        <span style="font-size: 12px"><span style="color: #99cc00">
                                            <span style="color: #33cc00">
                                                <span style="color: #99cc00">&nbsp; Телефон:</span>
                                            </span>
                                            <strong>
                                                <span style="color: #33cc00"></span>
                                            </strong>
                                        </span>
                                        </span>
                                        <span style="font-size: 12px">+7 (968) 447-67-15, +7 (916) 121-74-15</span>
                                    </p>
                                    <div>
                                        <span style="font-size: 12px">
                                            <br />
                                        </span>
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
