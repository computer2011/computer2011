<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zonghelianghua.aspx.cs" Inherits="ZHLH.zonghelianghua" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="LID" 
            DataSourceID="SqlDataSource1" Width="627px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="LID" HeaderText="排名" ReadOnly="True" 
                    SortExpression="LID" />
                <asp:BoundField DataField="sno" HeaderText="学号" SortExpression="sno" />
                <asp:BoundField DataField="XN" HeaderText="学年" SortExpression="XN" />
                <asp:BoundField DataField="DF" HeaderText="得分" SortExpression="DF" />
                <asp:BoundField DataField="DFYJ" HeaderText="得分依据" SortExpression="DFYJ" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ZHLHConnectionString %>" 
            DeleteCommand="DELETE FROM [LHPF] WHERE [LID] = @LID" 
            InsertCommand="INSERT INTO [LHPF] ([LID], [sno], [XN], [XID], [DF], [DFYJ]) VALUES (@LID, @sno, @XN, @XID, @DF, @DFYJ)" 
            SelectCommand="SELECT [LID], [sno], [XN], [XID], [DF], [DFYJ] FROM [LHPF]" 
            UpdateCommand="UPDATE [LHPF] SET [sno] = @sno, [XN] = @XN, [XID] = @XID, [DF] = @DF, [DFYJ] = @DFYJ WHERE [LID] = @LID">
            <DeleteParameters>
                <asp:Parameter Name="LID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LID" Type="String" />
                <asp:Parameter Name="sno" Type="String" />
                <asp:Parameter Name="XN" Type="DateTime" />
                <asp:Parameter Name="XID" Type="String" />
                <asp:Parameter Name="DF" Type="Decimal" />
                <asp:Parameter Name="DFYJ" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="sno" Type="String" />
                <asp:Parameter Name="XN" Type="DateTime" />
                <asp:Parameter Name="XID" Type="String" />
                <asp:Parameter Name="DF" Type="Decimal" />
                <asp:Parameter Name="DFYJ" Type="String" />
                <asp:Parameter Name="LID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="LID" DataSourceID="SqlDataSource1" Height="50px" Width="261px">
            <Fields>
                <asp:BoundField DataField="LID" HeaderText="排名" ReadOnly="True" 
                    SortExpression="LID" />
                <asp:BoundField DataField="sno" HeaderText="学号" SortExpression="sno" />
                <asp:BoundField DataField="XN" HeaderText="学年" SortExpression="XN" />
                <asp:BoundField DataField="XID" HeaderText="项目号" SortExpression="XID" />
                <asp:BoundField DataField="DF" HeaderText="得分" SortExpression="DF" />
                <asp:BoundField DataField="DFYJ" HeaderText="得分依据" SortExpression="DFYJ" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
