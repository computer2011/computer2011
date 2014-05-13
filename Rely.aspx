<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rely.aspx.cs" Inherits="liuyanban.Rely" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="script/js/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-size: xx-large;
            font-family: 幼圆;
            color: #0066FF;
        }
        .style2
        {
            font-family: 华文行楷;
        }
        .style3
        {
            font-family: 华文行楷;
            color: #66FF99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" width="70%" cellpadding="5" cellspacing="10">
        <tr>
            <td colspan="2" class="style1">
                <span class="style3">留言回复</span><strong> </strong>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button type="button" class="btn btn-primary" ID="Button1" runat="server" Text="&lt;&lt;返回留言列表"
                    OnClick="Button1_Click" Height="30px" Width="150px" 
                    Style="font-family: 宋体;" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Style="color: #00FF99; font-size: x-large;
                    font-weight: 700; text-decoration: underline; font-family: 华文行楷;"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button type="button" class="btn btn-info" ID="Button2" runat="server" Text="全选"
                    OnClick="Button2_Click" Height="30px" Style="text-decoration: underline" />
                <asp:Button type="button" class="btn btn-danger" ID="Button3" runat="server" Text="删除"
                    OnClick="Button3_Click" Height="30px" Style="text-decoration: underline" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="3" Width="880px" DataKeyNames="ID" BackColor="White" BorderColor="White"
                    BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" AllowPaging="True" PageSize="5"
                    OnPageIndexChanging="GridView1_PageIndexChanging" GridLines="None" 
                    HorizontalAlign="Left">
                    <Columns>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="回复者姓名：" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Rely" HeaderText="回复内容" />
                        <asp:BoundField DataField="Time" HeaderText="回复时间" >
                        <ItemStyle Width="200px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label2" runat="server" Text="请   输  入  姓  名 ：" Style="font-size: large"
                    CssClass="style2"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" 
                    Style="margin-top: 20px;" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="请输入回复内容：" Style="font-size: large;
                    font-family: 华文行楷;"></asp:Label>
                <asp:TextBox ID="txtRely" runat="server" Columns="50" TextMode="MultiLine" Height="160px"
                    Width="340px"></asp:TextBox>
                <asp:LinkButton class="btn btn-danger" ID="LinkButton1" runat="server" 
                    OnClick="LinkButton1_Click" Height="30px">回复</asp:LinkButton>
            </td>
        </tr>
    </table>
    <p></p>
    </form>
</body>
</html>
