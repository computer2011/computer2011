<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pingfentongji.aspx.cs" Inherits="ZHLH.pingfentongji" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ZHLHConnectionString %>" 
            DeleteCommand="DELETE FROM [PFTJ] WHERE [sno] = @sno" 
            InsertCommand="INSERT INTO [PFTJ] ([sno], [DF], [name]) VALUES (@sno, @DF, @name)" 
            SelectCommand="SELECT [sno], [DF], [name] FROM [PFTJ]" 
            UpdateCommand="UPDATE [PFTJ] SET [DF] = @DF, [name] = @name WHERE [sno] = @sno">
            <DeleteParameters>
                <asp:Parameter Name="sno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="sno" Type="String" />
                <asp:Parameter Name="DF" Type="Decimal" />
                <asp:Parameter Name="name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DF" Type="Decimal" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="sno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="444px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="sno" HeaderText="学号" SortExpression="sno" />
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                <asp:BoundField DataField="DF" HeaderText="得分" SortExpression="DF" />
            </Columns>
        </asp:GridView>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataSourceID="SqlDataSource1" Height="104px" Width="158px" 
        AllowPaging="True">
            <Fields>
                <asp:BoundField DataField="sno" HeaderText="学号" SortExpression="sno" />
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                <asp:BoundField DataField="DF" HeaderText="得分" SortExpression="DF" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    <br />
    </form>
</body>
</html>
