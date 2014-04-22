<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="computer2011.Default" %>

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
                <td background="Images/daohanglang.jpg">
                    <table width="480px">
                        <tr height="30">
                            <td width="10px">
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                                <a href="IndexPage.aspx" target="content1" style="color: White">首页</a>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                                <a href="#" target="content1" style="color: White">相册</a>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                                <a href="#" target="content1" style="color: White">留言板</a>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                                <a href="#" target="content1" style="color: White">同学录</a>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                                <a href="#" target="content1" style="color: White">资源下载</a>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#006666'" onmouseout="this.bgColor=''">
                                <a href="KBCX.aspx" target="content1" style="color: White">课表查询</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <iframe id="content1" src="IndexPage.aspx" name="content1" height="100%" onload="Javascript:SetWinHeight(this)"
                        width="1000px" frameborder="0" style="overflow-y: visible" scrolling="no"></iframe>
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
