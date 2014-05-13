<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRoleEdit.aspx.cs" Inherits="UserWeb.Users.UserRoleEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../script/js/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../script/js/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('img/t.jpg')">
    <div align="center">
        <table>
            <tr height="100">
                <td>
                </td>
            </tr>
        </table>
        <table  class="table table-striped" style=" width:400px">
            <asp:ListView ID="ListView2" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:CheckBox ID="CheckBox1" runat="server" Text='<%# Eval("RoleName")%>' AutoPostBack="True">
                            </asp:CheckBox>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("RoleID") %>' Style="visibility: hidden;"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="Button3" class="btn btn-primary" style=" width:100px; height:30px" runat="server" Text="分配权限" OnClick="Button3_Click" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </table>
        <table>
            <tr height="30">
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="提交" Width="80px" OnClick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
