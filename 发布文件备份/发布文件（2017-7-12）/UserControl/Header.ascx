<%@ control language="C#" autoeventwireup="true" inherits="UserControl_Header, App_Web_4iargcg1" %>
<!--topbar开始-->
<div class="topbar">
    <div class="left">
        <a id="btn_setIndex" href="javascript:;" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.wzy.com/');">
            设为首页</a> <a id="btn_addFavorite" href="javascript:window.external.AddFavorite('http://www.jsxswsy.com/','稷山县西社镇中心卫生院')">
                添加收藏</a> <a id="phone">手机站</a>
    </div>
    <div class="right">
        <img id="Img1" src="../img/munbtn/xl.jpg" runat="server" style="vertical-align: middle"
            alt="" />
        <a target="_blank" style="cursor: hand" href="http://weibo.com/u/1896818274/home?wvr=5&lf=reg"
            title="点击进入官方新浪微博" rel="nofollow">新浪微博</a>
        <img id="Img2" src="../img/munbtn/tx.jpg" runat="server" style="vertical-align: middle"
            alt="" />
        <a target="_blank" style="cursor: hand" href="http://t.qq.com/dubuguleng" title="点击进入官方腾讯微博"
            rel="nofollow">腾讯微博</a>
    </div>
</div>
<!--二维码-->
<div id="ewmPhone" style="z-index: 1; position:absolute; left:390px; top:28px; display:none;" >
     <img src="img/munbtn/rwm.png" alt= ""  style="width:100px; height:100px;"/>
</div>
<!--topbar结束-->


<!--头部开始-->
<div class="header">
    <div class="topImg">
        <img src="img/zytp.jpg" alt="" />
    </div>
    <!--nav,start-->
    <div class="menu_navcc">
        <div class="menu_nav">
            <ul class="nav_content">
                <li id="sy" class="current"><a href="Default.aspx"><span>首页</span></a></li>
                <li id="yygk"><a href="HospitalMeg.aspx"><span>医院概况</span></a></li>
                <li id="yyks"><a href="HospitalOfficList.aspx"><span>医院科室</span></a></li>
                <li id="ysfc"><a href="DoctorList.aspx"><span>医生风采</span></a></li>
                <li id="zyts"><a href="ChinaDoctorList.aspx"><span>中医特色</span></a></li>
                <li id="dxbl"><a href="ImportantCaseList.aspx"><span>典型病例</span></a></li>
                <li id="kxyj"><a href="ScienceList.aspx"><span>科学研究</span></a></li>
                <li id="kpyd"><a href="ScienceFieldList.aspx"><span>科普园地</span></a></li>
                <li id="zxzx"><a href="OnLineConsult.aspx"><span>在线咨询</span></a></li>
                <li id="lylx"><a href="HospitalAdd.aspx"><span>来院路线</span></a></li>
            </ul>
            <div class="menu_nav_right">
            </div>
        </div>
    </div>
    <!--nav,end-->
</div>
<!--头部结束-->
<script type="text/javascript">

</script>