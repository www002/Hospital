<%@ page language="C#" autoeventwireup="true" inherits="Admin_OnlineConsultEdit, App_Web_tgvvesi-" validaterequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="UserControls/RadioControl.ascx" TagName="RadioControl" TagPrefix="uc3" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>在线咨询答复</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>
            在线咨询答复</h1>
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
                    姓名：
                </td>
                <td class="td">
                    <input type="text" id="txtTitle" runat="server" class="txt" disabled="disabled" />
                </td>
                <td class="tdName">
                    性别：
                </td>
                <td class="td">
                    <uc3:RadioControl ID="RadioControl1" runat="server" IsText="男" NoText="女" IsUpdate="false"
                        disabled="disabled" />
                </td>
                <td class="tdName">
                    年龄：
                </td>
                <td class="tds">
                    <input type="text" id="txtAge" runat="server" class="txt" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td class="tdName">
                    电话：
                </td>
                <td class="td">
                    <input type="text" id="txtPhone" runat="server" class="txt" disabled="disabled" />
                </td>
                <td class="tdName">
                    Email：
                </td>
                <td class="td">
                    <input type="text" id="txtEmail" runat="server" class="txt" disabled="disabled" />
                </td>
                <td class="tdName">
                    发病时间：
                </td>
                <td class="td">
                    <input type="text" id="txtDiseaseTime" runat="server" class="txt" disabled="disabled" />
                </td>
                <td class="tdName">
                    持续时间：
                </td>
                <td class="td">
                    <input type="text" id="txtContinueTime" runat="server" class="txt" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>
                    病情描述：
                </td>
                <td class="td" colspan="7">
                    <textarea id="txtDiseaseDes" runat="server" class="txt" disabled="disabled"  rows="5" cols="25"></textarea>           
                </td>
            </tr>
            <tr>
                <td>
                    治疗过程：
                </td>
                <td class="td" colspan="7">
                    <textarea id="txtCure" runat="server" class="txt" disabled="disabled" rows="4" cols="25"></textarea>                     
                </td>
            </tr>
             
            <tr>
                <td>
                    <span class="span">*</span>专家回复：
                </td>
                <td colspan="5">
                    <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="400px">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td colspan="12" align="center">
                    <asp:Button ID="btnIn" runat="server" Text="回复" OnClientClick="return InOnLineConSult()" />
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
