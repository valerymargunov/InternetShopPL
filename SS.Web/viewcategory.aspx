<%@ Page Title="" Language="C#" MasterPageFile="~/global.Master" AutoEventWireup="true" CodeBehind="viewcategory.aspx.cs" Inherits="SS.Web.viewcategory" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="//vk.com/js/api/openapi.js?105"></script>
    <script type="text/javascript">
        VK.init({ apiId: 4167153, onlyWidgets: true });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="product_list" runat="server" style="width: 100%; float: none">
    </div>
    <div align="center">
        <asp:ListView ID="ListProducts" runat="server" GroupItemCount="4" DataKeyNames="ProductId">
            <LayoutTemplate>
                <table runat="server" id="table1">
                    <tr runat="server" id="groupPlaceholder">
                    </tr>
                </table>
                <%--<asp:DataPager runat="server" ID="DataPager" PageSize="8">
                <Fields>
                    <asp:NumericPagerField
                        ButtonCount="5"
                        PreviousPageText="Назад"
                        NextPageText="Вперед" />
                </Fields>
            </asp:DataPager>--%>
            </LayoutTemplate>
            <GroupTemplate>
                <tr runat="server" id="tableRow">
                    <td runat="server" id="itemPlaceholder" />
                </tr>
            </GroupTemplate>
            <GroupSeparatorTemplate>
            </GroupSeparatorTemplate>
            <ItemTemplate>
                <td runat="server" style="width: 150px;">
                    <div style='height: 18px; text-align: center;'><%#Eval("Title").ToString() %></div>
                    <div style="margin: 0px !important;">
                        <a href='<%# "viewproduct.aspx?idProduct=" + Eval("ProductId").ToString() %>' class='' style="margin: 0px !important;" title='<%#Eval("Title").ToString() %>'>
                            <img src='<%#Eval("ImageSrc").ToString() %>' class='' style='width: 150px; height: 200px; margin: 0px !important; padding: 0px !important;' title='<%#Eval("Title").ToString() %>' alt='<%#Eval("Title").ToString() %>' />
                        </a>
                        <%--<p id='price_stl' style="margin-top: 0px;">--%>
                        <span id='price_stl' class='' style="margin-top: 0px;"><%#Eval("Cost").ToString() %> Руб.</span>
                        <%-- </p>--%>
                    </div>

                </td>
            </ItemTemplate>
        </asp:ListView>
        <br />
        <asp:DataPager runat="server" ID="ProductsDataPager"
            PagedControlID="ListProducts" PageSize="40" OnPreRender="DataPagerProducts_PreRender">
            <Fields>
                <%--          <asp:NextPreviousPagerField ButtonType="Button"
            ShowFirstPageButton="true"
            ShowNextPageButton="false" 
            ShowPreviousPageButton="false" />
          <asp:NumericPagerField ButtonCount="10" />
          <asp:NextPreviousPagerField ButtonType="Button"
            ShowLastPageButton="true"
            ShowNextPageButton="false" 
            ShowPreviousPageButton="false" />--%>
                <%-- <asp:NumericPagerField
                        ButtonCount="10"
                        PreviousPageText="Назад"
                        NextPageText="Вперед" />--%>
                <asp:NextPreviousPagerField ShowFirstPageButton="True" ShowNextPageButton="False" />
                <asp:NumericPagerField />
                <asp:NextPreviousPagerField ShowLastPageButton="True" ShowPreviousPageButton="False" />
            </Fields>
        </asp:DataPager>
        <div id="gk_product_tab_1" class="gk_product_tab">
            <div id="vk_comments"></div>
            <script type="text/javascript">
                VK.Widgets.Comments("vk_comments", { limit: 10, width: "680", attach: "*" });
            </script>
        </div>
    </div>
</asp:Content>
