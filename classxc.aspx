<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="classxc.aspx.cs" Inherits="classphoto.classxc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>班级相册</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 50px;
        }
        .style2
        {
            font-size: x-large;
        }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <table align="center">
        <tr>
            <td colspan="2" class="style5" align="center" bgcolor="#99CCFF">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style2">班级相册</span>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Button type="button" class="btn btn-info"  ID="Button1" runat="server" 
                    Text="上传" OnClick="Button1_Click" />
                <asp:Button type="button" class="btn btn-link" ID="Button3" runat="server" 
                    Height="37px" OnClick="Button3_Click" Text="相册管理"
                    Width="84px" />
            </td>
            <td class="style1">
                <asp:Button  type="button" class="btn btn-info" ID="Button2" runat="server" 
                    Text="个人风采" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <table>
                    <table>
                        <tr>
                            <td class="style2">
                                班级风采:
                            </td>
            </td>
        </tr>
        <tr height="150">
            <td width="150px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/Q.jpg" />
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
        <tr height="150">
            <td width="150">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/img/34.jpg" />
            </td>
        </tr>
        <tr height="150">
            <td width="150">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/bahe.jpg" 
                    Width="794px" />
            </td>
        </tr>
        <tr height="150">
        <td whight="150">
        
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/banjihuodong.jpg" 
                Width="794px" />
        </td>
        </tr>
    </table>
    </td>
     </tr> 
     </table> 
     </table>
    </form>
</body>
</html>
