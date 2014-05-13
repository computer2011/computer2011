<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rely.aspx.cs" Inherits="liuyanban.Rely" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                <asp:Button ID="Button1" runat="server" Text="<<<<返回留言列表" OnClick="Button1_Click"
                    Height="28px" Width="120px" 
                    style="font-family: 宋体; text-decoration: underline" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Style="color: #0099CC; font-size: x-large;
                    font-weight: 700; text-decoration: underline;"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Text="全选" OnClick="Button2_Click" 
                    Height="28px" style="text-decoration: underline" />
                <asp:Button ID="Button3" runat="server" Text="删除" OnClick="Button3_Click" 
                    Height="28px" style="text-decoration: underline" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="Black" Width="878px" DataKeyNames="ID" BackColor="#CCCCCC" BorderColor="#999999"
                    BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" AllowPaging="True" PageSize="5"
                    OnPageIndexChanging="GridView1_PageIndexChanging">
                    <Columns>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="回复者姓名：" />
                        <asp:BoundField DataField="Rely" HeaderText="回复内容" />
                        <asp:BoundField DataField="Time" HeaderText="回复时间" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label2" runat="server" Text="请   输  入  姓  名 ：" Style="font-size: large"
                    CssClass="style2"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Style="margin-top: 20px;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="请输入回复内容：" 
                    Style="font-size: large; font-family: 华文行楷;"></asp:Label>
                <asp:TextBox ID="txtRely" runat="server" Columns="50" TextMode="MultiLine" Height="31px"
                    Width="341px"></asp:TextBox>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">回复</asp:LinkButton>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
