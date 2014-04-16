<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KBCX.aspx.cs" Inherits="computer2011.KBCX" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Table.css" rel="stylesheet" type="text/css" />
</head>
<body style="width: 900px">
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">统计没课时段</asp:LinkButton></div>
    <div>
        <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
    </div>
    <hr style="width: 864px" />
    <div>
        <asp:Label ID="Label13" runat="server" Text="按时段查询："></asp:Label></div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="星期"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="65px">
            <asp:ListItem Value="周一">一</asp:ListItem>
            <asp:ListItem Value="周二">二</asp:ListItem>
            <asp:ListItem Value="周三">三</asp:ListItem>
            <asp:ListItem Value="周四">四</asp:ListItem>
            <asp:ListItem Value="周五">五</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label2" runat="server" Text="时段"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="120px">
            <asp:ListItem Value="第1,2节">1,2节</asp:ListItem>
            <asp:ListItem Value="第3,4节">3,4节</asp:ListItem>
            <asp:ListItem Value="第5节">5节</asp:ListItem>
            <asp:ListItem Value="第6,7节">6,7节</asp:ListItem>
            <asp:ListItem Value="第8,9节">8,9节</asp:ListItem>
            <asp:ListItem Value="第10,11节">10,11节</asp:ListItem>
            <asp:ListItem Value="第10,11,12节">10,11,12节</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
    </div>
    <div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ToolTip="点击查看详细信息"></asp:LinkButton>
    </div>
    <div style="height: 10px">
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="None"
            Width="886px" GridLines="Horizontal" PageSize="100">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="学号" />
                <asp:BoundField DataField="Name" HeaderText="姓名">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="CName" HeaderText="课程名" />
                <asp:TemplateField HeaderText="上课地点">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Time1") %>'></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Address1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="上课地点">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Time2") %>'></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Address2") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" Font-Names="微软雅黑" />
            <RowStyle BorderStyle="None" Font-Names="微软雅黑" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
    </div>
    <hr style="width: 857px" />
    <div>
        <asp:Label ID="Label14" runat="server" Text="查询某人课表："></asp:Label></div>
    <div>
        <asp:Label ID="Label7" runat="server" Text="学号："></asp:Label><asp:TextBox ID="TextBox2"
            runat="server"></asp:TextBox><asp:Label ID="Label8" runat="server" Text="或姓名"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查询" />
    </div>
    <div style="height: 10px">
    </div>
    <div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BorderStyle="None"
            Width="891px" GridLines="Horizontal" PageSize="100">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="学号" />
                <asp:BoundField DataField="Name" HeaderText="姓名">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="CName" HeaderText="课程名" />
                <asp:BoundField DataField="T_Teacher" HeaderText="任课教师" />
                <asp:TemplateField HeaderText="上课时段1">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Address1") %>'></asp:Label>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("Time1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="上课时段2">
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("Address2") %>'></asp:Label>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("Time2") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" Font-Names="微软雅黑" />
            <RowStyle BorderStyle="None" Font-Names="微软雅黑" HorizontalAlign="Center" />
        </asp:GridView>
    </div>
    <div style="height: 10px"></div>
    </form>
</body>
</html>
