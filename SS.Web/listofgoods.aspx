﻿<%@ Page Title="" Language="C#" MasterPageFile="~/global.Master" AutoEventWireup="true" CodeBehind="listofgoods.aspx.cs" Inherits="SS.Web.listofgoods" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Перечень</title>
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
                                    <span>Перечень </span>
                                </h2>
                                <div class="article-content">
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;"><em><span style="color: #000000;" mce_style="color: #000000;"><span style="font-style: normal" mce_style="font-style: normal"><span style="font-weight: normal" mce_style="font-weight: normal">Утвержден</span></span></span></em></span></span></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm" align="RIGHT"><em><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;"><span style="font-style: normal" mce_style="font-style: normal"><span style="font-weight: normal" mce_style="font-weight: normal">Постановлением Правительства</span></span></span></span></span></em></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm" align="RIGHT"><em><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;"><span style="font-style: normal" mce_style="font-style: normal"><span style="font-weight: normal" mce_style="font-weight: normal">Российской Федерации</span></span></span></span></span></em></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm" align="RIGHT"><em><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;"><span style="font-style: normal" mce_style="font-style: normal"><span style="font-weight: normal" mce_style="font-weight: normal">от 19 января 1998 г. N 55</span></span></span></span></span></em></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"></span></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm" align="CENTER"><strong><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;"><span style="font-style: normal" mce_style="font-style: normal"><span style="font-weight: normal" mce_style="font-weight: normal">ПЕРЕЧЕНЬ</span></span></span></span></span></strong></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm" align="CENTER"><strong><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;"><span style="font-style: normal" mce_style="font-style: normal"><span style="font-weight: normal" mce_style="font-weight: normal">НЕПРОДОВОЛЬСТВЕННЫХ ТОВАРОВ НАДЛЕЖАЩЕГО КАЧЕСТВА,</span></span></span></span></span></strong></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm" align="CENTER"><strong><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;"><span style="font-style: normal" mce_style="font-style: normal"><span style="font-weight: normal" mce_style="font-weight: normal">НЕ ПОДЛЕЖАЩИХ ВОЗВРАТУ ИЛИ ОБМЕНУ НА АНАЛОГИЧНЫЙ</span></span></span></span></span></strong></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm" align="CENTER"><strong><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;"><span style="font-style: normal" mce_style="font-style: normal"><span style="font-weight: normal" mce_style="font-weight: normal">ТОВАР ДРУГИХ РАЗМЕРА, ФОРМЫ, ГАБАРИТА, ФАСОНА,</span></span></span></span></span></strong></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm" align="CENTER"><strong><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;"><span style="font-style: normal" mce_style="font-style: normal"><span style="font-weight: normal" mce_style="font-weight: normal">РАСЦВЕТКИ ИЛИ КОМПЛЕКТАЦИИ</span></span></span></span></span></strong></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm" align="CENTER"><span style="color: #000000;" mce_style="color: #000000;"></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="CENTER"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">(в ред. Постановлений Правительства РФ от 20.10.1998 N 1222,</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="CENTER"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">от 06.02.2002 N 81)</span></span></span></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">1. Товары для профилактики и лечения заболеваний в домашних условиях (предметы санитарии и гигиены из металла, резины, текстиля и других материалов, инструменты, приборы и аппаратура медицинские, средства гигиены полости рта, линзы очковые, предметы по уходу за детьми), лекарственные препараты</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">(в ред. Постановления Правительства РФ от 20.10.1998 N 1222)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">2. Предметы личной гигиены (зубные щетки, расчески, заколки, бигуди для волос, парики, шиньоны и другие аналогичные товары)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">(п. 2 в ред. Постановления Правительства РФ от 20.10.1998 N 1222)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">3. Парфюмерно-косметические товары</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">4. Текстильные товары (хлопчатобумажные, льняные, шелковые, шерстяные и синтетические ткани, товары из нетканых материалов типа тканей - ленты, тесьма, кружево и другие); кабельная продукция (провода, шнуры, кабели); строительные и отделочные материалы (линолеум, пленка, ковровые покрытия и другие) и другие товары, отпускаемые на метраж</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">(п. 4 в ред. Постановления Правительства РФ от 20.10.1998 N 1222)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">5. Швейные и трикотажные изделия (изделия швейные и трикотажные бельевые, изделия чулочно-носочные)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">6. Изделия и материалы, контактирующие с пищевыми продуктами, из полимерных материалов, в том числе для разового использования (посуда и принадлежности столовые и кухонные, емкости и упаковочные материалы для хранения и транспортирования пищевых продуктов)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">7. Товары бытовой химии, пестициды и агрохимикаты</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">(в ред. Постановления Правительства РФ от 20.10.1998 N 1222)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">8. Мебель бытовая (мебельные гарнитуры и комплекты)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">9. Изделия из драгоценных металлов, с драгоценными камнями, из драгоценных металлов со вставками из полудрагоценных и синтетических камней, ограненные драгоценные камни</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">10. Автомобили и мотовелотовары, прицепы и номерные агрегаты к ним; мобильные средства малой механизации сельскохозяйственных работ; прогулочные суда и иные плавсредства бытового назначения</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">11. Технически сложные товары бытового назначения, на которые установлены гарантийные сроки (станки металлорежущие и деревообрабатывающие бытовые; электробытовые машины и приборы; бытовая радиоэлектронная аппаратура; бытовая вычислительная и множительная техника; фото- и киноаппаратура; телефонные аппараты и факсимильная аппаратура; электромузыкальные инструменты; игрушки электронные, бытовое газовое оборудование и устройства)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">(в ред. Постановлений Правительства РФ от 20.10.1998 N 1222, от 06.02.2002 N 81)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">12. Гражданское оружие, основные части гражданского и служебного огнестрельного оружия, патроны к нему</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">(п. 12 введен Постановлением Правительства РФ от 20.10.1998 N 1222)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">13. Животные и растения</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">(п. 13 введен Постановлением Правительства РФ от 20.10.1998 N 1222)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">14. Непериодические издания (книги, брошюры, альбомы, картографические и нотные издания, листовые изоиздания, календари, буклеты, издания, воспроизведенные на технических носителях информации)</span></span></span></p>
                                    <p style="margin-bottom: 0cm; font-style: normal; font-weight: normal" mce_style="margin-bottom: 0cm; font-style: normal; font-weight: normal" align="LEFT"><span style="color: #000000;" mce_style="color: #000000;"><span style="font-family: Tahoma,sans-serif;" mce_style="font-family: Tahoma,sans-serif;"><span style="font-size: xx-small;" mce_style="font-size: xx-small;">(п. 14 введен Постановлением Правительства РФ от 06.02.2002 N 81)</span></span></span></p>
                                    <p style="margin-bottom: 0cm" mce_style="margin-bottom: 0cm">
                                        <br />
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
