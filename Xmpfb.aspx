<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Xmpfb.aspx.cs" Inherits="computer2011.Xmpfb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="XID" HeaderText="项目号" />
                <asp:BoundField DataField="XMMC" HeaderText="项目名称" />
                <asp:BoundField DataField="CSF" HeaderText="初始分" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:appConnectString %>" 
            DeleteCommand="DELETE FROM [Student_XMB] WHERE [XID] = @XID" 
            InsertCommand="INSERT INTO [Student_XMB] ([XMMC], [CSF]) VALUES (@XMMC, @CSF)" 
            SelectCommand="SELECT [XID], [XMMC], [CSF] FROM [Student_XMB]" 
            UpdateCommand="UPDATE [Student_XMB] SET [XMMC] = @XMMC, [CSF] = @CSF WHERE [XID] = @XID">
            <DeleteParameters>
                <asp:Parameter Name="XID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="XMMC" Type="String" />
                <asp:Parameter Name="CSF" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="XMMC" Type="String" />
                <asp:Parameter Name="CSF" Type="Decimal" />
                <asp:Parameter Name="XID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="XID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="XID" HeaderText="项目号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="XID" />
                <asp:BoundField DataField="XMMC" HeaderText="项目名称" SortExpression="XMMC" />
                <asp:BoundField DataField="CSF" HeaderText="初始分" SortExpression="CSF" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" Height="26px" Text="退出" Width="75px" 
            onclick="Button2_Click"  type="button" class="btn btn-info" />
    </center>
    </div>
    </form>
</body>
</html>
