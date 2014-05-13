<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main_Manage.aspx.cs" Inherits="computer2011.Main_Manage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" style="width: 1000px">
    <div>
        <table width="1000px">
            <tr height="32px">
                <td width="80px" align="right">
                    <p class="text-primary">
                        选择栏目：</p>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="165px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <p class="text-primary">
                        标题：</p>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="不超过14个字..." runat="server"
                        Width="627px" Height="32px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td valign="top" align="right">
                    <p class="text-primary">
                        正文：</p>
                </td>
                <td>
                    <textarea runat="server" class="form-control" rows="20" id="TextArea1" name="S1"></textarea>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Enabled="false"
                        ControlToValidate="TextArea1" ValidationExpression=" 
^[a-zA-z]+://(\w+(-\w+)*)(\.(\w+(-\w+)*))*(\?\s*)?$ 
 " runat="server" ValidationGroup="checkText" ForeColor="Red" ErrorMessage="网址格式不正确"></asp:RegularExpressionValidator>
                    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="checkText" Enabled="false"
                        ShowMessageBox="true" ShowSummary="false" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td align="center">
                    <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" Text="发布内容" OnClick="Button1_Click"
                        ValidationGroup="checkText" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
