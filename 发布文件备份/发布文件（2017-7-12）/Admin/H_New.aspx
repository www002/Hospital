<%@ page language="C#" autoeventwireup="true" inherits="Admin_H_New, App_Web_tgvvesi-" %>
 
<%@ Register src="UserControls/Paging.ascx" tagname="Paging" tagprefix="uc1" %>
<%@ Register src="UserControls/RadioControl.ascx" tagname="RadioControl" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>新闻公告</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/GVStyle.css" rel="stylesheet" type="text/css" />
    <link href="css/PageStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>新闻公告</h1>
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
                    标题：
                </td>
                <td class="tds">
                    <input type="text" id="txtTitle" runat="server" class="txt" />
                </td>
                 
                <td rowspan="3" class="tdBtnBg">
                    <asp:Button ID="btnSel" runat="server" Text="查询"/>
                    <asp:Button ID="btnIn" runat="server" Text="添加" />
                </td>
            </tr>
            <tr>
                <td class="tdName">
                    新闻/公告：
                </td>
                <td class="td">
                     <uc3:RadioControl ID="RadioControl2" runat="server" IsText="新闻" NoText="公告" />
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
                <asp:BoundField HeaderText="标题" DataField="Title" />
                <asp:BoundField HeaderText="副标题" DataField="SubHead" />
                <asp:BoundField HeaderText="正文" DataField="MainBody" />
                <asp:BoundField HeaderText="新闻/公告" DataField="IsNews" />
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
   
        <uc1:Paging ID="Paging1" runat="server" tableName="H_new" showField="Id,Title,SubHead,MainBody,IsNews,ViewUser,InUsers,InTimes,IsUses" 
                selFiled="Id,Title,SubHead,(select dbo.GetSubstring(MainBody,10)) as MainBody,(select dbo.GetIsMeg(IsNew,'新闻','公告')) as IsNews,
                            ViewUser,(select dbo.GetInUser(InUser)) as InUsers,
                            (select dbo.GetInTime(InTime)) as InTimes,
                            (select dbo.GetIsUse(IsUse)) as IsUses"
            keyFiled="Id"/>
        <br />
       
    </div>
    </form>
</body>
</html>