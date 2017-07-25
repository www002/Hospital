<%@ page language="C#" autoeventwireup="true" inherits="HospitalMeg, App_Web_wbiuerbv" %>

<%@ Register Src="UserControl/Footer.ascx" TagName="Footer" TagPrefix="uc1" %>
<%@ Register Src="UserControl/Header.ascx" TagName="Header" TagPrefix="uc2" %>
<%@ Register Src="UserControl/Left.ascx" TagName="Left" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>医院概况</title>
    <link type="text/css" rel="stylesheet" href="css/main.css" />
    <link type="text/css" rel="stylesheet" href="css/page.css" />
    <link rel="shortcut icon" type="image/x-ico" href="img/7.ico" media="screen" />
    <!--引用百度地图API-->
    <style type="text/css">
        html, body
        {
            margin: 0;
            padding: 0;
        }
        .iw_poi_title
        {
            color: #CC5522;
            font-size: 14px;
            font-weight: bold;
            overflow: hidden;
            padding-right: 13px;
            white-space: nowrap;
        }
        .iw_poi_content
        {
            font: 12px arial,sans-serif;
            overflow: visible;
            padding-top: 4px;
            white-space: -moz-pre-wrap;
            word-wrap: break-word;
        }
    </style>

    <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>

</head>
<body>
    <!--头部开始-->
    <uc2:Header ID="Header1" runat="server" />
    <!--头部结束-->
    <!--Content开始-->
    <div class="contentPage">
        <uc3:Left ID="Left1" runat="server" />
        <div class="rightt">
            <div class="rightt_top">
                <div class="le">
                    <img src="img/munbtn/neir_r1_c6.jpg" /></div>
                <div class="zi">
                    医院概况</div>
                <div class="rg">
                    <img src="img/munbtn/neir_r1_c14.jpg" /></div>
            </div>
            <div class="segment">
                <img src="img/yygk/中药服务楼.jpg" />
                <div class="ms">
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;<strong style="font-size: 16px;">稷山县西社镇中心卫生院，</strong>位于后稷故里原生态马首山（与云丘山相连）脚下，辖区25个自然村，
                        服务人口29171人，是一所以中医药茶饮为特色的综合性一级甲等公立医院。本院现有床位80张，主治医师3名，执业医师1名，执业助理医师6名。</p>
                    <p style="margin-bottom: 5px;">
                        &nbsp;&nbsp;&nbsp;&nbsp;南有杜仲树，北有婆婆针，原生态马首山处处充满着奇珍异草，当地草药更是奇而丰富。学海无涯，艺无止境。本院一班人员利用当地富有的地
                        理优势努力学习中医药知识，积极挖掘古代经方、民间经方，在让古老的经方发挥其简、便、效、廉的社会作用之外发挥更多的光彩。</p>
                    <div style="float: left; padding: 5px;">
                        <img src="img/yygk/yygk1.jpg" style="width: 200px; height: 150px;"></div>
                    <div style="float: left; padding: 5px;">
                        <img src="img/yygk/yygk2.jpg" style="width: 200px; height: 150px;"></div>
                    <div style="float: left; padding: 5px;">
                        <img src="img/yygk/yygk3.jpg" style="width: 200px; height: 150px;"></div>
                    <p style="margin-top: 5px; margin-bottom: 15px;">
                        &nbsp;&nbsp;&nbsp;&nbsp;本院以服务病人为核心，以中医特色为根本，继承与创新相结合，传统与现代齐发展为宗旨，利用得天独厚的地理优势，在上级领导指
                        导下大力发展中医药适宜技术，中医药工作得到了省中医药管理局领导的一致好评，尤其是本院共同研制出的圣寿茶等20种中药茶饮方剂和复元活血汤5种汤剂得到社会各界好评。</p>
                    <!--百度地图容器-->
                    <div style="width: 630px; height: 300px; border: #ccc solid 1px; float: left; background: #f8f8f8;"
                        id="dituContent">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="clear: both;">
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
SetColumn("yygk");
</script>

<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(111.020684,35.660872);//定义一个中心点坐标
        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"稷山县西社镇中心卫生院",content:"稷山县西社镇中心卫生院",point:"111.019269|35.661319",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>

</html>
