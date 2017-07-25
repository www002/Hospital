<%@ page language="C#" autoeventwireup="true" inherits="NewsList, App_Web_wbiuerbv" %>

<%@ Register Src="UserControl/Footer.ascx" TagName="Footer" TagPrefix="uc1" %>
<%@ Register Src="UserControl/Header.ascx" TagName="Header" TagPrefix="uc2" %>
<%@ Register Src="UserControl/Left.ascx" TagName="Left" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新闻</title>
    <link type="text/css" rel="stylesheet" href="css/main.css" />
    <link type="text/css" rel="stylesheet" href="css/page.css" />
    <link rel="shortcut icon" type="image/x-ico" href="img/7.ico" media="screen" /> 
</head>
<body>
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
                    新闻</div>
                <div class="rg">
                    <img src="img/munbtn/neir_r1_c14.jpg" /></div>
            </div>
            <div class="segment">
                <ul>
                    <%System.Data.DataTable dt4 = this.GetNewList();%>
                    <% 
                        for (int i = 0; i < dt4.Rows.Count; i++)
                        { %>
                    <li><a href="NewShow.aspx?Id=<%=dt4.Rows[i]["Id"]%>" target="_blank">
                        <%=dt4.Rows[i]["Title"]%></a><span><%=dt4.Rows[i]["InTime"]%></span></li>
                    <%}%>
                </ul>
            </div>
        </div>
    </div>
    <!--Content结束-->
    <!--footer开始-->
    <uc1:Footer ID="Footer1" runat="server" />
    <!--footer结束-->     
</body>

<script type="text/javascript" src="js/jquery-1.3.1.js"></script>

<script type="text/javascript" src="js/Main.js"></script>

<script type="text/javascript">
//栏目切换
SetColumn("sy");
</script>

</html>