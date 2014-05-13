<%@ Page Title="" Language="C#" MasterPageFile="~/班级相册.Master" AutoEventWireup="true" CodeBehind="班级相册.aspx.cs" Inherits="photo.班级相册1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style6
        {
            height: 532px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table >
    <tr>
    <td>个人风采：</td>
    </tr>
    <tr>
    <td>
    <%--<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" EnableTheming="True"
                    AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"
                    Width="152px" onselectedindexchanged="Page_Load" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="图片路径" DataField="图片路径" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>--%>
                </td>
                </tr>
                <tr><td>
                    <asp:Image ID="Image1" runat="server" Height="413px" ImageUrl="~/img/123.jpg" 
                        Width="727px" />
                </td></tr>
                <tr>
                <td class="style6">
                    <asp:Image ID="Image2" runat="server" Height="520px" ImageUrl="~/img/879.jpg" 
                        Width="679px" />
                
                </td></tr>
                </table>
</asp:Content>

