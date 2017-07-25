 
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//判断是否为空
function Check(id,str){
    var vale=$(id).val();
    if(vale==""){
        alert(str);
        $(id).select();
        return false;
    }
}

//判断下拉列表
function CheckDLL(id, str) {
    var v = $(id).val();
    if (v == "0") {
        alert(str);
        $(id).select();
        return false;
    }
}

//判断是否相等
function CheckEqual(oldId,newId,str){
    var vale1=$(oldId).val();
    var vale2=$(newId).val();
    if(vale1!=vale2){
        alert(str);
        $(newId).select();
        return false;
    }
}
//判断邮箱
function checkEmail(id,str){
var reg=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
var vale=$(id).val();
    if(vale!="" && !reg.test(vale)){
    alert(str);
    $(id).select();
    return false;
    }
}
//判断整数
function checkInt(id,str){
    var reg=/^(0|[1-9]\d*)$/;
    var vale=$(id).val();
    if(vale!="" && !reg.test(vale)){
    alert(str);
    $(id).select();
    return false;
    }
}
//判断小数(正浮点数)
function checkDecimal(id,str){
//var reg=/^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$/;
    var reg=/^[+]?\d+(.\d+)?$/;
    var vale=$(id).val();
    if(vale!="" && !reg.test(vale)){
    alert(str);
    $(id).select();
    return false;
    }
}
//判断ISBN：13位数字
function checkISBN(id,str){
var reg=/^\d{13}$/; 
    var vale=$(id).val();
    if(vale!="" && !reg.test(vale)){
    alert(str);
    $(id).select();
    return false;
    }
}
//判断电话号码:匹配形式如 0511-4405222 或 021-87888822
function checkPhone(id,str){
    var reg=/^\d{3}-\d{8}|\d{4}-\d{7}$/;
//((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$) 
    var vale=$(id).val();
    if(vale!="" && !reg.test(vale)){
    alert(str);
    $(id).select();
    return false;
    }
}
//判断QQ
function checkQQ(id,str){
    var reg=/^\d{5,10}$/; 
    var vale=$(id).val();
    if(vale!="" && !reg.test(vale)){
    alert(str);
    $(id).select();
    return false;
    }
}
//判断日期的格式
function checkDateTime(id,str){
    var reg=/^(\d{1,4})-(\d{1,2})-(\d{1,2})$/;
    var vale=$(id).val();
    if(vale!="" && !reg.test(vale)){
    alert("日期格式不正确！");
    $(id).select();
    return false;
    }
}
 
//判断单选是否选择
function CheckRadioSelect(id1,id2,str){
    var vale1=$(id1);
    var vale2=$(id2);
    if(vale1.attr("checked") ==false&&vale2.attr("checked") ==false){
        alert(str);     
        return false;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//新闻/公告
function  New(){
    if(Check("#txtTitle","标题不能为空！")==false){
        return false;
    }
    if(checkInt("#txtViewUser","人气指数必须为数字！")==false){
        return false;
    }
    var oEditor = FCKeditorAPI.GetInstance("FCKeditor1");
    if(oEditor.GetXHTML(true)==""){
        alert("正文不能为空！");
        return false;
    }
}


//医院科室
function InHospitalOdffice(){
    if(Check("#txtOName","科室名称不能为空！")==false){
        return false;
    }
    if(checkInt("#txtViewUser","人气指数必须为数字！")==false){
        return false;
    }
}


//中医特色
function InChinaDoctor(){
    if(Check("#txtDName","名称不能为空！")==false){
        return false;
    }
    if(checkInt("#txtViewUser","人气指数必须为数字！")==false){
        return false;
    }
    var oEditor = FCKeditorAPI.GetInstance("FCKeditor1");
    if(oEditor.GetXHTML(true)==""){
        alert("描述不能为空！");
        return false;
    }
}

//典型病例
function  InImportantCase(){
    if(Check("#txtTitle","标题不能为空！")==false){
        return false;
    }
    if(checkInt("#txtViewUser","人气指数必须为数字！")==false){
        return false;
    }
    var oEditor = FCKeditorAPI.GetInstance("FCKeditor1");
    if(oEditor.GetXHTML(true)==""){
        alert("描述不能为空！");
        return false;
    }
}

//科学研究
function  InScience(){
    if(Check("#txtTitle","标题不能为空！")==false){
        return false;
    }
    if(checkInt("#txtViewUser","人气指数必须为数字！")==false){
        return false;
    }
    var oEditor = FCKeditorAPI.GetInstance("FCKeditor1");
    if(oEditor.GetXHTML(true)==""){
        alert("描述不能为空！");
        return false;
    }
}


//科学研究
function  InHospitalUser(){
    if(Check("#txtTitle","姓名不能为空！")==false){
        return false;
    }
    if(Check("#txtpwd","密码不能为空！")==false){
        return false;
    }   
}




//科学研究
function  OnLineConsult(){
    if(Check("#txtname","姓名不能为空！")==false){
        return false;
    }
    if(Check("#txtage","年龄不能为空！")==false){
        return false;
    } 
    if(checkInt("#txtage","年龄必须为数字！")==false){
        return false;
    } 
    
    if(Check("#txtbeginTime","发病时间不能为空！")==false){
        return false;
    }   
    if(Check("#txtcontinueTime","持续时间不能为空！")==false){
        return false;
    }  
    if(Check("#txtbq","病情不能为空！")==false){
        return false;
    }   
}
 