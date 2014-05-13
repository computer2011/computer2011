<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimeTJ.aspx.cs" Inherits="KQ.TimeTJ" %>

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
        <div class="form-group">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" class="btn btn-primary">考勤首页</asp:LinkButton>
            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"
                class="btn btn-success">个人查询</asp:LinkButton>
            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"
                class="btn btn-info">新建考勤</asp:LinkButton></div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="开始时间"></asp:Label>
            <asp:TextBox ID="TextBoxBeginTime" runat="server" class="CanLoginBeginTime"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="结束时间"></asp:Label>
            <asp:TextBox ID="TextBoxEndTime" runat="server" class="CanLoginBeginTime"></asp:TextBox>
            <asp:Button ID="ButtonTime" runat="server" Text="查询" OnClick="ButtonTime_Click" class="btn btn-primary btn-lg active" />
        </div>
        <div class="form-group">
            <asp:GridView ID="GridViewTime" runat="server" AutoGenerateColumns="False" Visible="False"
                Width="800px" CssClass="table">
                <AlternatingRowStyle CssClass="success" />
                <Columns>
                    <asp:BoundField DataField="Sno" HeaderText="学号" />
                    <asp:BoundField HeaderText="姓名" DataField="Name" />
                    <asp:BoundField HeaderText="出勤" />
                    <asp:BoundField HeaderText="迟到" />
                    <asp:BoundField HeaderText="早退" />
                    <asp:BoundField HeaderText="缺席" />
                </Columns>
                <HeaderStyle CssClass="danger" Font-Names="微软雅黑" />
                <RowStyle Font-Names="微软雅黑" />
            </asp:GridView>
        </div>
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
    </div>
    <script src="script/js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="script/js/bootstrap-datetimepicker.js" type="text/javascript"></script>
    <script src="script/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>
    <script type="text/jscript">
        $(".CanLoginBeginTime")
                .removeAttr("data-val-date")
                .attr("data-date-forma", "yyyy-mm-dd hh:ii:ss")
                .attr("data-value", true)
                .attr("data-val-required", "必须填写")
                .datetimepicker({
                    language: 'zh-CN',
                    format: 'yyyy-m-d hh:ii:ss'
                });
    </script>
    </form>
</body>
</html>
