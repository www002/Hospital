function ShowHidden()                        //隐藏弹出层
{      
    document.all["divLogin"].style.display = "none";
    document.getElementById("doing").style.display="none"; 
} 
function showFloat()                    //根据屏幕的大小显示两个层 
{ 
    var range = getRange(); 
    document.all["doing"].style.display = "";
    document.all["divLogin"].style.display = "";
} 
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 
function ShowNo()                        //隐藏两个层 
{
    $("#divPaging").hide(500); 
    document.getElementById("doPaging").style.display = "none";
} 
function show1()                    //根据屏幕的大小显示两个层 
{ 
    var range = getRange();
    document.all["doPaging"].style.display = "";
    $("#divPaging").show(500);
} 
function getRange()                      //得到屏幕的大小 
{ 
      var top    = document.body.scrollTop; 
      var left    = document.body.scrollLeft; 
      var height = document.body.clientHeight; 
      var width  = document.body.clientWidth; 

      if (top==0 && left==0 && height==0 && width==0) 
      { 
        top    = document.documentElement.scrollTop; 
        left    = document.documentElement.scrollLeft; 
        height = document.documentElement.clientHeight; 
        width  = document.documentElement.clientWidth; 
      } 
      return {top:top ,left:left ,height:height ,width:width } ; 
} 





/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//快捷键的触发事件(显示或隐藏查询条件) 
document.onkeydown=function()
{ 
    var e=event.srcElement; 
    if(event.keyCode==27) 
    { 
        $(".DivSelCondition").slideToggle(800);
 
    } 
}
