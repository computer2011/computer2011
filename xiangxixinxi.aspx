<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xiangxixinxi.aspx.cs" Inherits="ZHLH.xiangxixinxi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <senter>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
            <Columns>               
                <asp:BoundField DataField="XMMC" HeaderText="项目名称" />
                <asp:BoundField DataField="CSF" HeaderText="得分" />
                <asp:BoundField DataField="DFYJ" HeaderText="得分依据" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="放回" type="button" class="btn btn-info" />
       </senter>
    </div>
    </form>
</body>
</html>
