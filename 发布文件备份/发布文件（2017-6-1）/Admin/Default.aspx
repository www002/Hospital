<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_tgvvesi-" %>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>西社镇中心卫生院</title>
    
    <script src="Js/Main.js" type="text/javascript"></script>

    <script src="Js/TabControl.js" type="text/javascript"></script>

    <script type="text/javascript">
        //加载皮肤文件
        loadCss(_skinId, 'Main.css');
         
        function ShowMenu() {
            if (tdMenu.style.display == '') {
                tdMenu.style.display = 'none';
                $("tdMenu1").title = $("tdMenu2").title = "显示菜单"
            }
            else {
                tdMenu.style.display = '';
                $("tdMenu1").title = $("tdMenu2").title = "隐藏菜单"
            }
        }
//        $(document).ready(function() {
//            //防止刷新是需要再重新加载页面
//            window.opener.window.document.forms(0).submit();
//        })
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div style="right: 10px; top: 5px; position: absolute; height: 21px; text-align: right">
        <a>皮肤：</a><a href="#" onclick="loadSkin('1')">藤蔓绿</a>&nbsp;<a href="#" onclick="loadSkin('2')">经典蓝</a>&nbsp;<a
            href="#" onclick="loadSkin('3')">甜蜜橙</a>&nbsp;<a href="#" onclick="loadSkin('4')">淡雅灰</a>
    </div>
    <div style="right: 10px; top: 40px; position: absolute; height: 21px; text-align: right">
        <asp:Label ID="lblShowAdminMeg" runat="server" Text=""></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server">退出登录</asp:LinkButton>
    </div>
    
    
    <!--把logo图片放在这里-->
    <div class="logopic" >
        <img src="Image/log.jpg" alt=""  style=" width:150px; height:50px; overflow:hidden;"/>
        
    </div>
    <div  class="logopic2">稷山县西社镇中心卫生院欢迎你！</div>
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td height="60" colspan="2" class="top">
            </td>
        </tr>
        <tr>
            <td class="menuwidth" id="tdMenu">
                <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="menu11">
                        </td>
                        <td class="menu12">
                        </td>
                        <td class="menu13">
                        </td>
                    </tr>
                    <tr>
                        <td class="menu21">
                        </td>
                        <td class="menu22" valign="top">
                            <iframe style="width: 100%; height: 100%" frameborder="0" src="Menu.aspx"></iframe>
                        </td>
                        <td class="menu23" id="tdMenu1" onclick="ShowMenu()">
                            <div class="tripbar">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="menu31">
                        </td>
                        <td class="menu32">
                        </td>
                        <td class="menu33">
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="right11">
                        </td>
                        <td class="right12">
                        </td>
                        <td class="right13">
                        </td>
                    </tr>
                    <tr>
                        <td class="right21" id="tdMenu2" onclick="ShowMenu()">
                        </td>
                        <td class="right22" valign="top">

                            <script type="text/javascript">
                                var myTab = new HTabControl(_skinId, true);
                                document.write(myTab.init());
                                myTab.Cts("系统介绍", "default2.aspx")
                            </script>

                        </td>
                        <td class="right23">
                        </td>
                    </tr>
                    <tr>
                        <td class="right31">
                        </td>
                        <td class="right32">
                        </td>
                        <td class="right33">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

