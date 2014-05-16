<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="computer2011.Student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" style="width: 1000px">
    <div id="divstu" runat="server" align="center" style="width: 1000px">
        <table width="1000px">
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" AutoGenerateColumns="False"
                        Width="988px" BackColor="White" GridLines="None" HorizontalAlign="Center">
                        <Columns>
                            <asp:TemplateField HeaderText="学号">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Sno") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Name" HeaderText="姓名">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Sex" HeaderText="性别">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MZ" HeaderText="民族">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="P_Self_Num" HeaderText="联系电话">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="QQ" HeaderText="QQ号">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SS_Address" HeaderText="宿舍地址">
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="操作">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">更多</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">修改</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle Font-Names="微软雅黑" HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="12pt"
                            ForeColor="#99CCFF" />
                        <RowStyle BorderStyle="None" Font-Names="微软雅黑" HorizontalAlign="Left" Height="40px"
                            Font-Size="11pt" />
                       <%-- <SelectedRowStyle BackColor="#CCCCCC" />--%>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
