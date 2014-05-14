<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zitian.aspx.cs" Inherits="ZHLH.zitian" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="script/js/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
            <AlternatingRowStyle CssClass ="success" />
            <Columns>
                <asp:TemplateField HeaderText="项目名称">
                    <ItemTemplate>
                      <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("XID") %>' 
                            Visible="False"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("XMMC") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="得分">
                   <ItemTemplate>                 
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="得分依据">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle CssClass ="denger" />
        </asp:GridView>
        
        <br />
        <br />
        <br />
        
        <br />
        <asp:Button ID="Button1" runat="server" Text="提交" Height="27px" 
            onclick="Button1_Click" Width="76px" type="button" class="btn btn-success" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="26px" Text="退出" Width="75px" 
            onclick="Button2_Click"  type="button" class="btn btn-info" />
        <br />
        <br />
        </center>
    </div>
    </form>
</body>
</html>
