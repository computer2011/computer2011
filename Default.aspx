﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="computer2011.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Table.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function SetWinHeight(obj) {
            var win = obj;
            if (document.getElementById) {
                if (win && !window.opera) {
                    if (win.contentDocument && win.contentDocument.body.offsetHeight)
                        win.height = win.contentDocument.body.offsetHeight;
                    else if (win.Document && win.Document.body.scrollHeight)
                        win.height = win.Document.body.scrollHeight;
                }
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div1">
        <table align="center" style="background-color: #ccccff" width="1000" cellpadding="0"
            cellspacing="0">
            <tr height="112px">
                <td width="1000px" background="Images/yemei.jpg">
                </td>
            </tr>
            <tr>
                <td background="Images/daohanglang.jpg" align="center">
                    <table width="900px">
                        <tr height="30">
                            <td width="10px">
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                                <%--<a href="IndexPage.aspx" target="content1" style="color: White; font-family: 华文行楷;
                                    font-size: 15pt">首页</a>--%>
                                <asp:LinkButton ID="LinkButton1"  runat="server" Text="首页" Font-Names="华文行楷" 
                                    Font-Size="15pt" ForeColor="White" onclick="LinkButton1_Click1"></asp:LinkButton>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                              <%--  <a href="classxc.aspx" target="content1" style="color: White; font-family: 华文行楷;
                                    font-size: 15pt">相册</a>--%>
                                    <asp:LinkButton ID="LinkButton2"  runat="server" Text="相册" Font-Names="华文行楷" 
                                    Font-Size="15pt" ForeColor="White" ></asp:LinkButton>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                            <%--    <a href="Guest.aspx" target="content1" style="color: White; font-family: 华文行楷; font-size: 15pt">
                                    留言板</a>--%>
                                      <asp:LinkButton ID="LinkButton3"  runat="server" Text="留言板" Font-Names="华文行楷" 
                                    Font-Size="15pt" ForeColor="White" ></asp:LinkButton>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                               <%-- <a href="Student.aspx" target="content1" style="color: White; font-family: 华文行楷;
                                    font-size: 15pt">通讯录</a>--%>  <asp:LinkButton ID="LinkButton4"  runat="server" Text="通讯录" Font-Names="华文行楷" 
                                    Font-Size="15pt" ForeColor="White" ></asp:LinkButton>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                              <%--  <a href="MCXS.aspx" target="content1" style="color: White; font-family: 华文行楷; font-size: 15pt">
                                    问卷调查</a>--%>  <asp:LinkButton ID="LinkButton5"  runat="server" Text="问卷调查" Font-Names="华文行楷" 
                                    Font-Size="15pt" ForeColor="White" ></asp:LinkButton>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                             <%--   <a href="KBCX.aspx" target="content1" style="color: White; font-family: 华文行楷; font-size: 15pt">
                                    课表查询</a>--%>  <asp:LinkButton ID="LinkButton6"  runat="server" Text="课表查询" Font-Names="华文行楷" 
                                    Font-Size="15pt" ForeColor="White" ></asp:LinkButton>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                                <%--<a href="TJ.aspx" target="content1"  style="color: White; font-family: 华文行楷; font-size: 15pt">
                                    考勤</a>--%>  <asp:LinkButton ID="LinkButton7"  runat="server" Text="考勤" Font-Names="华文行楷" 
                                    Font-Size="15pt" ForeColor="White" ></asp:LinkButton>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                               <%-- <a href="shixiantongji.aspx" target="content1" style="color: White; font-family: 华文行楷;
                                    font-size: 15pt">综合量化</a>--%>  <asp:LinkButton ID="LinkButton8"  runat="server" Text="综合量化" Font-Names="华文行楷" 
                                    Font-Size="15pt" ForeColor="White" ></asp:LinkButton>
                            </td>
                            <td id="tdzy" runat="server" class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                              <%--  <a href="Main_Manage.aspx" target="content1" style="color: White; font-family: 华文行楷;
                                    font-size: 15pt">主页管理</a>--%>  <asp:LinkButton ID="LinkButton9"  
                                    runat="server" Text="首页管理" Font-Names="华文行楷" 
                                    Font-Size="15pt" ForeColor="White" onclick="LinkButton9_Click" ></asp:LinkButton>
                            </td>
                            <td id="td1" runat="server" class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                            <%--    <a href="Users/Login.aspx"  style="color: White; font-family: 华文行楷;
                                    font-size: 15pt">系统管理</a>--%>  <asp:LinkButton ID="LinkButton10"  
                                    runat="server" Text="系统管理" Font-Names="华文行楷" 
                                    Font-Size="15pt" ForeColor="White" onclick="LinkButton10_Click" ></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <iframe id="content1" src="IndexPage.aspx" name="content1" height="100%" onload="Javascript:SetWinHeight(this)"
                        width="1000px" frameborder="0" style="border-color: #F0F0F0; overflow-y: visible;
                        border-left-width: 1px; border-left-style: solid; border-top-width: 1px; border-right-style: solid;"
                        scrolling="no" bordercolor="#CCCCFF"></iframe>
                </td>
            </tr>
            <tr>
                <td>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
