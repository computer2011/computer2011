<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="computer2011.Student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width: 900px">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="查询学生基本信息:"></asp:Label>
    </div>
    <div align="center">
        <asp:Label ID="Label2" runat="server" Text="姓名："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="28px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="或学号："></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="27px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="25px" Text="查询" Width="66px" />
    </div>
    <div>
    </div>
    </form>
</body>
</html>
