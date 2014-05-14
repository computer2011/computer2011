<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shixiantongji.aspx.cs"
    Inherits="ZHLH.shixiantongji" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"> 学年：</asp:Label>
        &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" type="button" class="btn btn-default dropdown-toggle"
            data-toggle="dropdown">
            <asp:ListItem>2011-2012</asp:ListItem>
            <asp:ListItem>2012-2013</asp:ListItem>
            <asp:ListItem>2013-2014</asp:ListItem>
            <asp:ListItem>2014-2015</asp:ListItem>
            <asp:ListItem>2015-2016</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" type="button" class="btn btn-success" />
        <asp:Button ID="Button2" runat="server" Text="综合量化填写" type="button" class="btn btn-success" onclick="Button2_Click" /> 
        <asp:Button ID="Button3" runat="server" Text="项目管理" type="button" class="btn btn-success" onclick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="分类管理" type="button"  class="btn btn-success" onclick="Button4_Click" />
         <asp:Button ID="Button5" runat="server" Text="管理综合量化" type="button" class="btn btn-success" onclick="Button5_Click"  />
        <br />
        <br />
        <br />
        <br />
        <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="608px">
                <Columns>
                    <asp:BoundField DataField="Sno" HeaderText="学号" />
                    <asp:BoundField DataField="Name" HeaderText="姓名" />
                    <asp:BoundField DataField="XN" HeaderText="学年" />
                    <asp:BoundField DataField="DF" HeaderText="成绩" />
                    <asp:BoundField DataField="PM" HeaderText="排名" />
                    <asp:BoundField DataField="JZXJ" HeaderText="奖助学金" />
                    <asp:HyperLinkField DataNavigateUrlFields="Sno,XN" DataNavigateUrlFormatString="~/xiangxixinxi.aspx?Sno={0}&amp;XN={1}"
                        Target="_blank" Text="详细信息" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="修改" type="button" class="btn btn-warning" />--%>
        </center>
    </div>
    </form>
</body>
</html>
