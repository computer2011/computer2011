<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KBCX.aspx.cs" Inherits="computer2011.KBCX" %>

<%@ Register Src="UTC_LinkButton.ascx" TagName="UTC_LinkButton" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Table.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body style="width: 900px">
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" 
            Font-Size="15pt">查询并统计课表</asp:LinkButton></div>
    <div>
        <asp:Label ID="Label15" runat="server"></asp:Label>
    </div>
    <div id="div1" runat="server" visible="false">
        <table class="table table-hover" width="900px"  border="1" 
            style="text-align: center">
            <tr height="20px" bgcolor="#99ccff">
                <td class="TD">
                    时间
                </td>
                <td class="kbtd">
                    星期一
                </td>
                <td class="kbtd">
                    星期二
                </td>
                <td class="kbtd">
                    星期三
                </td>
                <td class="kbtd">
                    星期四
                </td>
                <td class="kbtd">
                    星期五
                </td>
            </tr>
            <tr class="TR">
                <td class="TD">
                    第1,2节
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton1" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton2" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton3" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton4" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton5" runat="server" />
                </td>
            </tr>
            <tr class="TR">
                <td class="TD">
                    第3,4节
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton6" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton7" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton8" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton9" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton10" runat="server" />
                </td>
            </tr>
            <tr class="TR">
                <td class="TD">
                    第5节
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton11" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton12" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton13" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton14" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton15" runat="server" />
                </td>
            </tr>
            <tr class="TR">
                <td class="TD">
                    第6,7节
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton16" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton17" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton18" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton19" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton20" runat="server" />
                </td>
            </tr>
            <tr class="TR">
                <td class="TD">
                    第8,9节
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton21" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton22" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton23" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton24" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton25" runat="server" />
                </td>
            </tr>
            <tr class="TR">
                <td class="TD">
                    第10,11节
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton26" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton27" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton28" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton29" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton30" runat="server" />
                </td>
            </tr>
            <tr class="TR">
                <td class="TD">
                    第12节
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton31" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton32" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton33" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton34" runat="server" />
                </td>
                <td>
                    <uc1:UTC_LinkButton ID="UTC_LinkButton35" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    <hr style="width: 864px" />
    <div>
        详细信息</div>
    <div style="height: 10px">
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="None"
            Width="886px" GridLines="Horizontal" PageSize="100">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="学号" >
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="姓名">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="CName" HeaderText="课程名" >
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="上课地点">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Time1") %>'></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Address1") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="上课地点">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Time2") %>'></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Address2") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" Font-Names="微软雅黑" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <RowStyle BorderStyle="None" Font-Names="微软雅黑" HorizontalAlign="Center" 
                Height="40px" />
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
        <asp:Button ID="Button2" CssClass="btn btn-info btn-xs" runat="server" OnClick="Button2_Click"
            Text="查询" />
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
            <HeaderStyle BackColor="#CCCCCC" Font-Names="微软雅黑" HorizontalAlign="Center" />
            <RowStyle BorderStyle="None" Font-Names="微软雅黑" HorizontalAlign="Center" 
                Height="40px" />
        </asp:GridView>
    </div>
    <div style="height: 10px">
    </div>
    </form>
</body>
</html>
