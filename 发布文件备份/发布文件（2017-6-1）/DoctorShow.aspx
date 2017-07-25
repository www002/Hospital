<%@ page language="C#" autoeventwireup="true" inherits="DoctorShow, App_Web_wbiuerbv" %>

<%@ Register Src="UserControl/Footer.ascx" TagName="Footer" TagPrefix="uc1" %>
<%@ Register Src="UserControl/Header.ascx" TagName="Header" TagPrefix="uc2" %>
<%@ Register Src="UserControl/Left.ascx" TagName="Left" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>医生风采</title>
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
                    医生风采</div>
                <div class="rg">
                    <img src="img/munbtn/neir_r1_c14.jpg" /></div>
            </div>
            <div class="segment">
                <%Models.Doctor d = this.GetDoctorById();%>
                <%if (d != null)
                  {%>
                <div class="yyzp">
                    <img alt="" src="<%=d.ImgURL.ToString().Replace("~/","")%>" /></div>
                <div class="yyzl">
                    <h3>
                        <%=d.DName.ToString()%></h3>
                    <!-- Baidu Button BEGIN -->
                    <p>
                        <span style="float: left;">分 享:</span> <span class="bdshare_t bds_tools get-codes-bdshare qiangzhi"
                            data="{'bdText':''）','searchPic':0}"><a class="bds_qzone"></a><a class="bds_tsina">
                            </a><a class="bds_tqq"></a><a class="bds_renren"></a><span class="bds_more"></span>
                            <a class="shareCount"></a></span>

                        <script type="text/javascript" id="bdshare_js" data="type=button&amp;uid=621337"></script>

                        <script type="text/javascript" id="bdshell_js"></script>

                        <script type="text/javascript">
                                document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?t=" + new Date().getHours();
                        </script>

                    </p>
                    <!-- Baidu Button END -->
                    <br />
                    <br />
                    <p>
                        性 别：<%=d.Sex%></p>
                    <p>
                        科 室：<%=(d.H_Offic!=null)?d.H_Offic.OName:""%></p>
                    <p>
                        职 称：<%=d.Duty%></p>
                    <p>
                        职 务：<%=d.Position%></p>
                </div>
                <div class="yyxx">
                    <h5>
                        详细介绍</h5>
                    <p>
                        <%=d.Description%></p>
                </div>
                <% } %>
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
SetColumn("ysfc");
</script>

</html>
