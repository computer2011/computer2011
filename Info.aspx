<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="liuyanban.Info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="script/js/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 876px;
        }
    </style>
</head>
<body background="img/LYB.jpg">
    <form id="form1" runat="server">
    <br />
    <table>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:Button type="button" class="btn btn-primary" ID="btn全选" runat="server" OnClick="btn全选_Click"
                                Text="全选" Height="30px" Width="60px" Style="font-family: 宋体;" />
                        </td>
                        <td>
                            <asp:Button type="button" class="btn btn-danger" ID="Button2" runat="server" OnClick="Button2_Click"
                                Text="删除" Height="30px" Style="text-decoration: underline" />
                        </td>
                        <td align="right" class="style1">
                            <asp:Button type="button" class="btn btn-success" ID="Button3" runat="server" Text="&lt;&lt;返回留言板"
                                OnClick="Button3_Click" Height="30px" Width="150px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="80px"
                    Width="1000px" CellPadding="4" ForeColor="#333333" DataKeyNames="ID" AllowPaging="True"
                    OnPageIndexChanging="GridView1_PageIndexChanging" HorizontalAlign="Left" ShowFooter="True"
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="留言内容(需查看回复，请点击内容)">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Contents") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Text='<%# Eval("Contents") %>'
                                    CommandName='<%#Eval("ID") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Time" HeaderText="留言时间">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" Width="200px" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>
                    <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>
                    <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>
                    <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
                </asp:GridView>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
