﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="classxc.aspx.cs" Inherits="classphoto.classxc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>班级相册</title>
</head>
<body bgcolor="#cc99ff">
    <form id="form1" runat="server">
   
    <table align="center">
    <tr>
    <td colspan="2" class="style5" align="center" bgcolor="Lime">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 班级相册</td></tr>
    <tr>
    <td class="style4"> 
        <asp:Button ID="Button1" runat="server" Text="上传" onclick="Button1_Click" 
            BackColor="Lime" /> </td>
            <td> 
                <asp:Button ID="Button2" runat="server" Text="个人风采" onclick="Button2_Click" />  </td>
    </tr>
        <tr>
            <td class="style4">
            <table >
                <table>
                    <tr>
                        <td>
                            班级风采:
                        </td>
                        
                        
            </td>
        </tr>
     
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Width="550px" 
                    ImageUrl="~/img/Q.jpg" Height="418px" />
                <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableTheming="True"
                    AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"
                    Width="152px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="图片路径" DataField="图片的路径" />
                        <asp:ImageField HeaderText="图片">
                        </asp:ImageField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>--%>
                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
            </td>
        </tr>
        <tr><td>
            <asp:Image ID="Image2" runat="server" Height="579px" ImageUrl="~/img/34.jpg" 
                Width="539px" />
        
        </td></tr>
    </table>
    </td>

    
    </tr> 
    
    </table>
    </table>
    </form>
</body>
</html>
