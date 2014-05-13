<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuPwdUpdate.aspx.cs" Inherits="computer2011.StuPwdUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table cellpadding="0" cellspacing="0" width="420" align="center">
     <tr height="50"><td></td></tr>
        <tr>
            <td align="right" width="150" valign="bottom">
                <asp:Label ID="Label1" runat="server" Text="旧密码：" CssClass="Label_Normal"></asp:Label>
            </td>
            <td align="left" valign="bottom">
                <asp:TextBox ID="TextBoxOld" runat="server" CssClass="Label_Normal" Width="160px"
                    TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        runat="server" ErrorMessage="旧密码不能为空" CssClass="Label_Warning" 
                    ControlToValidate="TextBoxOld" Font-Size="XX-Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="bottom">
                <asp:Label ID="Label2" runat="server" Text="新密码：" CssClass="Label_Normal"></asp:Label>
            </td>
            <td align="left" valign="bottom">
                <asp:TextBox ID="TextBoxNew" runat="server" TextMode="Password" CssClass="Label_Normal"
                    Width="160px" TabIndex="1"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                        runat="server" ErrorMessage="新密码不能为空" CssClass="Label_Warning" 
                    ControlToValidate="TextBoxNew" Font-Size="XX-Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="bottom">
                <asp:Label ID="Label3" runat="server" Text="再次输入新密码：" CssClass="Label_Normal"></asp:Label>
            </td>
            <td align="left" valign="bottom">
                <asp:TextBox ID="TextBoxReNew" runat="server" TextMode="Password" CssClass="Label_Normal"
                    Width="160px" TabIndex="1"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                        runat="server" ErrorMessage="再次输入新密码不能为空" CssClass="Label_Warning" 
                    ControlToValidate="TextBoxReNew" Font-Size="XX-Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr height="50">
            <td colspan="2" align="center">
                <asp:LinkButton ID="LinkButton1"  class="btn btn-primary" runat="server" 
                    OnClick="Button1_Click" Width="49px">修改</asp:LinkButton>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
