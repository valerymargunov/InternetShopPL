<%@ Page Title="" Language="C#" MasterPageFile="~/global.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="SS.Web.contacts" %>

<%@ Import Namespace="SS.Web" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title><%= this.GetString("Contacty") %></title>
    <script type="text/javascript" src="//vk.com/js/api/openapi.js?105"></script>
    <script type="text/javascript">
        VK.init({ apiId: 4167153, onlyWidgets: true });
    </script>
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
                                    <span> <%= this.GetString("Contacty") %></span>
                                </h2>
                                <div class="article-content">
                                    <p style="text-align: center;">
                                        <span style="font-size: 14px;"><strong><span style="font-size: 14px;"><%= this.GetString("Address") %>:</span></strong></span>
                                        <strong>
                                            <span style="color: black; font-size: 14px;">Bialystok ul.Kawaleryjska 19/23 lok 121D</span>
                                        </strong>
                                    </p>
                                    <p style="text-align: center;">
                                        <span><span style="font-size: 14px;"><strong><%= this.GetString("Telefony") %>:</strong>
                                            <strong>
                                                <span style="color: black;">
                                                    <a href="viber:375298051729" style="font-size: 14px; color: black;">+375298051729 (viber)</a>
                                                    <a href="tell:48534152632" style="font-size: 14px; color: black;">+48534152632</a>
                                                </span>
                                            </strong></span></span>
                                    </p>
                                    <p style="text-align: center;">
                                        <span>
                                            <span style="font-size: 14px;"><strong>Skype:</strong>
                                                <strong>
                                                    <span style="color: black;">
                                                        <a href="skype:saksum.online1?call" style="font-size: 14px; color: black;">saksum online pl</a>
                                                    </span>
                                                </strong>
                                            </span>
                                        </span>
                                    </p>
                                    <p style="text-align: center;">
                                        <span style="font-size: 14px;">
                                            <strong>
                                                <span style="font-size: 14px;">E-mail: </span>
                                                <a href="malito:1firmasaksum@gmail.com" style="font-size: 14px; color: black;">1firmasaksum@gmail.com</a>
                                            </strong>
                                        </span>
                                    </p>
                                    <p>
                                        <br />
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2395.3504768969688!2d23.1434428!3d53.1038992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0x238de568d654706a!2z0JrQsNCy0LDQu9C10YDQuNC50YHQutC40Lk!5e0!3m2!1sru!2s!4v1437414864581" width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
                                        <br />
                                        <small><a href="https://goo.gl/maps/ZyNpB" style="color: #0000FF; text-align: left"><%= this.GetString("UvelichinaKarta") %></a></small>
                                    </p>
                                    <br />
                                    <br />
                                    <div id="vk_comments"></div>
                                    <script type="text/javascript">
                                        VK.Widgets.Comments("vk_comments", { limit: 10, width: "700", attach: "*" });
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   <%-- </span>--%>
</asp:Content>
