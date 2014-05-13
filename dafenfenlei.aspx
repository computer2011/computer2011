<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dafenfenlei.aspx.cs" Inherits="ZHLH.dafenfenlei" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FID" 
            DataSourceID="SqlDataSource1" Width="420px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="FID" HeaderText="分类号" ReadOnly="True" 
                    SortExpression="FID" />
                <asp:BoundField DataField="FLMC" HeaderText="分类名称" SortExpression="FLMC" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ZHLHConnectionString %>" 
            DeleteCommand="DELETE FROM [DFFL] WHERE [FID] = @original_FID AND [FLMC] = @original_FLMC" 
            InsertCommand="INSERT INTO [DFFL] ([FID], [FLMC]) VALUES (@FID, @FLMC)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [FID], [FLMC] FROM [DFFL]" 
            UpdateCommand="UPDATE [DFFL] SET [FLMC] = @FLMC WHERE [FID] = @original_FID AND [FLMC] = @original_FLMC">
            <DeleteParameters>
                <asp:Parameter Name="original_FID" Type="String" />
                <asp:Parameter Name="original_FLMC" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FID" Type="String" />
                <asp:Parameter Name="FLMC" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FLMC" Type="String" />
                <asp:Parameter Name="original_FID" Type="String" />
                <asp:Parameter Name="original_FLMC" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="FID" DataSourceID="SqlDataSource1" Height="50px" Width="170px">
            <Fields>
                <asp:BoundField DataField="FID" HeaderText="分类号" ReadOnly="True" 
                    SortExpression="FID" />
                <asp:BoundField DataField="FLMC" HeaderText="分类名称" SortExpression="FLMC" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
