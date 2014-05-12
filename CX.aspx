<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CX.aspx.cs" Inherits="KQ.CX" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="script/js/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="script/js/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="LinkButtonTJ" runat="server" OnClick="LinkButtonTJ_Click" class="btn btn-primary">考勤首页</asp:LinkButton>
        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" class="btn btn-success">统计查询</asp:LinkButton>
        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" class="btn btn-info">新建考勤</asp:LinkButton></div>
    <div>
        查询</div>
    <div>
        <asp:Label ID="Label5" runat="server" Text="学号："></asp:Label>
        <asp:TextBox ID="TextBoxSno" runat="server"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="或姓名：">
        </asp:Label><asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" class="btn btn-primary btn-lg active" />
        <br />
    </div>
    <div>
        <asp:Label ID="Labelone" runat="server" Text="Label" Visible="False"></asp:Label></div>
    <div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Visible="False"
            Width="800px" CssClass="table">
            <AlternatingRowStyle CssClass="success" />
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="学号" />
                <asp:BoundField DataField="Name" HeaderText="姓名" />
                <asp:BoundField DataField="IDname" HeaderText="考勤项目" />
                <asp:BoundField DataField="kqlb" HeaderText="出勤情况" />
                <asp:BoundField DataField="time" HeaderText="考勤时间" />
                <asp:BoundField DataField="ID" HeaderText="考勤项目号" />
            </Columns>
            <HeaderStyle CssClass="danger" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
