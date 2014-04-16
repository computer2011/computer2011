<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="computer2011.Student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width: 900px">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="选择查询类型："></asp:Label>
    </div>
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="157px">
            <asp:ListItem>全部查询</asp:ListItem>
            <asp:ListItem>按姓名查询</asp:ListItem>
            <asp:ListItem>按学号查询</asp:ListItem>
            <asp:ListItem>按性别查询</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div></div>
    </form>
</body>
</html>
