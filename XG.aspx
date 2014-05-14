<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XG.aspx.cs" Inherits="KQ.XG" %>

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
            class="btn btn-info">统计查询</asp:LinkButton>
        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"
            class="btn btn-danger">新建查询</asp:LinkButton></div>
    <div class="form-group" align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="598px"
            CssClass="table">
            <AlternatingRowStyle CssClass="success" />
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="学号" />
                <asp:BoundField DataField="Name" HeaderText="姓名" />
                <asp:TemplateField HeaderText="出勤情况">
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
    <div class="form-group" align="center">
        <asp:Button ID="ButtonUpdate" runat="server" Text="修改" OnClick="ButtonUpdate_Click"
            class="btn btn-primary" /></div>
    </form>
</body>
</html>
