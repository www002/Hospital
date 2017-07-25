<%@ page language="C#" autoeventwireup="true" inherits="NewShow, App_Web_wbiuerbv" %>

<%@ Register Src="UserControl/Footer.ascx" TagName="Footer" TagPrefix="uc1" %>
<%@ Register Src="UserControl/Header.ascx" TagName="Header" TagPrefix="uc2" %>
<%@ Register Src="UserControl/Left.ascx" TagName="Left" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新闻公告</title>
    <link type="text/css" rel="stylesheet" href="css/main.css" />
    <link type="text/css" rel="stylesheet" href="css/page.css" />
    <link rel="shortcut icon" type="image/x-ico" href="img/7.ico" media="screen" /> 
</head>
<body>
    <form id="form1" runat="server">
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
                    <asp:Label ID="tit" runat="server">新闻</asp:Label></div>
                <div class="rg">
                    <img src="img/munbtn/neir_r1_c14.jpg" /></div>
            </div>
            <div class="segmentDetail">
                <div class="title">
                    <%Models.H_new news = this.GetNewById();%>
                    <%if (news != null)
                      {%>
                    <h2>
                        <%=news.Title.ToString()%></h2>
                    <h5>
                        文章来源：本站原创 发布时间：<%=news.InTime %>
                        文章人气数：<%=news.ViewUser %></h5>
                </div>
                <div class="content">
                    <p>
                        <%=news.MainBody%>
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
    </form>
</body>

<script type="text/javascript" src="js/jquery-1.3.1.js"></script>

<script type="text/javascript" src="js/Main.js"></script>

</html>
