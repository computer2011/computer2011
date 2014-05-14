<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pftj.aspx.cs" Inherits="computer2011.pftj" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Sno" HeaderText="学号" />
                <asp:BoundField DataField="DF" HeaderText="得分" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:appConnectString %>" 
            DeleteCommand="DELETE FROM [Student_PFTJ] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [Student_PFTJ] ([Sno], [DF]) VALUES (@Sno, @DF)" 
            SelectCommand="SELECT [ID], [Sno], [DF] FROM [Student_PFTJ]" 
            UpdateCommand="UPDATE [Student_PFTJ] SET [Sno] = @Sno, [DF] = @DF WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="DF" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="DF" Type="Decimal" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
