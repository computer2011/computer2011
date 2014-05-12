<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main_Content.aspx.cs" Inherits="computer2011.Main_Content" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="http://localhost:9258/bootstrap/css/bootstrap.min.css" rel="stylesheet"
        type="text/css" />
    <style type="text/css">
        .form-control
        {
            width: 971px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="width: 1000px;">
    <div style="width: 1000px">
        <table width="1000px">
            <tr>
                <td>
                    <asp:Label ID="Label1" CssClass="text-info" Font-Size="12pt" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Label2" CssClass="text-info" Font-Size="12pt" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <div style="position: absolute; left: 400px; top: 0px; width: 400px; right: 595px;">
            <asp:Label ID="Label3" CssClass="text-info" Font-Size="12pt" runat="server" Text=""></asp:Label>
        </div>
        <hr />
        <div align="center">
            <textarea id="text1" runat="server" class="form-control"  rows="50" readonly="readonly"
                style="background-color: #FFFFFF; font-size: 17px; line-height: 1px; font-family: 楷体;"></textarea>
        </div>
    </div>
    </form>
</body>
</html>
