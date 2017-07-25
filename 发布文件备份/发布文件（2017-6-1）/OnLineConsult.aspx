<%@ page language="C#" autoeventwireup="true" inherits="OnLineConsult, App_Web_wbiuerbv" %>

<%@ Register Src="UserControl/Footer.ascx" TagName="Footer" TagPrefix="uc1" %>
<%@ Register Src="UserControl/Header.ascx" TagName="Header" TagPrefix="uc2" %>
<%@ Register Src="UserControl/Left.ascx" TagName="Left" TagPrefix="uc3" %>
<%@ Register Src="Admin/UserControls/Paging.ascx" TagName="Paging" TagPrefix="uc4" %>
<%@ Register Src="Admin/UserControls/RadioControl.ascx" TagName="RadioControl" TagPrefix="uc5" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>在线咨询</title>
    <link type="text/css" rel="stylesheet" href="css/main.css" />
    <link type="text/css" rel="stylesheet" href="css/page.css" />
    <link href="css/FPage.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" type="image/x-ico" href="img/7.ico" media="screen" />
</head>
<body>
    <form id="form1" runat="server">
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
                    在线咨询</div>
                <div class="rg">
                    <img src="img/munbtn/neir_r1_c14.jpg" /></div>
            </div>
            <div class="segment">
                <!--在线咨询-->
                <div class="zxzx">
                    <fieldset>
                        <legend>请输入您的信息，我们将全程为您服务！</legend>
                        <p>
                            姓&nbsp;&nbsp;&nbsp;&nbsp;名:<input type="text" id="txtname" name="name" value="" runat="server" /><em
                                style="color: red;">*</em></p>
                        <div style="clear: both; margin-left: 30px; width: 600px;">
                            <div style="float: left">
                                性&nbsp;&nbsp;&nbsp;&nbsp;别:</div>
                            <div style="float: left">
                                <uc5:RadioControl ID="RadioControl1" runat="server" IsText="男" NoText="女" />
                            </div>
                        </div>
                        <div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;龄:<input type="text" id="txtage"
                                value="" runat="server" /></div>
                        <p>
                            电&nbsp;&nbsp;&nbsp;&nbsp;话:<input type="text" id="txtphone" value="" runat="server" /></p>
                        <p>
                            邮&nbsp;&nbsp;&nbsp;&nbsp;件:<input type="text" id="txtemail" name="email" value=""
                                runat="server" /></p>
                        <p>
                            发病时间:<input type="text" id="txtbeginTime" name="beginTime" value="" runat="server" /><em
                                style="color: red;">*</em> 持续时间：<input type="text" id="txtcontinueTime" value=""
                                    runat="server" /><em style="color: red;">*</em>
                        </p>
                        <p>
                            病&nbsp;&nbsp;&nbsp;&nbsp;情:<textarea id="txtbq" name="bq" rows="5" cols="60" runat="server"></textarea></p>
                        <p>
                            治疗经过:<textarea id="txtzljg" rows="5" cols="60" runat="server"></textarea></p>
                        <p style="text-align: center;">
                            <asp:Button runat="server" Text="提交" ID="btnSubmit" OnClientClick="return OnLineConsult()" />
                            <asp:Button runat="server" Text="重置" ID="btnReset" />
                        </p>
                    </fieldset>
                </div>
                <!--显示在线咨询-->
                <div class="ShowZxzx">
                    <fieldset style="border: 1px dashed red">
                        <legend style="width: 80px; border: 0px dashed #ff9966; text-align: left; font-family: arial;
                            font-weight: bold; padding-left: 20px;">医生回复</legend>
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <div class="ShowZxzx_f0">
                                    <p>
                                        留&nbsp;言&nbsp;者：<label><%# Eval("CName")%></label>
                                    </p>
                                    <p>
                                        留言时间：<label><%# Eval("ConsultTime")%></label></p>
                                    <p>
                                        留言内容：<label><%# Eval("DiseaseDes")%></label></p>
                                    <p>
                                        <strong>专家回复：</strong><label><%# Eval("ReplyContent")%></label></p>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <div>
                            <uc4:Paging ID="Paging1" runat="server" tableName="OnLineConsult" showField="Id,CName,ConsultTime,DiseaseDes,ReplyContent"
                                selFiled="Id,CName,(select dbo.GetInTime(ConsultTime)) as ConsultTime,DiseaseDes,ReplyContent"
                                keyFiled="Id" />
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
        <div style="clear: both;">
        </div>
        <!--Content结束-->
        <!--footer开始-->
        <uc1:Footer ID="Footer1" runat="server" />
        <!--footer结束-->
    </form>
</body>

<script type="text/javascript" src="js/jquery-1.3.1.js"></script>

<script type="text/javascript" src="js/Main.js"></script>

<script type="text/javascript" src="js/jquery.validate.js"></script>

<script type="text/javascript" src="Admin/Js/Check.js"></script>

<script type="text/javascript">
//栏目切换
SetColumn("zxzx");
</script>

</html>
