<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MCXS.aspx.cs" Inherits="WJDC.MCXS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>问卷调查——问卷主页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" width="1000">      
      <tr>
       <td width="80">
        <asp:LinkButton ID="homeLinkButton" runat="server" onclick="homeLinkButton_Click">问卷主页</asp:LinkButton></td>
         <td width="80">
        <asp:LinkButton ID="MclrLinkButton" runat="server" onclick="MclrLinkButton_Click">问卷录入</asp:LinkButton></td>       
        <td width="80">
        <asp:LinkButton ID="delLinkButton" runat="server" onclick="delLinkButton_Click">问卷删除</asp:LinkButton></td>
        <td width="160">
        <asp:LinkButton ID="CJLinkButton" runat="server" onclick="CJLinkButton_Click" >学生参加情况统计</asp:LinkButton>
        </td>
        <td></td>
        </tr>
        </table>
    </div>
    <br><br>
    <div>
    <center>
        <asp:GridView ID="GridView1" runat="server" 
           
            AutoGenerateColumns="False" AllowPaging="True" ShowHeader="False"
             GridLines="None" Width="533px">
        <columns>
            <asp:TemplateField Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("wjh") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("wjh") %>'></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("sno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="wjm" HeaderText="问卷名称" />
            <asp:BoundField DataField="wjtime" HeaderText="问卷时间" 
                DataFormatString="[{0:d}]" />
            <asp:BoundField DataField="name" HeaderText="提问人" />
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                    <asp:LinkButton ID="dtbtn" runat="server" onclick="dtbtn_Click">答题</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <asp:LinkButton ID="TJbtn" runat="server" onclick="TJbtn_Click" Text="查看投票"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </columns>
        </asp:GridView>
        <hr />
        <br />
        <br />
        <br />
        </center>
    </div>
    </form>
</body>
</html>
