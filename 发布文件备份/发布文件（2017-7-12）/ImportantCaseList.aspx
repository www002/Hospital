<%@ page language="C#" autoeventwireup="true" inherits="ImportantCaseList, App_Web_wbiuerbv" %>

<%@ Register Src="UserControl/Footer.ascx" TagName="Footer" TagPrefix="uc1" %>
<%@ Register Src="UserControl/Header.ascx" TagName="Header" TagPrefix="uc2" %>
<%@ Register Src="UserControl/Left.ascx" TagName="Left" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>典型病例</title>
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
                    典型病例</div>
                <div class="rg">
                    <img src="img/munbtn/neir_r1_c14.jpg" /></div>
            </div>
            <div class="segment">
                <ul>
                    <%System.Data.DataTable dt4 = this.GetImportantCase();%>
                    <% 
                        for (int i = 0; i < dt4.Rows.Count; i++)
                        { %>
                    <li><a href="ImportantCaseShow.aspx?Id=<%=dt4.Rows[i]["Id"]%>" target="_blank">
                        <%=dt4.Rows[i]["ITitle"]%></a><span><%=dt4.Rows[i]["InTime"]%></span></li>
                    <%}%>
                    <%--<li><a href="kxyjDetail.html" target="_blank">关科学研究疗法感冒的特色疗法。</a><span>2014/3/2</span></li>
                    <li><a href="kxyjDetail.html" target="_blank">科学研究治疗感冒的特色疗法感冒的特色疗法。</a><span>2014/3/2</span></li>
                    <li><a href="kxyjDetail.html" target="_blank">科学研究例烧感冒的特色疗法感冒的特色疗法。</a><span>2014/1/9</span></li>
                    <li><a href="kxyjDetail.html" target="_blank">科学研究疗感冒的特色疗法感冒的特色疗法。</a><span>2014/11/12</span></li>
                    <li><a href="kxyjDetail.html" target="_blank">关典型病科学研究例感冒的特色疗法感冒的特色疗法。</a><span>2014/4/22</span></li>
                    <li><a href="kxyjDetail.html" target="_blank">科学研究例的特色疗法感冒的特色疗法。</a><span>2014/5/23</span></li>--%>
                </ul>
            </div>
        </div>
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
</body>

<script type="text/javascript" src="js/jquery-1.3.1.js"></script>

<script type="text/javascript" src="js/Main.js"></script>

<script type="text/javascript">
//栏目切换
SetColumn("dxbl");
</script>

</html>
