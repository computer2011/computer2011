<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleCompetenceEdit.aspx.cs"
    Inherits="UserWeb.RoleCompetenceEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="1000">
            <tr height="100" width="1000">
                <td width="500">
                </td>
            </tr>
            <tr height="20">
                <td align=right width="500">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr height="20">
                <td width="500">
                </td>
            </tr>
        </table>
    </div>
    <div align="center">
        <table style="left: 20px; top: 30px" border="1" width="300">
            <asp:ListView ID="ListView2" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:CheckBox ID="CheckBox1" runat="server" Text='<%# Eval("CompetenceName")%>' AutoPostBack="True">
                            </asp:CheckBox>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CompetenceID") %>' Style="visibility: hidden;"></asp:Label>
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
                    <asp:Button ID="Button1" runat="server" Text="提交" Width="80px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
