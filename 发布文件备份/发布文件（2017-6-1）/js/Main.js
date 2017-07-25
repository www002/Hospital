// JavaScript Document

//轮换
function sel(a, b, c, d, e, f) {
	for (i = 1; i <= d; i++) {
		document.getElementById(b + i).className = e;
		document.getElementById(c + i).style.display = "none";
	}
	document.getElementById(b + a).className = f;
	document.getElementById(c + a).style.display = "block";
}

//QQ
//<![CDATA[
$(function(){
  var tips;
  var pos; 
  var theTop = 290; 
  var old = theTop;
  function initFloatTips() {
	tips = document.getElementById('QQFloat');
	moveTips();
  };
  function moveTips() {
	var tt=50;
	if (window.innerHeight) {
	  pos = window.pageYOffset
	}
	else if (document.documentElement && document.documentElement.scrollTop) {
	  pos = document.documentElement.scrollTop
	}
	else if (document.body) {
	  pos = document.body.scrollTop;
	} 
	pos=pos-tips.offsetTop+theTop;
	pos=tips.offsetTop+pos/10;
   
	if (pos < theTop) pos = theTop;
	if (pos != old) {
	  tips.style.top = pos+"px";
	  tt=10;
	//alert(tips.style.top);
	}
   
	old = pos;
	setTimeout(moveTips,tt);
  }
  //!]]>
  initFloatTips();
});





function SetColumn(id){  
     $(".nav_content li[id="+id+"]")
        .addClass("current")
        .siblings()
        .removeClass("current");    
}

 

$(function(){
    $("#phone").mouseover(function(){
         $("#ewmPhone").fadeIn(20);
    });
    $("#phone").mouseout(function(){
         $("#ewmPhone").fadeOut(1000);
    });
})