<%@ page language="C#" autoeventwireup="true" inherits="DoctorList, App_Web_wbiuerbv" %>

<%@ Register Src="UserControl/Footer.ascx" TagName="Footer" TagPrefix="uc1" %>
<%@ Register Src="UserControl/Header.ascx" TagName="Header" TagPrefix="uc2" %>
<%@ Register Src="UserControl/Left.ascx" TagName="Left" TagPrefix="uc3" %>
<%@ Register Src="Admin/UserControls/Paging.ascx" TagName="Paging" TagPrefix="uc4" %>
<%@ Register Src="Admin/UserControls/DDLControl.ascx" TagName="DDLControl" TagPrefix="uc5" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>医生风采</title>
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
            <div>
                <div class="rightt_top">
                    <div class="le">
                        <img src="img/munbtn/neir_r1_c6.jpg" /></div>
                    <div class="zi">
                        专家介绍</div>
                    <div class="rg">
                        <img src="img/munbtn/neir_r1_c14.jpg" /></div>
                </div>
            </div>
            <div style="min-height: 500px;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="jianj1" style="margin: 5px">
                    <tr>
                        <td>
                            <strong>姓名：</strong><input type="text" id="DName" style="width: 100px;" runat="server" />
                            &nbsp;<strong>科室：</strong>
                            <uc5:DDLControl ID="DDLControl1" runat="server" TableName="H_Offic" TextValue="Id"
                                TextFild="OName" SqlWhere="" />
                            &nbsp;<%--<input name="ctl00$Content$EDept" type="text" id="ctl00_Content_EDept"
                                style="width: 100px;" />--%>
                            &nbsp;<asp:Button ID="btn_Search" runat="server" Text="搜索" />
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellpadding="0" cellspacing="10" class="jianj1">
                    <tr>
                        <td width="25%" style="width: 100%">
                            <asp:DataList ID="DataList1" runat="server" Width="636px">
                                <ItemTemplate>
                                    <table width="100%" border="0" cellspacing="5" cellpadding="0" style="border-bottom: 1px dashed;">
                                        <tr>
                                            <td width="9%">
                                                <a href="DoctorShow.aspx?Id=<%# Eval("Id")%>">
                                                    <img src="<%# Eval("ImgURL")%>" width="100" height="123" border="0" /></a>
                                            </td>
                                            <td width="91%" style="margin: 10px; padding: 20px;">
                                                <span><a href="DoctorShow.aspx?Id=<%# Eval("Id")%>" style="font-size: 20px;">
                                                    <%# Eval("DName")%></a>
                                                    <%# Eval("Sex")%>
                                                    <%# Eval("Duty")%>
                                                    <%# Eval("Position")%></span><br />
                                                出诊时间：<%# Eval("WorkTime")%>
                                                <br />
                                                <%# (Eval("Description").ToString().Length < 25) ? Eval("Description").ToString() : Eval("Description").ToString().Substring(0, 25) + "..."%>
                                                <%--<%# Eval("Description")%>--%><a href="DoctorShow.aspx?Id=<%# Eval("Id")%>" class="hbt">
                                                    [详细介绍]</a><br />
                                                擅长：<%# Eval("GoodAt")%>
                                            </td>
                                        </tr>
                                        <%--<tr>
                                            <td colspan="2" valign="top">
                                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td background="/img/DIAN.jpg">
                                                            <img src="/img/DIAN.jpg" width="3" height="1" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>--%>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            <div>
                                <uc4:Paging ID="Paging1" runat="server" tableName="Doctors" showField="Id,DName,Sex,Duty,Position,WorkTime,GoodAt,Description,ImgURL"
                                    selFiled="Id,DName,(Select dbo.GetSex(Sex)) as Sex,Duty,Position,WorkTime,GoodAt,Description,replace(ImgURL,'~/','') as ImgURL"
                                    keyFiled="Id" />
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
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

<script type="text/javascript">
//栏目切换
SetColumn("ysfc");
</script>

</html>
