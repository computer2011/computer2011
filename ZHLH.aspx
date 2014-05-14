<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHLH.aspx.cs" Inherits="computer2011.ZHLH" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="LID" HeaderText="综合量化号" />
                <asp:BoundField DataField="Sno" HeaderText="学号" />
                <asp:BoundField DataField="XN" HeaderText="学年" />
                <asp:BoundField DataField="DF" HeaderText="得分" />
                <asp:BoundField DataField="DFYJ" HeaderText="得分依据" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:appConnectString %>" 
            DeleteCommand="DELETE FROM [Student_LHPF] WHERE [LID] = @LID" 
            InsertCommand="INSERT INTO [Student_LHPF] ([Sno], [XN], [DF], [DFYJ]) VALUES (@Sno, @XN, @DF, @DFYJ)" 
            SelectCommand="SELECT [LID], [Sno], [XN], [DF], [DFYJ] FROM [Student_LHPF]" 
            UpdateCommand="UPDATE [Student_LHPF] SET [Sno] = @Sno, [XN] = @XN, [DF] = @DF, [DFYJ] = @DFYJ WHERE [LID] = @LID">
            <DeleteParameters>
                <asp:Parameter Name="LID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="XN" Type="String" />
                <asp:Parameter Name="DF" Type="Decimal" />
                <asp:Parameter Name="DFYJ" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="XN" Type="String" />
                <asp:Parameter Name="DF" Type="Decimal" />
                <asp:Parameter Name="DFYJ" Type="String" />
                <asp:Parameter Name="LID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="LID" HeaderText="综合量化号" />
                <asp:BoundField DataField="Sno" HeaderText="学号" />
                <asp:BoundField DataField="XN" HeaderText="学年" />
                <asp:BoundField DataField="DF" HeaderText="得分" />
                <asp:BoundField DataField="DFYJ" HeaderText="得分依据" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" Height="26px" Text="退出" Width="75px" 
            onclick="Button2_Click"  type="button" class="btn btn-info" />
    
    </div>
    </form>
</body>
</html>
