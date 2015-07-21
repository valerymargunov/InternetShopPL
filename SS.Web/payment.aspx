<%@ Page Title="" Language="C#" MasterPageFile="~/global.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="SS.Web.payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Оплата</title>
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

                                    <span>Способы оплаты товара в интернет-магазине StreetStyleOnline</span>
                                </h2>
                                <div class="article-content">
                                    <p style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif;">
                                        <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Как купить товар на сайте?</strong></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">1. Нажмите на кнопку &bdquo;В корзину&ldquo; рядом с понравившимся Вам товаром. Все отмеченные Вами товары будут перемещены в Вашу корзину.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">2. Чтобы начать процесс покупки, нажмите &bdquo;Оформить заказ&ldquo;.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">3. Введите свои адресные данные, электронную почту и контактный телефон для связи.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">4. Выберите способ доставки заказа.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">5. Выберите способ оплаты.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        &nbsp;
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-family: tahoma, arial, helvetica, sans-serif; font-size: 10pt; color: rgb(0, 0, 0); line-height: 18px;">Выбранную продукцию Вы можете оплатить любым удобным для Вас способом:</span>
                                    </p>
                                    <p>
                                        <span style="color: #(color);"><span style="font-size: 12px;">&nbsp;- Наличными непосредственно в нашем магазине или курьеру при получении заказа;<br />
                                        </span></span>
                                    </p>
                                    <p>
                                        <span style="color: #(color);"><span style="font-size: 12px;">&nbsp;- Оплата&nbsp;пластиковыми картами VISA, MasterCard (Электронная платежная система W1 Единый кошелек);<br />
                                        </span></span>
                                    </p>
                                    <p>
                                        <span style="color: #(color);"><span style="font-size: 12px;">&nbsp;- Банковским переводом согласно выставленного счета;<br />
                                        </span></span>
                                    </p>
                                    <div style="border: 0px; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: 'Lucida Grande', Arial, sans-serif; line-height: 18px;">
                                        &nbsp;
                                    </div>
                                    <p style="margin-top: 0px; margin-bottom: 20px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif;">
                                        <span style="margin: 0px; padding: 0px; border: 0px; outline: 0px;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Кто гарантирует безопасность моего электронного платежа?</strong></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">Вы можете наслаждаться покупками &nbsp;при сохранении полной безопасности Вашего платежа.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">Наш интернет-магазин официально зарегистрирован в системе электронных платежей Единая касса и осуществляет через нее все электронные транзакции. Единая касса гарантирует всем плательщикам абсолютную конфиденциальность и безопасность электронных переводов денег.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">К Единой кассе подключены все ведущие электронные платежные системы, такие как Yandex.Деньги, Web Money и многие другие. Кроме того, с помощью Единой кассы Вы можете расплатиться за покупку банковской картой, а также наличными деньгами.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <br style="margin: 0px; padding: 0px;" />
                                        <span style="color: rgb(0, 0, 0);"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">Что такое Единая касса?</strong></span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">Единая касса &ndash; это универсальная платежная система, позволяющая осуществлять безопасные транзакции за покупки в интернет-магазинах. Оплата через Единую кассу это не только надежно, но и очень удобно, поскольку Единая касса принимает к оплате&nbsp;</span><a href="http://merchant.w1.ru/checkout/site/payments/#cash#cash" style="font-size: 12px; color: rgb(125, 105, 90); cursor: pointer; margin: 0px; padding: 0px;"><span style="color: rgb(0, 0, 0);">наличные</span></a><span style="color: rgb(0, 0, 0);">,&nbsp;</span><a href="http://merchant.w1.ru/checkout/site/payments/#cashless#cashless" style="font-size: 12px; color: rgb(125, 105, 90); cursor: pointer; margin: 0px; padding: 0px;"><span style="color: rgb(0, 0, 0);">безналичные</span></a><span style="color: rgb(0, 0, 0);">&nbsp;и&nbsp;</span><a href="http://merchant.w1.ru/checkout/site/payments/#emoney#emoney" style="font-size: 12px; color: rgb(125, 105, 90); cursor: pointer; margin: 0px; padding: 0px;"><span style="color: rgb(0, 0, 0);">электронные деньги</span></a><span style="color: rgb(0, 0, 0);">.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">К Единой кассе подключены все ведущие электронные платежные системы, такие как Yandex.Деньги, Web Money и многие другие.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">Оплатить заказ интернет-магазина, подключенного к Единой кассе, можно более чем в 300 000 пунктах приема наличных &mdash; в&nbsp;</span><a href="http://merchant.w1.ru/checkout/site/payments/terminals.aspx" title="Инструкция по оплате заказа через терминал">терминалах</a></span><span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">, салонах связи, гипермаркетах электроники, торговых сетях, банкоматах, отделениях Почты России,</span>&nbsp;<a href="http://merchant.w1.ru/checkout/site/payments/sberbank.aspx" title="Инструкция по оплате заказа в банке">Сбербанка</a></span><span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">&nbsp;и любых российских банков.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">Оплатить заказ интернет-магазина, подключенного к Единой кассе, можно с помощью банковских карт международных платежных систем VISA и MasterCard или переводом средств со своего банковского счета, открытого в любом российском банке.</span></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;"><span style="color: rgb(0, 0, 0);">Подробнее о Единой кассе здесь&nbsp;</span><a href="http://merchant.w1.ru/checkout/site/payments/">http://merchant.w1.ru/checkout/site/payments/</a></span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="font-size: 12px;">
                                            <br />
                                        </span>
                                    </p>
                                    <p style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(125, 105, 90); font-family: Tahoma, Verdana, sans-serif; font-size: 11px;">
                                        <span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px;">&nbsp; &nbsp;У вас есть&nbsp;</span><b style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; margin: 0px; padding: 0px; border: 0px; outline: 0px;">электронный кошелек?</b><span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px;">&nbsp;Прекрасно! Это самый современный, быстрый и экономичный способ оплаты. Он гарантирует вам мгновенное оформление заказа и быструю доставку.&nbsp;</span>
                                    </p>
                                    <p style="margin: 0px 0px 5px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; padding: 0px; border: 0px; outline: 0px;">
                                        <span style="font-size: 12px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; letter-spacing: 0px;">Вы предпочитаете оплачивать покупки&nbsp;<b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">наличными деньгами?</b>&nbsp;Не проблема &ndash; вы сможете оплатить товар,&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; letter-spacing: 0px;">внеся оплату через&nbsp;<b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">платежный терминал</b>, подключенный к системе Единая касса (часть терминалов не берут комиссию за перевод).&nbsp;</span></span>
                                    </p>
                                    <p style="margin: 0px 0px 5px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; padding: 0px; border: 0px; outline: 0px;">
                                        <span style="font-size: 12px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; letter-spacing: 0px;">Вы привыкли расплачиваться&nbsp;<b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">банковской картой?</b>&nbsp;Отлично, сразу по оформлении заказа мы пришлем Вам свои банковские реквизиты и вы сможете перевести деньги за покупку.&nbsp;</span></span>
                                    </p>
                                    <p style="margin: 0px 0px 5px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; padding: 0px; border: 0px; outline: 0px;">
                                        <span style="font-size: 12px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; letter-spacing: 0px;">Вам удобно осуществлять платежи с помощью&nbsp;<b style="margin: 0px; padding: 0px; border: 0px; outline: 0px;">мобильного телефона?</b>&nbsp;К Вашим услугам оплата с помощью Единой кассы, где за каждую покупку Вам будут начислять бонусы на бесплатные смс и звонки.&nbsp;</span></span>
                                    </p>
                                    <p>
                                        <span style="color: rgb(0, 0, 0);">&nbsp;- Служба по работе с клиентами нашего интернет-магазина: +7 (968) 447-67-15, +7 (916) 121-74-15</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
