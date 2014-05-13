<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UserWeb.Users.Login" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../script/js/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .Button_Common
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        
        <table cellpadding="0" cellspacing="0" width="320">
            <tr height="100">
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td align="right" width="80" valign="bottom">
                    <asp:Label ID="Label1" runat="server" Text="学号：" CssClass="Label_Normal"></asp:Label>
                </td>
                <td align="left" valign="bottom">
                    <asp:TextBox ID="TextBoxXH" runat="server" CssClass="Label_Normal" Width="160px"
                        TabIndex="1"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            runat="server" ErrorMessage="学号不能为空" CssClass="Label_Warning" ControlToValidate="TextBoxXH"
                            Font-Size="XX-Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="bottom">
                    <asp:Label ID="Label2" runat="server" Text="密码：" CssClass="Label_Normal"></asp:Label>
                </td>
                <td align="left" valign="bottom">
                    <asp:TextBox ID="TextBoxPWD" runat="server" TextMode="Password" CssClass="Label_Normal"
                        Width="160px" TabIndex="2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空"
                        CssClass="Label_Warning" ControlToValidate="TextBoxPWD" Font-Size="XX-Small"
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr height="50">
                <td colspan="2" align="center">
                    <asp:LinkButton ID="LinkButton1" class="btn btn-primary"
                        runat="server" OnClick="Button1_Click">登录</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
