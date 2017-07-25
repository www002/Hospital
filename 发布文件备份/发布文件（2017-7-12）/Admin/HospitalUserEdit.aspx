<%@ page language="C#" autoeventwireup="true" inherits="Admin_HospitalUserEdit, App_Web_tgvvesi-" validaterequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="UserControls/RadioControl.ascx" TagName="RadioControl" TagPrefix="uc3" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户管理</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>
            用户管理</h1>
        <div style="width: 100%; height: 1%; background-color: white; text-align: center">
            <hr />
        </div>
        <table class="tab">
            <tr>
                <td class="tdName">
                    编号：
                </td>
                <td class="td">
                    <input type="text" id="txtId" runat="server" class="txt" disabled="disabled" />
                </td>
                <td class="tdName">
                    <span class="span">*</span>姓名：
                </td>
                <td class="td">
                    <input type="text" id="txtTitle" runat="server" class="txt" />
                </td>
                <td class="tdName">
                    <span class="span">*</span>密码：
                </td>
                <td class="td">
                    <input type="password" id="txtpwd" runat="server" class="txt" />
                </td>
                <td class="tdName"> 是否启用： </td>
                <td class="td">
                    <uc3:RadioControl ID="RadioControl3" runat="server" IsText="是" NoText="否" IsUpdate="false"
                        defaultChecked="1" />
                </td>
            </tr>            
            <tr>
                <td colspan="12" align="center">
                    <asp:Button ID="btnIn" runat="server" Text="添加" OnClientClick="return InHospitalUser()" />
                    <asp:Button ID="btnReturn" runat="server" Text="返回" />
                </td>
            </tr>
        </table>
    </div>
    <input type="hidden" id="HFcurentPageNum" runat="server" />
    <input type="hidden" id="HFpageSize" runat="server" />
    <input type="hidden" id="HFsqlWhere" runat="server" />
    </form>
</body>

<script type="text/javascript" src="Js/Check.js"></script>

<script type="text/javascript" src="Js/jquery-1.3.1.js"></script>

</html>
