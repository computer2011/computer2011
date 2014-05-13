<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xingmubiao.aspx.cs" Inherits="ZHLH.xingmubiao" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="XID" 
            DataSourceID="SqlDataSource1" Width="602px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="XID" HeaderText="项目号" ReadOnly="True" 
                    SortExpression="XID" />
                <asp:BoundField DataField="FID" HeaderText="分类号" SortExpression="FID" />
                <asp:BoundField DataField="XMMC" HeaderText="项目名称" SortExpression="XMMC" />
                <asp:BoundField DataField="CSF" HeaderText="初始分" SortExpression="CSF" />
                <asp:BoundField DataField="ZTBS" HeaderText="自填标识" SortExpression="ZTBS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ZHLHConnectionString %>" 
            DeleteCommand="DELETE FROM [XMB] WHERE [XID] = @XID" 
            InsertCommand="INSERT INTO [XMB] ([XID], [FID], [XMMC], [CSF], [ZTBS]) VALUES (@XID, @FID, @XMMC, @CSF, @ZTBS)" 
            SelectCommand="SELECT [XID], [FID], [XMMC], [CSF], [ZTBS] FROM [XMB]" 
            UpdateCommand="UPDATE [XMB] SET [FID] = @FID, [XMMC] = @XMMC, [CSF] = @CSF, [ZTBS] = @ZTBS WHERE [XID] = @XID">
            <DeleteParameters>
                <asp:Parameter Name="XID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="XID" Type="String" />
                <asp:Parameter Name="FID" Type="String" />
                <asp:Parameter Name="XMMC" Type="String" />
                <asp:Parameter Name="CSF" Type="Decimal" />
                <asp:Parameter Name="ZTBS" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FID" Type="String" />
                <asp:Parameter Name="XMMC" Type="String" />
                <asp:Parameter Name="CSF" Type="Decimal" />
                <asp:Parameter Name="ZTBS" Type="String" />
                <asp:Parameter Name="XID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="XID" DataSourceID="SqlDataSource1" Height="50px" Width="218px">
            <Fields>
                <asp:BoundField DataField="XID" HeaderText="项目号" ReadOnly="True" 
                    SortExpression="XID" />
                <asp:BoundField DataField="FID" HeaderText="分类号" SortExpression="FID" />
                <asp:BoundField DataField="XMMC" HeaderText="项目名称" SortExpression="XMMC" />
                <asp:BoundField DataField="CSF" HeaderText="初始分" SortExpression="CSF" />
                <asp:BoundField DataField="ZTBS" HeaderText="自填标识" SortExpression="ZTBS" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
