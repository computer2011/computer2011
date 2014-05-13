<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main_Content.aspx.cs" Inherits="computer2011.Main_Content" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" style="width: 1000px;">
    <div style="background-color: #FFFFFF;">
        <table width="1000px">
            <tr height="10px">
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <table width="1000px">
                        <tr valign="middle">
                            <td width="500px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" CssClass="text-info" Font-Size="12pt" runat="server" Text=""></asp:Label>
                                <asp:Label ID="Label2" CssClass="text-info" Font-Size="12pt" runat="server" Text=""></asp:Label>
                            </td>
                            <td align="center">
                                <asp:Label ID="Label3" CssClass="text-info" Font-Size="12pt" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr height="5px" valign="middle">
                <td>
                    <hr style="width: 996px; text-align: left; vertical-align: top; font-size: xx-small"
                        color="#CCCCFF" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <textarea id="text1" name="S1" runat="server" class="form-control" rows="30" disabled="disabled"
                        style="background-color: #FFFFFF"></textarea>
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
