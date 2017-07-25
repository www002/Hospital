<%@ control language="C#" autoeventwireup="true" inherits="Admin_UserControls_Paging, App_Web_espxknrh" %>
<div id="QD" visible="false" runat="server" align="center">
    <span class="STYLE1">共<%=sums%>条&nbsp;&nbsp;&nbsp;&nbsp;当前<%=currentPageNum%>/<%=SumPageNum%>页
        &nbsp;&nbsp;&nbsp;&nbsp; 每页<%=pageSize%>条</span>
    <asp:ImageButton ID="btnFirstPage" runat="server" ImageUrl="../Image/first.gif" Width="37"
        Height="15" />
    <asp:ImageButton ID="btnPrePage" runat="server" ImageUrl="../Image/back.gif" Width="37"
        Height="15" />
    <asp:ImageButton ID="btnNaxtPage" runat="server" ImageUrl="../Image/next.gif" Width="37"
        Height="15" />
    <asp:ImageButton ID="btnLastPage" runat="server" ImageUrl="../Image/last.gif" Width="37"
        Height="15" />
    &nbsp;&nbsp;&nbsp;<span class="STYLE1">转到第<input id="txtpages" runat="server" class="Pagetxt" /><span
        class="span">*</span>页</span>
    <asp:ImageButton ID="btnPages" runat="server" ImageUrl="../Image/go.jpg" CssClass="Imgbtn"
        OnClientClick="return toPage()" />
    &nbsp;&nbsp;
    <asp:DropDownList ID="pSize" runat="server" onmousewheel="return false" AutoPostBack="true"  CssClass="PageDLL">
        <asp:ListItem Value="10" Selected="True">10</asp:ListItem>
        <asp:ListItem Value="15">15</asp:ListItem>
        <asp:ListItem Value="20">20</asp:ListItem>
        <asp:ListItem Value="25">25</asp:ListItem>
        <asp:ListItem Value="30">30</asp:ListItem>
    </asp:DropDownList>
    <input id="HFSums" type="hidden" runat="server" />
    <input id="HFcurrentPageNum" type="hidden" runat="server" value="1" />
    <input id="HFsqlWhere" type="hidden" runat="server" />
    <input id="HFPageSize" type="hidden" runat="server" value="10" />
</div>