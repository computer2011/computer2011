<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleCompetenceEdit.aspx.cs"
    Inherits="UserWeb.RoleCompetenceEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../script/js/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('img/t.jpg')">
    <div>
        <table >
            <tr height="100">
                <td width="500">
                </td>
            </tr>
        </table>
    </div>
    <div align="center">
        <table class="table table-striped" style=" width:300px">
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
                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="提交" Width="80px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
