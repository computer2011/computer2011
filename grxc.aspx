<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grxc.aspx.cs" Inherits="classphoto.grxc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>班级相册</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 556px;
        }
        .style2
        {
            width: 534px;
        }
        .style3
        {
            font-size: x-large;
        }
        .style4
        {
            width: 534px;
            font-size: x-large;
        }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <table align="center">
        <tr>
            <td colspan="3" class="style5" align="center" bgcolor="#66CCFF">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style3">&nbsp; 班级相册 </span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button type="button" class="btn btn-info" ID="Button1" runat="server" 
                    Text="上传" OnClick="Button1_Click" Width="118px"/>
                    </td>
                    <td>
                <asp:Button type="button" class="btn btn-info" ID="Button3" runat="server" 
                     onclick="Button3_Click"  Text="相册管理" Width="119px" />
            </td>
            <td>
                <asp:Button type="button" class="btn btn-info" ID="Button2" runat="server" 
                    Text="班级风采" OnClick="Button2_Click" Width="117px" />
            </td>
        </tr>
        <tr>
            <td class="style1" colspan=3>
                <table>
                    <table>
                        <tr>
                            <td class="style4">
                                个人风采:
                            </td>
            </td>
        </tr>
        <tr height="150">
            <td class="style2" width="150">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/123.jpg" />
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
            <td class="style2" width="150">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/img/879.jpg" />
            </td>
        </tr>
        <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <asp:Image ID="Image5" runat="server" 
    ImageUrl='<%# Eval("图片路径") %>' />
                </ItemTemplate>
            </asp:DataList>
        </td>
        </tr>
        <tr height="150">
        <td width="150">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/img/gere.jpg" />
        </td>
        </tr>
         <tr height="150">
        <td width="150">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/img/saipao.jpg" />
        </td>
        </tr>
    </table>
    </td> </tr> </table> </table>
    </form>
</body>
</html>
