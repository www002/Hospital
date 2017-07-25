<%@ page language="C#" autoeventwireup="true" inherits="ScienceField, App_Web_wbiuerbv" %>

<%@ Register Src="UserControl/Footer.ascx" TagName="Footer" TagPrefix="uc1" %>
<%@ Register Src="UserControl/Header.ascx" TagName="Header" TagPrefix="uc2" %>
<%@ Register Src="UserControl/Left.ascx" TagName="Left" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>科普园地</title>
    <link type="text/css" rel="stylesheet" href="css/main.css" />
    <link type="text/css" rel="stylesheet" href="css/page.css" />
    <link rel="shortcut icon" type="image/x-ico" href="img/7.ico" media="screen" /> 
</head>
<body>
    <form id="form2" runat="server">
    <!--头部开始-->
    <uc2:Header ID="Header1" runat="server" />
    <!--头部结束-->
    <!--Content开始-->
    <div class="contentPagetslf">
        <uc3:Left ID="Left1" runat="server" />
        <div class="rightt">
            <div class="rightt_top">
                <div class="le">
                    <img src="img/munbtn/neir_r1_c6.jpg" /></div>
                <div class="zi">
                    <asp:Label ID="tit" runat="server">科普园地</asp:Label></div>
                <div class="rg">
                    <img src="img/munbtn/neir_r1_c14.jpg" /></div>
            </div>
            <div class="segmentDetail">
                <div class="title">
                    <%Models.ScienceField news = this.GetScienceFieldById();%>
                    <%if (news != null)
                      {%>
                    <h2>
                        <%=news.FTitle.ToString()%></h2>
                    <h5>
                        文章来源：本站原创 发布时间：<%=news.InTime %>
                        文章人气数：<%=news.ViewUser %></h5>
                </div>
                <div class="content">
                    <p>
                        <%=news.Description%>
                    </p>
                </div>
                <% } %>
                <%-- </div>
                <div class="content">
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;阴阳，是中国古代哲学的一对范畴。它最初的涵义是指日光的向背，向日为阳，背日为阴，后引申为气 候的寒暖，方位的上下、左右、内外，运动状态的躁动和宁静等等。
                        古代思想家看到一切现象都有正反两方面，就用阴阳这个概念来解释自然界两种对立和相互消长的物质势力，并认为阴阳的对立和消长是事物本身所固有的。 因此，阴阳是对自然界相互关联的某些事物和现象对立双方的概括，即含有对立统一的概念。这个概念引入医学领域，即是
                        将对人体具有推动、温煦、兴奋等作用的物质和功能，统属为阳；对于人体具有凝聚、滋润、抑制等作用的物质和功能，统属于阴。 阴阳学说贯穿在中医学理论体系的各个方面，用来说明人体的组织结构、生理功能、疾病的发生发展规律，并指导着临床诊断和治疗。
                    </p>
                </div>--%>
            </div>
        </div>
    </div>
    <div style="clear: both;">
    </div>
    <!--Content结束-->
    <!--footer开始-->
    <uc1:Footer ID="Footer1" runat="server" />
    <!--footer结束-->
    <!--QQ开始-->
    <div id="QQFloat" style="z-index: 20; right: 10px; visibility: visible; width: 111px;
        position: absolute; top: 416px; height: 110px">
        <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
            <tbody>
                <tr>
                    <td height="24">
                        <img height="24" src="img/QQ01.gif" width="111">
                    </td>
                </tr>
                <tr>
                    <td height="27">
                        <img src="img/QQ02.gif" width="111" height="27">
                    </td>
                </tr>
                <tr>
                    <td valign="top" background="img/04.gif">
                        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tbody>
                                <tr valign="top">
                                    <td colspan="2">
                                        <table width="100%" border="0" background="img/QQ04.gif">
                                            <tbody>
                                                <tr>
                                                    <td align="center">
                                                        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=472532591&site=qq&menu=yes">
                                                            <img border="0" src="http://wpa.qq.com/pa?p=2:472532591:41" alt="点击这里给我发消息" title="点击这里给我发消息">
                                                        </a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="19">
                        <img height="31" src="img/QQ03.gif" width="111">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <!--QQ结束-->
    </form>
</body>

<script type="text/javascript" src="js/jquery-1.3.1.js"></script>

<script type="text/javascript" src="js/Main.js"></script>

<script type="text/javascript">
//栏目切换
SetColumn("kpyd");
</script>

</html>
