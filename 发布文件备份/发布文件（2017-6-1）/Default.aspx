<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ OutputCache Duration="10000" VaryByParam="none" %>

<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_wbiuerbv" %>

<%@ Register Src="UserControl/Footer.ascx" TagName="Footer" TagPrefix="uc1" %>
<%@ Register Src="UserControl/Header.ascx" TagName="Header" TagPrefix="uc2" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <meta name="baidu-site-verification" content="ScTUHVrWxS" />
    <title>西社镇中心卫生院欢迎您</title>
    <meta name="Keywords" content="稷山县西社镇中心卫生院，稷山,西社，西社镇，稷山县西社卫生院，稷山县西社中心卫生院" />
    <meta name="Description" content="稷山县西社镇中心卫生院" />
    <link type="text/css" rel="stylesheet" href="css/main.css" />
    <link rel="shortcut icon" type="image/x-ico" href="img/7.ico" media="screen" />
</head>
<body>
    <form id="form1" runat="server">
    <!--头部开始-->
    <uc2:Header ID="Header1" runat="server" />
    <!--头部结束-->
    <!--Content开始-->
    <div class="content">
        <div class="con_01_l">
            <div class="f1">
                <!-- 焦点图 开始 -->
                <div class="flash">
                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="scriptmain" name="scriptmain"
                        codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0"
                        width="649" height="244">
                        <param name="movie" value="flash/bcastr.swf?bcastr_xml_url=xml/bcastr.xml">
                        <param name="quality" value="high">
                        <param name="scale" value="noscale">
                        <param name="LOOP" value="false">
                        <param name="menu" value="false">
                        <param name="wmode" value="transparent">
                        <embed src="flash/bcastr.swf?bcastr_xml_url=xml/bcastr.xml" width="649" height="244"
                            loop="false" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                            type="application/x-shockwave-flash" salign="T" name="scriptmain" menu="false"
                            wmode="transparent"></embed>
                    </object>
                </div>
                <!-- 焦点图 结束 -->
            </div>
            <div class="f2">
                <div class="tab_01_c" id="tab_01_t1" onmouseover="sel('1','tab_01_t','lis_01_l','2','tab_01','tab_01_c');">
                    <h3>
                        新闻</h3>
                </div>
                <div class="tab_01" id="tab_01_t2" onmouseover="sel('2','tab_01_t','lis_01_l','2','tab_01','tab_01_c');">
                    <h3>
                        公告</h3>
                </div>
                <div class="cf">
                </div>
                <ul class="lis_01" id="lis_01_l1">
                    <%System.Data.DataTable dt = this.GetNew("new", 6);%>
                    <% 
                        if (dt != null && dt.Rows.Count != 0)
                        {
                            for (int i = 0; i < dt.Rows.Count; i++)
                            { %>
                    <li><a href="NewShow.aspx?Id=<%=dt.Rows[i]["Id"]%>" title="<%=dt.Rows[i]["Title"].ToString()%>">
                        ·<%=dt.Rows[i]["Title"].ToString()%>
                    </a></li>
                    <%}
                        }%>
                </ul>
                <ul class="lis_01" id="lis_01_l2" style="display: none;">
                    <%System.Data.DataTable dt2 = this.GetNew("notice", 6);%>
                    <% 
                        if (dt2 != null && dt2.Rows.Count != 0)
                        {
                            for (int i = 0; i < dt2.Rows.Count; i++)
                            { %>
                    <li><a href="NewShow.aspx?Id=<%=dt2.Rows[i]["Id"]%>" title="<%=dt2.Rows[i]["Title"].ToString()%>">
                        ·<%=dt2.Rows[i]["Title"].ToString()%>
                    </a></li>
                    <%}
                        }%>
                </ul>
            </div>
        </div>
        <!--特色医疗-->
        <div class="con_02_1">
            <div class="f0">
                <img src="img/munbtn/复件 1-4副本.jpg" alt="" style="width: 968px; height: 50px; padding: 2px;" /></div>
            <div class="f1">
                <%--<a href="ChinaDoctor.aspx?Id=4">--%>
                    <img src="img/zy/ssc1.jpg" alt="" style="width: 350px; height: 190px; padding: 2px;" /><%--</a>--%></div>
            <div class="f2">
                <p>
                    &nbsp;&nbsp;<strong style="font-size: 22px">中医馆</strong></p>
                   <p> &nbsp;&nbsp;&nbsp;&nbsp;主治各种疼痛：颈椎病、肩周炎、腰间盘突出、腰肌劳损、坐骨神经痛、膝关节炎疼痛。</p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;治疗方法：中药熏蒸、推拿、按摩、针刺、艾灸、拔罐、穴位注射、内服中药、外用涂擦。</p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;治疗特色：中药熏蒸，针对不同体质、不同部位、不同性质的疼痛选择药包进行熏蒸。</p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;药饼艾灸：选择特定部位，放着特殊药饼进行艾灸。
                    <%--<a href="ChinaDoctor.aspx?Id=4">……查看全文</a>--%></p>
                <p> &nbsp;&nbsp;&nbsp;&nbsp;</p>
      
            </div>
        </div>
        <!--医院简介、院长、联系-->
        <div class="con_03_1">
            <div class="f0">
                <div>
                    <img alt="" src="img/LH/20.jpg" style="width: 308px; height: 150px;" /></div>
                <p style="width: 300px; height: 40px; padding-top: 5px; font: bold; font-size: 25px;
                    color: #C06; font-family: '华文隶书';">
                    稷山县西社镇中心卫生医院</p>
                <div>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;稷山县西社镇中心卫生院位于后稷故里原生态马首山（与云丘山相连）脚下，辖区25个自然村，服务人口29171人， 是一所以中医药茶饮为特色的综合性一级甲等公立医院。本院现有床位80张，主治医师3名，执业医师1名，执业助理医师6名。</p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;南有杜仲树，北有婆婆针，原生态马首山处处充满着奇珍异草，当地草药更是奇而丰富。学海无涯，艺无止境。本院一班人员利用当地富有的地理<a
                            href="HospitalMeg.aspx"> ……查看全文</a></p>
                </div>
            </div>
            <div class="f1">
                <%Models.Drug drug = this.GetDrugByName("胰岛草");%>
                <div style="float: left;">
                    <a href="ChinaDoctor.aspx?Id=29">
                        <img src="<%=drug.ImgURL.Replace("~/","")%>" style="width: 320px; height: 180px;"
                            alt="" />
                    </a>
                </div>
                <div style="float: left; padding-top: 15px; padding-left: 5px; padding-right: 5px;">
                    <strong style="font-size: 18px">
                        <%=drug.DName%></strong><hr style="width: 98%" />
                   <%-- <p>
                        成 分：<%=drug.DContent%></p>
                    <p>
                        功 效：<%=drug.Effect%></p>--%>
                        <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;饮食好 、活动少 、肥胖 、衰老 、II型糖尿病 、消瘦、坏疽、眼底出血、失明、高血脂、高血压、脑梗塞、脑萎缩、肢体残疾、轮椅相伴、痛苦余生，这就是现代人富贵病的临床表现。</p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;胰岛草中含量最高的总黄酮不仅能抑制人体的自由基对胰岛B细胞的损伤<a
                            href="ChinaDoctor.aspx?Id=29"> ……查看全文</a></p>
                        
                </div>
            </div>
            <div class="f2">
                <div style="margin-bottom: 10px;">
                	<%Models.Drug drug1 = this.GetDrugByName("三高养生茶");%>
                    <div style="float: left;">
                        <a href="ChinaDoctor.aspx?Id=<%=drug1.Id%>">
                            <img src='<%=drug1.ImgURL.Replace("~/","")%>' style="width: 150px; height: 170px;"
                                alt="" /></a></div>
                    <div style="float: right; padding-right: 20px; padding-top: 20px; width: 100px; height: 150px;
                        display: block;">
                        <p>
                            <a href="ChinaDoctor.aspx?Id=<%=drug1.Id%>" style="font-size: 25px;">
                                <%=drug1.DName%></a></p>
                        <p style="padding-top: 10px; font-size: 13px;">
                            成 分：<%=drug1.DContent %></p>
                        <p style="padding-top: 10px; font-size: 13px;">
                            功 效：<%=drug1.Effect%></p>
                    </div>
                    <div style="vertical-align:middle; text-align:center;">
                        <img src="img/s-02.jpg" style="width: 98%; height: 50px;border-bottom:1px #CCCCCC dashed" alt="" />
                    </div>
                </div>
                <div style="padding-left: 5px; padding-right: 5px; display: block;">                    
                    <%=(drug1.Effect.Length < 155) ? drug1.Effect : drug1.Effect.Substring(0, 155) + "..."%>
                </div>
                <%--<a href="HospitalAdd.aspx"><img alt="" src="img/munbtn/s-01.jpg" /></a>
                <a href="HospitalAdd.aspx"><img alt="" src="img/munbtn/s-02.jpg" /></a>
                <a href="HospitalAdd.aspx"><img alt="" src="img/munbtn/s-03.jpg" /></a>
                <a href="OnLineConsult.aspx"><img alt="" src="img/munbtn/s-04.jpg" /></a>
                <a href="HospitalAdd.aspx"><img alt="" src="img/munbtn/s-05.jpg" /></a>
                <a href="ChinaDoctorList.aspx"><img alt="" src="img/munbtn/s-03副本.jpg" /></a>--%>
            </div>
        </div>
        <!--医生-->
        <div class="con_04_1">
            <div class="team" style="position: relative">
                <h3 class="teamTitle">
                    <a href="DoctorList.aspx">更多>></a><span>专家团队</span></h3>
                <div style="width: 956px; margin: 0 auto; overflow: hidden">
                    <div class="expertindex">
                        <div class="roller_pro" id="roller_pro">
                            <table>
                                <tr>
                                    <td id="roller_pro_content">
                                        <table width="965px" border="0" cellspacing="0" cellpadding="0" align="center">
                                            <tr>
                                                <%System.Data.DataTable dt3 = this.GetDoctor();%>
                                                <%
                                                    for (int i = 0; i < dt3.Rows.Count; i++)
                                                    {%>
                                                <td style="padding-left: 5px; color: #0">
                                                    <dl>
                                                        <dt><a href="DoctorShow.aspx?Id=<%=dt3.Rows[i]["Id"]%>" target="_blank">
                                                            <img src="<%=dt3.Rows[i]["ImgURL"]%>" /></a> </dt>
                                                        <dt class="dd">
                                                            <h2>
                                                                <%=dt3.Rows[i]["DName"]%></h2>
                                                            <p>
                                                                <%=dt3.Rows[i]["Duty"]%></p>
                                                            <p>
                                                                <span>科 室:</span>
                                                                <%=dt3.Rows[i]["OName"]%></p>
                                                        </dt>
                                                    </dl>
                                                </td>
                                                <%}%>
                                            </tr>
                                        </table>
                                    </td>
                                    <td id="roller_temp_pro" valign="top">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--典型病例、科学研究、科普园地-->
        <div class="con_05_1">
            <div class="f0">
                <h3>
                    典型病例</h3>
                <span style="width: 308px; height: 150px; border-bottom: 1px dashed #D7BA8E"><a href="ImportantCaseList.aspx">
                    <img alt="" src="img/x.jpg" width="308px;" height="150px;" /></a> </span>
                <ul>
                    <%System.Data.DataTable dt4 = this.GetImportantCase(3);%>
                    <% 
                        for (int i = 0; i < dt4.Rows.Count; i++)
                        {
                            string num4 = "num" + (i + 1);%>
                    <li class="<%=num4%>"><a href="ImportantCaseShow.aspx?Id=<%=dt4.Rows[i]["Id"]%>"
                        target="_blank">
                        <%=dt4.Rows[i]["ITitle"]%></a></li>
                    <%}%>
                </ul>
            </div>
            <div class="f1">
                <h3>
                    科学研究</h3>
                <span style="width: 308px; height: 150px; border-bottom: 1px dashed #D7BA8E"><a href="ScienceList.aspx">
                    <img alt="" src="img/kxyj1.jpg" width="308px;" height="150px;" /></a> </span>
                <ul>
                    <%System.Data.DataTable dt5 = this.GetScience(3);%>
                    <% 
                        for (int i = 0; i < dt5.Rows.Count; i++)
                        {
                            string num5 = "num" + (i + 1);%>
                    <li class="<%=num5%>"><a href="ScienceShow.aspx?Id=<%=dt5.Rows[i]["Id"]%>" target="_blank">
                        <%=dt5.Rows[i]["STitle"]%></a></li>
                    <%}%>
                </ul>
            </div>
            <div class="f2">
                <h3>
                    科普园地</h3>
                <span style="width: 308px; height: 150px; border-bottom: 1px dashed #D7BA8E"><a href="ScienceField.aspx">
                    <img alt="" src="img/kp3.gif" width="308px;" height="150px;" /></a> </span>
                <ul>
                    <%System.Data.DataTable dt6 = this.GetScienceField(3);%>
                    <% 
                        for (int i = 0; i < dt6.Rows.Count; i++)
                        {
                            string num6 = "num" + (i + 1);%>
                    <li class="<%=num6%>"><a href="ScienceFieldShow.aspx?Id=<%=dt6.Rows[i]["Id"]%>" target="_blank">
                        <%=dt6.Rows[i]["FTitle"]%></a></li>
                    <%}%>
                </ul>
            </div>
        </div>
        <!--底部轮换图片-->
        <table class="firstPag_bottom" align="center">
            <tr>
                <td height="120px;" align="center" valign="middle" class="bk1">
                    <table width="962px;" height="120px;" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td height="120px">
                                <span class="zt2">
                                    <div id="Roll20124327212812" style="overflow: hidden; height: 120px; width: 962px;">
                                        <table align="left" cellpadding="0" cellspacing="0" border="0">
                                            <tr>
                                                <td id="Roll201243272128121">
                                                    <table width="100%" height="100%" border="0">
                                                        <tr>
                                                            <td style="text-align: center">
                                                                <div class="img">
                                                                    <a href="#" title="">
                                                                        <img src="img/sydblh/1.jpg" border="0" alt="" width="204" height="135px;" align="absmiddle" /></a></div>
                                                                <div class="t">
                                                                    <a class="zt2" href="#" title=""></a>
                                                                </div>
                                                            </td>
                                                            <td style="text-align: center">
                                                                <div class="img">
                                                                    <a href="#" title="">
                                                                        <img src="img/sydblh/2.jpg" border="0" alt="" width="204" height="135px;" align="absmiddle" /></a></div>
                                                                <div class="t">
                                                                    <a class="zt2" href="#" title=""></a>
                                                                </div>
                                                            </td>
                                                            <td style="text-align: center">
                                                                <div class="img">
                                                                    <a href="#" title="">
                                                                        <img src="img/sydblh/3.jpg" border="0" alt="" width="204" height="135px;" align="absmiddle" /></a></div>
                                                                <div class="t">
                                                                    <a class="zt2" href="#" title=""></a>
                                                                </div>
                                                            </td>
                                                            <td style="text-align: center">
                                                                <div class="img">
                                                                    <a href="#" title="">
                                                                        <img src="img/sydblh/4.jpg" border="0" alt="" width="204" height="135px;" align="absmiddle" /></a></div>
                                                                <div class="t">
                                                                    <a class="zt2" href="#" title=""></a>
                                                                </div>
                                                            </td>
                                                            <td style="text-align: center">
                                                                <div class="img">
                                                                    <a href="#" title="">
                                                                        <img src="img/sydblh/5.jpg" border="0" alt="" width="204" height="135px;" align="absmiddle" /></a></div>
                                                                <div class="t">
                                                                    <a class="zt2" href="#" title=""></a>
                                                                </div>
                                                            </td>
                                                            <td style="text-align: center">
                                                                <div class="img">
                                                                    <a href="#" title="">
                                                                        <img src="img/sydblh/6.jpg" border="0" alt="" width="204" height="135px;" align="absmiddle" /></a></div>
                                                                <div class="t">
                                                                    <a class="zt2" href="#" title=""></a>
                                                                </div>
                                                            </td>
                                                            <td style="text-align: center">
                                                                <div class="img">
                                                                    <a href="#" title="">
                                                                        <img src="img/sydblh/7.jpg" border="0" alt="" width="204" height="135px;" align="absmiddle" /></a></div>
                                                                <div class="t">
                                                                    <a class="zt2" href="#" title=""></a>
                                                                </div>
                                                            </td>
                                                            <td style="text-align: center">
                                                                <div class="img">
                                                                    <a href="#" title="">
                                                                        <img src="img/sydblh/8.jpg" border="0" alt="" width="204" height="135px;" align="absmiddle" /></a></div>
                                                                <div class="t">
                                                                    <a class="zt2" href="#" title=""></a>
                                                                </div>
                                                            </td>
                                                            <td style="text-align: center">
                                                                <div class="img">
                                                                    <a href="#" title="">
                                                                        <img src="img/sydblh/9.jpg" border="0" alt="" width="204" height="135px;" align="absmiddle" /></a></div>
                                                                <div class="t">
                                                                    <a class="zt2" href="#" title=""></a>
                                                                </div>
                                                            </td>
                                                            <td style="text-align: center">
                                                                <div class="img">
                                                                    <a href="#" title="">
                                                                        <img src="img/sydblh/10.jpg" border="0" alt="" width="204" height="135px;" align="absmiddle" /></a></div>
                                                                <div class="t">
                                                                    <a class="zt2" href="#" title=""></a>
                                                                </div>
                                                            </td>
                                                            <td style="text-align: center">
                                                                <div class="img">
                                                                    <a href="#" title="">
                                                                        <img src="img/sydblh/11.jpg" border="0" alt="" width="204" height="135px;" align="absmiddle" /></a></div>
                                                                <div class="t">
                                                                    <a class="zt2" href="#" title=""></a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td id="Roll201243272128122">
                                                </td>
                                            </tr>
                                        </table>
                                    </div>

                                    <script laguage="javascript" type="text/javascript">
		                           <!--
			                        var leftspeed20124327212812 = 30;
			                        document.getElementById("Roll201243272128122").innerHTML = document.getElementById("Roll201243272128121").innerHTML;
			                        function MarqueeLeft20124327212812(){
			                        if(document.getElementById("Roll201243272128122").offsetWidth-document.getElementById("Roll20124327212812").scrollLeft<=0)
			                        document.getElementById("Roll20124327212812").scrollLeft-=document.getElementById("Roll201243272128121").offsetWidth
			                        else{
			                         document.getElementById("Roll20124327212812").scrollLeft++
			                        }}
			                        var MyMarleft20124327212812 = setInterval(MarqueeLeft20124327212812, leftspeed20124327212812)
			                        document.getElementById("Roll20124327212812").onmouseover=function() {clearInterval(MyMarleft20124327212812)}
			                        document.getElementById("Roll20124327212812").onmouseout=function() {MyMarleft20124327212812=setInterval(MarqueeLeft20124327212812,leftspeed20124327212812)}
			                        //-->
                                    </script>

                                </span>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <!--所获荣誉-->
        <%--<div class="con_06_1">
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0"
                width="980px" height="105px">
                <param name="movie" value="flash/ban.swf" />
                <param name="quality" value="high" />
                <param name="wmode" value="opaque">
                <embed src="flash/ban.swf" quality="high" wmode="Opaque" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash"
                    type="application/x-shockwave-flash" width="969" height="105"></embed>
            </object>
        </div>--%>
    </div>
    <div style="clear: both">
    </div>
    <!--Content结束-->
    <!--footer开始-->
    <uc1:Footer ID="Footer1" runat="server" />
    <!--footer结束-->
    </form>
