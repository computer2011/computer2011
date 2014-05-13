<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CJ.aspx.cs" Inherits="KQ.CJ" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="script/js/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="script/js/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="form-group">
        <asp:LinkButton ID="LinkButtonTJ" runat="server" OnClick="LinkButtonTJ_Click" class="btn btn-primary">考勤首页</asp:LinkButton>
        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"
            class="btn btn-success">个人查询</asp:LinkButton>
        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"
            class="btn btn-info">统计查询</asp:LinkButton></div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="考勤名称："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="考勤介绍："></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Height="50px" Width="580px"></asp:TextBox></div>
    <div>
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="确认" OnClick="Button1_Click" class="btn btn-primary" /></div>
    </div>
    <div class="form-group">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="margin-top: 1px"
            Width="500px" Visible="False" CssClass="table">
            <AlternatingRowStyle CssClass="success" />
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="学号" />
                <asp:BoundField FooterText="学生姓名" HeaderText="学生姓名" DataField="Name" />
                <asp:TemplateField HeaderText="考勤情况">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="1">出勤</asp:ListItem>
                            <asp:ListItem Value="2">迟到</asp:ListItem>
                            <asp:ListItem Value="3">早退</asp:ListItem>
                            <asp:ListItem Value="4">缺席</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle CssClass="danger" Font-Names="微软雅黑" />
            <RowStyle Font-Names="微软雅黑" />
        </asp:GridView>
    </div>
    <div class="form-group">
        <asp:Button ID="Button2" runat="server" Text="完成" Visible="False" OnClick="Button2_Click"
            class="btn btn-primary" /></div>
    </form>
</body>
</html>
