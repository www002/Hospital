<%@ page language="C#" autoeventwireup="true" inherits="Admin_OnlineConsult, App_Web_tgvvesi-" %>
 
<%@ Register src="UserControls/Paging.ascx" tagname="Paging" tagprefix="uc1" %>
<%@ Register src="UserControls/RadioControl.ascx" tagname="RadioControl" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>在线咨询</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/GVStyle.css" rel="stylesheet" type="text/css" />
    <link href="css/PageStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>在线咨询</h1>
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
                <td class="tds">
                    <input type="text" id="txtTitle" runat="server" class="txt" />
                </td>
                <td class="tdName">
                    性别：
                </td>
                <td class="td">
                     <uc3:RadioControl ID="RadioControl3" runat="server" IsText="男" NoText="女" />
                </td>
                <td rowspan="3" class="tdBtnBg">
                    <asp:Button ID="btnSel" runat="server" Text="查询"/>
                </td>
            </tr>
            <tr>
                <td class="tdName">
                    回复人：
                </td>
                <td class="tds">
                    <input type="text" id="txtReplyUser" runat="server" class="txt" />
                </td>
                <td class="tdName">
                    是否回复：
                </td>
                <td class="td">
                     <uc3:RadioControl ID="RadioControl2" runat="server" IsText="是" NoText="否" />
                </td>
                                
                <td class="tdName">
                    是否显示：
                </td>
                <td class="td">                    
                    <uc3:RadioControl ID="RadioControl1" runat="server" IsText="是" NoText="否" />
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
                <asp:BoundField HeaderText="姓名" DataField="CName" />
                <asp:BoundField HeaderText="性别" DataField="Sex" />
                <asp:BoundField HeaderText="年龄" DataField="Age" />
                <asp:BoundField HeaderText="电话" DataField="Phone" />
                <asp:BoundField HeaderText="Email" DataField="Email" />
                <asp:BoundField HeaderText="发病时间" DataField="DiseaseTime" /> 
                <asp:BoundField HeaderText="持续时间" DataField="ContinueTime" /> 
                <asp:BoundField HeaderText="治疗过程" DataField="Cure" />   
                <asp:BoundField HeaderText="是否回复" DataField="IsReply" />                
                <asp:BoundField HeaderText="回复人" DataField="ReplayDoctor" />
                <asp:BoundField HeaderText="回复时间" DataField="ReplayTime" />
                <asp:BoundField HeaderText="回复内容" DataField="ReplyContent" />
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
   
        <uc1:Paging ID="Paging1" runat="server" tableName="OnLineConsult" showField="Id,CName,Sex,Age,Phone,Email,DiseaseTime,ContinueTime,Cure,ReplayDoctor,ReplayTime,ReplyContent,IsReply,IsUses" 
                selFiled="Id,CName,(select dbo.GetSex(Sex)) as Sex,Age,Phone,Email,DiseaseTime,ContinueTime,(select dbo.GetSubstring(Cure,10)) as Cure,                           
                            (select dbo.GetInUser(ReplayDoctor)) as ReplayDoctor, (select dbo.GetInTime(ReplayTime)) as ReplayTime,
                            (select dbo.GetIsUse(IsReply)) as IsReply,
                            (select dbo.GetSubstring(ReplyContent,10)) as ReplyContent,
                            (select dbo.GetIsUse(IsUse)) as IsUses"
            keyFiled="Id"/>
        <br />
       
    </div>
    </form>
</body>
</html>