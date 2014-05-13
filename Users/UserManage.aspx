﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManage.aspx.cs" Inherits="UserWeb.Users.UserManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../script/js/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../script/js/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('img/t.jpg')">
    <div>
        <div>
            <table>
                <tr height="50">
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="学号："></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxXH" runat="server"></asp:TextBox>
                    </td>
                    <td width="50">
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="姓名："></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxXM" runat="server"></asp:TextBox>
                    </td>
                    <td width="50">
                    </td>
                    <td>
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="查询" Width="80px"
                            OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr height="20">
                    <td>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <div>
                <div class="Div_Title_Small">
                    <asp:Label ID="LabelInfo" runat="server" Text=" "></asp:Label>
                </div>
                <table>
                    <tr height="20">
                        <td>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    GridLines="None" class="table table-striped">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Sno" HeaderText="学号">
                            <ItemStyle />
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="姓名">
                            <ItemStyle />
                        </asp:BoundField>
                        <asp:BoundField DataField="QQ" HeaderText="QQ号">
                            <ItemStyle />
                        </asp:BoundField>
                        <asp:BoundField DataField="P_Self_Num" HeaderText="联系电话">
                            <ItemStyle />
                        </asp:BoundField>
                        <asp:BoundField DataField="SS_Address" HeaderText="班级">
                            <ItemStyle />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="选择情况">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" class="btn btn-primary" runat="server" Text='分配角色'
                                    CommandName="EditCommand" CommandArgument='<%# Eval("Sno") %>' OnClick="LinkButton2_Click"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton3" class="btn btn-primary" runat="server" Text='禁止登录'
                                    Visible="true" CommandName="DeleteCommand" CommandArgument='<%# Eval("Sno") %>'
                                    OnClick="LinkButton3_Click1"></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle Width="200px" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
