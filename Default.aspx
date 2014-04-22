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
        <table style="background-color: #ccccff" align="center" width="1000" cellpadding="0"
            cellspacing="0">
            <tr height="112px">
                <td width="1000px" background="Images/页眉.jpg">
                </td>
            </tr>
            <tr>
                <td background="Images/导航栏.jpg">
                    <table >
                        <tr height="30" bgcolor="#99ccff">
                            <td class="td" onmouseover="this.bgColor='#669999'" onmouseout="this.bgColor='#99ccff'">
                                <a href="IndexPage.aspx" target="content1">首页</a>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#669999'" onmouseout="this.bgColor='#99ccff'">
                                <a href="Category.aspx" target="content1">相册</a>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#669999'" onmouseout="this.bgColor='#99ccff'">
                                <a href="Category.aspx" target="content1">留言板</a>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#669999'" onmouseout="this.bgColor='#99ccff'">
                                <a href="Category.aspx" target="content1">同学录</a>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#669999'" onmouseout="this.bgColor='#99ccff'">
                                <a href="Category.aspx" target="content1">资源下载</a>
                            </td>
                            <td class="td" onmouseover="this.bgColor='#669999'" onmouseout="this.bgColor='#99ccff'">
                                <a href="KBCX.aspx" target="content1">课表查询</a>
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
