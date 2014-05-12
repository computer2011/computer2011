<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WJSC.aspx.cs" Inherits="WJDC.WJSC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>问卷调查——问卷删除</title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
     <table align="center" width="1000">
      <tr>
       <td width="80">
        <asp:LinkButton ID="homeLinkButton3" runat="server" onclick="homeLinkButton3_Click">问卷主页</asp:LinkButton></td>
         <td width="80">
             <asp:LinkButton ID="WJLULinkButton" runat="server" onclick="WJLULinkButton_Click">问卷录入</asp:LinkButton></td>       
        <td width="80"></td>
        <td></td>
        </tr>
        </table>
    </div>
    <br>
    <br>
    <div>
         <table align="center" width="1000">
            <tr>
               <td><asp:GridView ID="delGridView" runat="server" AutoGenerateColumns="False" 
               AllowPaging="True" ShowHeader="False"
             GridLines="None" Width="430px">
                   <Columns>
                       <asp:TemplateField>
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("wjh") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Bind("wjh") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField>
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Wjm") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("Wjm") %>'></asp:Label>
                               <asp:LinkButton ID="delLinkButton" runat="server" onclick="delLinkButton_Click">删除</asp:LinkButton>
                           </ItemTemplate>
                       </asp:TemplateField>
                   </Columns>
             </asp:GridView></td>
            </tr>
             
         </table>
    </div>
    </form>
</body>
</html>