</body>

<script type="text/javascript" src="js/jquery-1.3.1.js"></script>

<script type="text/javascript" src="js/Main.js"></script>

<!-- Baidu Button BEGIN -->

<script type="text/javascript" id="bdshare_js" data="type=slide&img=2&pos=right"></script>

<script type="text/javascript" id="bdshell_js"></script>

<script type="text/javascript">
	var bds_config = {"bdTop":83};
	document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + new Date().getHours();
</script>

<!-- Baidu Button END -->

<script type="text/javascript">
SetColumn("sy");


//专家
var h_roller_speed_dzcp=55
roller_temp_pro.innerHTML=roller_pro_content.innerHTML
function H_Roller_Marquee_dzcp(){
if(roller_temp_pro.offsetWidth-roller_pro.scrollLeft<=0)
roller_pro.scrollLeft-=roller_pro_content.offsetWidth
else{
roller_pro.scrollLeft++
}
}
var h_roller_variable_dzcp=setInterval(H_Roller_Marquee_dzcp,h_roller_speed_dzcp)
roller_pro.onmouseover=function() {clearInterval(h_roller_variable_dzcp)}
roller_pro.onmouseout=function() {h_roller_variable_dzcp=setInterval(H_Roller_Marquee_dzcp,h_roller_speed_dzcp)}
</script>

</html>
