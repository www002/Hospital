<%@ page language="C#" autoeventwireup="true" inherits="ChinaDoctorList, App_Web_wbiuerbv" %>

<%@ Register Src="UserControl/Footer.ascx" TagName="Footer" TagPrefix="uc1" %>
<%@ Register Src="UserControl/Header.ascx" TagName="Header" TagPrefix="uc2" %>
<%@ Register Src="UserControl/Left.ascx" TagName="Left" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>中医特色</title>
    <link type="text/css" rel="stylesheet" href="css/main.css" />
    <link type="text/css" rel="stylesheet" href="css/page.css" />
    <link rel="shortcut icon" type="image/x-ico" href="img/7.ico" media="screen" />
</head>
<body onload="SetColumn('zyts')">
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
                    中医特色</div>
                <div class="rg">
                    <img src="img/munbtn/neir_r1_c14.jpg" /></div>
            </div>
            <div class="segment">
                <%System.Data.DataTable dt = this.GetAllDrugs();%>
                <% 
                    for (int i = 0; i < dt.Rows.Count; i += 3)
                    {%>
                <div class="ks">
                    <div class="ks_f0">
                        <a href="ChinaDoctor.aspx?Id=<%=dt.Rows[i]["Id"]%>">
                            <img src="<%=dt.Rows[i]["ImgURL"].ToString().Replace("~/","")%>" alt="" /></a><span>
                                <%=dt.Rows[i]["DName"]%>
                            </span>
                    </div>
                    <%if (i + 1 < dt.Rows.Count)
                      {%>
                    <div class="ks_f1">
                        <a href="ChinaDoctor.aspx?Id=<%=dt.Rows[i+1]["Id"]%>">
                            <img src="<%=dt.Rows[i+1]["ImgURL"].ToString().Replace("~/","")%>" alt="" /></a><span><%=dt.Rows[i + 1]["DName"]%></span></div>
                    <%}%>
                    <%if (i + 2 < dt.Rows.Count)
                      {%>
                    <div class="ks_f2">
                        <a href="ChinaDoctor.aspx?Id=<%=dt.Rows[i+2]["Id"]%>">
                            <img src="<%=dt.Rows[i+2]["ImgURL"].ToString().Replace("~/","")%>" alt="" /></a><span><%=dt.Rows[i + 2]["DName"]%></span></div>
                    <%}%>
                </div>
                <%}%>
            </div>
        </div>
    </div>
    <div style="clear: both">
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
SetColumn("zyts");
</script>

</html>
