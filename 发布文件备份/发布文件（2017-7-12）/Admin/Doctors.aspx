﻿<%@ page language="C#" autoeventwireup="true" inherits="Admin_Doctors, App_Web_tgvvesi-" %>

<%@ Register src="UserControls/Paging.ascx" tagname="Paging" tagprefix="uc1" %>
<%@ Register src="UserControls/RadioControl.ascx" tagname="RadioControl" tagprefix="uc3" %>
<%@ Register src="UserControls/DDLControl.ascx" tagname="DDLControl" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>医生风采</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/GVStyle.css" rel="stylesheet" type="text/css" />
    <link href="css/PageStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>医生风采</h1>
        <div style="width: 100%; height: 1%; background-color: white; text-align: center">
            <hr />
        </div>
        <table class="tab">
            <tr>
                <td class="tdName">
                    编号：
                </td>
                <td class="td">
                    <input type="text" id="txtId" runat="server" class="txt" onblur="Id()" />
                </td>
                <td class="tdName">
                    姓名：
                </td>
                <td class="td">
                    <input type="text" id="txtDName" runat="server" class="txt" />
                </td>
                <td class="tdName">
                    科室：
                </td>
                <td class="td">                        
                    <uc2:DDLControl ID="DDLControl1" runat="server"  TableName="H_Offic" TextValue="Id" TextFild="OName" SqlWhere=""/>                    
                </td>       
                <td class="tdName">
                    性别：
                </td>
                <td class="td">                    
                    <uc3:RadioControl ID="RadioControl1" runat="server" IsText="男" NoText="女" />
                </td>       
            </tr>
            <tr>
                <td class="tdName">
                    职称：
                </td>
                <td class="td">
                    <input type="text" id="txtDuty" runat="server" class="txt" />
                </td>
                <td class="tdName">
                    职务：
                </td>
                <td class="td">
                    <input type="text" id="txtPosition" runat="server" class="txt" />
                </td>                
                <td class="tdName">
                    擅长：
                </td>
                <td class="td">
                    <input type="text" id="txtGoodAt" runat="server" class="txt" />
                </td>
                <td class="tdName">
                    是否显示：
                </td>
                <td class="td">                    
                    <uc3:RadioControl ID="RadioControl2" runat="server" IsText="是" NoText="否" />
                </td>       
            </tr>
            <tr>
                <td  colspan="8" class="tdBtnBg">
                    <asp:Button ID="btnSel" runat="server" Text="查询"/>
                    <asp:Button ID="btnIn" runat="server" Text="添加" />
                </td>
            </tr>
        </table>
        <div style="width: 100%; height: 1%; background-color: white; text-align: center">
            <hr />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataRowStyle-HorizontalAlign="Center"
            Width="100%" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound">
            <Columns>   
                <asp:BoundField HeaderText="编号" DataField="Id" />
                <asp:BoundField HeaderText="姓名" DataField="DName" />
                <asp:TemplateField HeaderText="医生照片" ItemStyle-Width="190px">
                    <ItemTemplate>
                        <asp:Image ID="img1" ImageUrl='<%#Eval("ImgURL") %>' runat="server" AlternateText="image lost" width="180px" height="120px"/>                      
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="性别" DataField="Sex" />
                
                <asp:BoundField HeaderText="职称" DataField="Duty" />
                <asp:BoundField HeaderText="职位" DataField="Position" />
                <asp:BoundField HeaderText="工作时间" DataField="WorkTime" />
                <asp:BoundField HeaderText="擅长" DataField="GoodAt" />
                <asp:BoundField HeaderText="介绍" DataField="Description" />
                <asp:BoundField HeaderText="人气指数" DataField="ViewUser" />
                <asp:BoundField HeaderText="添加人" DataField="InUsers" />
                <asp:BoundField HeaderText="添加时间" DataField="InTimes" />
                <asp:BoundField HeaderText="是否显示" DataField="IsUses" />
                <asp:TemplateField HeaderText="操作">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImbtnUpdate" runat="server" ImageUrl="Image/bt_edit.gif"
                            CommandArgument='<%# Eval("Id") %>' CommandName="Edit" ToolTip="修改" />
                        <asp:ImageButton ID="ImbtnDelete" runat="server" ImageUrl="Image/delete.gif" CommandArgument='<%# Eval("Id") %>'
                            CommandName="Del" ToolTip="删除" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle CssClass="FooterStyle" />
            <RowStyle CssClass="RowStyle" />
            <PagerStyle CssClass="PagerStyle" />
            <SelectedRowStyle CssClass="SelectedRowStyle" />
            <HeaderStyle CssClass="HeaderStyle" />
            <EditRowStyle CssClass="EditRowStyle" />
            <AlternatingRowStyle CssClass="AlternatingRowStyle" />
        </asp:GridView>
   
        <uc1:Paging ID="Paging1" runat="server" tableName="Doctors" showField="Id,DName,ImgURL,Sex,Duty,Position,WorkTime,GoodAt,Description,ViewUser,InUsers,InTimes,IsUses" 
                selFiled="Id,DName,ImgURL,(select dbo.GetSex(Sex)) as Sex,Duty,Position,WorkTime,GoodAt,
                            (select dbo.GetSubstring(Description,10)) as Description,ViewUser,(select dbo.GetInUser(InUser)) as InUsers,
                            (select dbo.GetInTime(InTime)) as InTimes,
                            (select dbo.GetIsUse(IsUse)) as IsUses"
            keyFiled="Id"/>
        <br />
       
    </div>
    </form>
</body>
</html>