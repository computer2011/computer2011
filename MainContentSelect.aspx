<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainContentSelect.aspx.cs"
    Inherits="computer2011.MainContentSelect" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" class="form-horizontal" role="form" runat="server">
    <div id="divse" align="center" runat="server">
        <div class="form-group">
            <label class="col-sm-2 control-label">
                选择栏目：</label>
            <div class="col-sm-10">
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" Width="224px"
                    OnTextChanged="DropDownList1_TextChanged" AutoPostBack="True">
                </asp:DropDownList>
            </div>
        </div>
        <div align="center">
            <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AutoGenerateColumns="False"
                BorderStyle="None"  Width="826px" GridLines="None">
                <Columns>
                    <asp:TemplateField HeaderText="栏目类别">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>' Visible="False"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("LBMC") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle ForeColor="#99CCFF" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="标题">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Eval("Title") %>' 
                                onclick="LinkButton2_Click"></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle ForeColor="#99CCFF" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="FBTime" HeaderText="发布时间">
                        <HeaderStyle ForeColor="#99CCFF" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Author" HeaderText="发布人">
                        <HeaderStyle ForeColor="#99CCFF" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="操作">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">删除</asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle ForeColor="#99CCFF" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle Font-Names="微软雅黑" Font-Size="12pt" HorizontalAlign="Center" />
                <RowStyle Font-Names="微软雅黑" Font-Size="13pt" HorizontalAlign="Left" />
                <SelectedRowStyle HorizontalAlign="Center" />
            </asp:GridView>
        </div>
        <div>
            <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" Text="返回发布" OnClick="Button1_Click" /></div>
    </div>
    </form>
</body>
</html>
