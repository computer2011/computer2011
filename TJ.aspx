<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TJ.aspx.cs" Inherits="KQ.TJ" %>

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
        <div>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" class="btn btn-primary">个人查询</asp:LinkButton>
            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" class="btn btn-success">新建考勤</asp:LinkButton>
            &nbsp;<asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" class="btn btn-warning">统计查询</asp:LinkButton></div>
        <div>
            <asp:Label ID="LabelTJ" runat="server" Text="考勤统计"></asp:Label></div>
        <div>
            <asp:GridView ID="GridViewTJ" runat="server" AutoGenerateColumns="False" Width="600px"
                CssClass="table">
                <AlternatingRowStyle CssClass="success" />
                <Columns>
                    <asp:TemplateField HeaderText="考勤号">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="考勤名称">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Text='<%# Eval("IDname") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IDname") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="introduce" HeaderText="考勤备注" />
                    <asp:BoundField DataField="time" HeaderText="考勤时间" />
                    <asp:TemplateField HeaderText="修改考勤">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">修改</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle CssClass="danger" />
            </asp:GridView>
        </div>
        <div>
            <asp:GridView ID="GridViewXQ" runat="server" AutoGenerateColumns="False" Width="500px"
                AllowSorting="True" CssClass="table" Visible="False">
                <AlternatingRowStyle CssClass="success" />
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="学号" />
                    <asp:BoundField DataField="name" HeaderText="姓名" />
                    <asp:BoundField DataField="kqlb" HeaderText="出勤情况" />
                </Columns>
                <HeaderStyle CssClass="danger" />
            </asp:GridView>
        </div>
    </div>
    </form>
</body>
</html>
