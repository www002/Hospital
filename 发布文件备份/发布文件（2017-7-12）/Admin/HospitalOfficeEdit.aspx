<%@ page language="C#" autoeventwireup="true" inherits="Admin_HospitalOfficeEdit, App_Web_tgvvesi-" validaterequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register src="UserControls/RadioControl.ascx" tagname="RadioControl" tagprefix="uc3" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>医院科室管理</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    .pic_text{ color:Red;}
    .pic_label { color:Gray; margin-top:5px; margin-bottom:5px;}
    .pic_image { margin:5px; float:left;}
    .pic_up{ margin-left:10px; margin-top:20px; float:left;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>医院科室管理</h1>
        <div style="width: 100%; height: 1%; background-color: white; text-align: center">
            <hr />
        </div>
        <table class="tab">
             <tr>
                <td class="tdName">
                    科室风采：
                </td>
                <td colspan="7" class="td">
                    <div class="pic_image"><asp:Image ID="pic" runat="server" Width="200px" Height="120px"/></div>
                    
                    <div class="pic_up">
                        <asp:FileUpload ID="pic_upload" runat="server" /><asp:Label ID="lbl_pic" runat="server" class="pic_text"></asp:Label>
                        <asp:Button ID="btn_upload" runat="server"  Text="上传" onclick="btn_upload_Click"/>                    
                        <div class="pic_label">上传图片格式为.jpg, .gif, .bmp,.png,图片大小不得超过8M</div>                  
                        <input type="hidden" id="hospitalOfficeImg" runat="server" />
                   </div>
                </td>
            </tr>
            <tr>
                <td class="tdName">
                    编号：
                </td>
                <td class="td">
                    <input type="text" id="txtId" runat="server" class="txt" disabled="disabled" />
                </td>
                <td class="tdName">
                    <span class="span">*</span>名称：
                </td>
                <td class="tds">
                    <input type="text" id="txtOName" runat="server" class="txt"/>
                </td>
                 <td class="tdName">
                    人气指数：
                </td>
                <td class="td">
                    <input type="text" id="txtViewUser" runat="server" class="txt" />
                </td>
                <td class="tdName">
                    是否启用：
                </td>
                <td class="td">
                    <uc3:RadioControl ID="RadioControl3" runat="server" IsText="是" NoText="否" IsUpdate="false"
                        defaultChecked="1" />
                </td>
            </tr> 
            <tr>
                <td><span class="span">*</span>科室描述：</td>
                <td colspan="7">                    
                    <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="350px">
                    </FCKeditorV2:FCKeditor>                    
                   </td>
            </tr>       
            <tr>
                <td colspan="12" align="center">
                    <asp:Button ID="btnIn" runat="server" Text="添加" OnClientClick="return InHospitalOdffice()" />
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

