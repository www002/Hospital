<%@ page language="C#" autoeventwireup="true" inherits="Admin_Login, App_Web_tgvvesi-" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理平台</title>
    <script type="text/javascript">
    function refresh(){
        var num = Math.ceil(Math.random()*100);
        document.all.img.src = "validate.aspx?Num=" + num;
    }
    </script>
    <style type="text/css">
    body {
	    margin-left: 0px;
	    margin-top: 0px;
	    margin-right: 0px;
	    margin-bottom: 0px;
	    overflow:hidden;
    }
    .STYLE3 {color: #528311; font-size: 12px; }
    .STYLE4 {
	    color: #42870a;
	    font-size: 12px;
    }
    </style>
</head>

<body>
<form  runat="server" id="form1">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#e5f6cf">&nbsp;</td>
  </tr>
  <tr>
    <td height="608" background="Image/login_03.gif"><table width="862" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="266" background="Image/login_04.gif">&nbsp;</td>
      </tr>
      <tr>
        <td height="95">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="424" height="95" ><img src="Image/login_06.gif" /></td>
            <td width="183" background="Image/login_07.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="21%" height="30"><div align="center"><span class="STYLE3">用户</span></div></td>
                <td width="79%" height="30"><input type="text" id="txtName" runat="server"  style="height:18px; width:130px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;"></td>
              </tr>
              <tr>
                <td height="30"><div align="center"><span class="STYLE3">密码</span></div></td>
                <td height="30"><input type="password" id="txtPwd" runat="server" style="height:18px; width:130px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;"></td>
              </tr>               
          
              <tr>
                <td height="30"><div align="center"><span class="STYLE3">验证</span></div></td>
                <td height="30"><input type="text" id="txtValidate" runat="server" style="height:18px; width:70px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;">
                <img src="validate.aspx" onclick="refresh()" alt="请输入验证码,看不清楚？点击换一个"  id="img" /></td>
              </tr>
              <tr>
                <td height="30">&nbsp;</td>
                <td height="30">
                    <asp:ImageButton ID="AdminLogin" runat="server" ImageUrl="Image/Login.GIF" width="41" height="22" border="0" />
                    <asp:ImageButton ID="AdminReset" runat="server" ImageUrl="Image/LoginReset.gif" width="42" height="22" border="0"/>
                    </td>
              </tr>
            </table></td>
            <td width="255" ><img src="Image/login_08.gif" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="247" valign="top" background="Image/login_09.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="22%" height="30">&nbsp;</td>
            <td width="56%">&nbsp;</td>
            <td width="22%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="44%" height="20">&nbsp;</td>
                <td width="56%" class="STYLE4">版本 2014V1.0 </td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#a2d962">&nbsp;</td>
  </tr>
  
</table>
</form>
<map name="Map"><area shape="rect" coords="3,3,36,19" href="#"><area shape="rect" coords="40,3,78,18" href="#"></map></body>
</html>
