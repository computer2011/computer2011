<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FLGLB.aspx.cs" Inherits="computer2011.FLGLB" %>

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
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="FID" HeaderText="分类号" />
                <asp:BoundField DataField="FLMC" HeaderText="分类名称" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:appConnectString %>" 
            DeleteCommand="DELETE FROM [Student_DFFL] WHERE [FID] = @FID" 
            InsertCommand="INSERT INTO [Student_DFFL] ([FID], [FLMC]) VALUES (@FID, @FLMC)" 
            SelectCommand="SELECT [FID], [FLMC] FROM [Student_DFFL]" 
            UpdateCommand="UPDATE [Student_DFFL] SET [FLMC] = @FLMC WHERE [FID] = @FID">
            <DeleteParameters>
                <asp:Parameter Name="FID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FID" Type="Int32" />
                <asp:Parameter Name="FLMC" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FLMC" Type="String" />
                <asp:Parameter Name="FID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="FID" HeaderText="分类号" />
                <asp:BoundField DataField="FLMC" HeaderText="分类名称" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="关闭" 
            type="button" class="btn btn-info" />
        <br />
    </center>
    </div>
    </form>
</body>
</html>
