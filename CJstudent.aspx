<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CJstudent.aspx.cs" Inherits="computer2011.CJstudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
       <td> 
           <asp:LinkButton ID="HomeLinkButton" runat="server" 
               onclick="HomeLinkButton_Click">返回问卷主页</asp:LinkButton></td>
    </tr>
        <tr>
           <td>
               <asp:Label ID="Label1" runat="server" Text="问卷名称"></asp:Label></td>
           <td>
               <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="266px">
               </asp:DropDownList>
           </td>
           <td></td>
           <td></td>
        </tr>
        <tr>
           <td>
               <asp:LinkButton ID="CJstuNumbtn" runat="server" onclick="CJstuNumbtn_Click">参加学生人数：</asp:LinkButton></td>
           <td>
               <asp:Label ID="Label2" runat="server" Text="  "></asp:Label></td>
           <td></td>
           <td></td>
        </tr>
          <tr>
           <td>
               <asp:LinkButton ID="nostubtn" runat="server" onclick="nostubtn_Click">未参加学生名单：</asp:LinkButton></td>
           <td>
               <asp:GridView ID="noGridView" runat="server" AutoGenerateColumns="False">
                   <Columns>
                       <asp:BoundField DataField="sno" HeaderText="学号" />
                       <asp:BoundField DataField="name" HeaderText="姓名" />
                   </Columns>
               </asp:GridView>
               </td>
           <td><asp:LinkButton ID="yesstubtn" runat="server" onclick="yesstubtn_Click">参加学生名单：</asp:LinkButton></td>
           <td>
               <asp:GridView ID="yesGridView1" runat="server" AutoGenerateColumns="False">
                   <Columns>
                       <asp:BoundField DataField="sno" HeaderText="学号" />
                       <asp:BoundField DataField="name" HeaderText="姓名" />
                   </Columns>
               </asp:GridView>
           </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
