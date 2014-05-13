<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexPage.aspx.cs" Inherits="computer2011.IndexPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="bootstrap/js/jquery-2.1.0.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="Table.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <%-- <script id="1">
        if (window != top) top.location.href = window.location.href;
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="1000px" height="729px" background="Images/zhuye.jpg" cellpadding="0"
            cellspacing="0">
            <tr height="270px">
                <td>
                    <table width="1000px" height="270" cellpadding="0" cellspacing="0">
                        <tr height="15px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="1000px" height="245px" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="40px">
                                        </td>
                                        <td width="580px">
                                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                <!-- Indicators -->
                                                <ol class="carousel-indicators">
                                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                                </ol>
                                                <!-- Wrapper for slides -->
                                                <div class="carousel-inner">
                                                    <div class="item active">
                                                        <img src="Images/bahe.jpg" alt="">
                                                        <%--  <div class="carousel-caption">
                                                        </div>--%>
                                                    </div>
                                                    <div class="item ">
                                                        <img src="Images/bahelingjiang.jpg" alt="" />
                                                        <%-- <div class="carousel-caption">
                                                        </div>--%>
                                                    </div>
                                                    <div class="item ">
                                                        <img src="Images/banjihuodong.jpg" alt="" />
                                                        <%-- <div class="carousel-caption">
                                                        </div>--%>
                                                    </div>
                                                </div>
                                                <!-- Controls -->
                                                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                                    <span class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                                                        href="#carousel-example-generic" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                                                        </span></a>
                                            </div>
                                        </td>
                                        <td valign="top">
                                            <table width="354px" height="258px" cellpadding="0" cellspacing="0">
                                                <tr height="40px">
                                                    <td>
                                                        <asp:Label ID="Label7" Style="color: #006699; font-family: 楷体; font-size: 14pt; font-weight: bold"
                                                            runat="server" Text="班级简介"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td valign="top">
                                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="197px"
                                                            PageSize="1" ShowHeader="False" Width="319px" BorderStyle="None">
                                                            <Columns>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("Text") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Left" BorderStyle="None" Font-Names="楷体" Font-Size="12pt"
                                                                        ForeColor="#006699" />
                                                                </asp:TemplateField>
                                                            </Columns>
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="26px">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table height="380px" width="1000px" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="38px">
                            </td>
                            <td width="269px">
                                <table width="269px" height="380px" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="23px">
                                        </td>
                                    </tr>
                                    <tr height="50px">
                                        <td align="center">
                                            <asp:Label ID="Label3" runat="server" Style="color: #006699; font-family: 隶书; font-size: 14pt;
                                                font-weight: bold" Text="User Login"></asp:Label>
                                            <div style='height: 2px; background-color: #3399FF; line-height: 2px; clear: both;
                                                display: block; overflow: hidden'>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr height="90px" align="center">
                                        <td>
                                            <asp:Image ID="Image1" CssClass="img-circle" runat="server" ImageUrl="~/Images/login.jpg"
                                                Height="71px" Width="89px" />
                                        </td>
                                    </tr>
                                    <tr height="30px" align="center">
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="用户:"></asp:Label>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr height="30px" align="center">
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="密码:"></asp:Label>
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr height="30px" align="center">
                                        <td>
                                            <asp:Button ID="Button1" CssClass="btn btn-info btn-xs" runat="server" Text="登录"
                                                OnClick="Button1_Click" />
                                            &nbsp;
                                            <asp:Button ID="Button2" CssClass="btn btn-info btn-xs" runat="server" Text="重置" />
                                        </td>
                                    </tr>
                                    <tr height="30px" align="center">
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server">新用户注册</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton2" runat="server">忘记密码？</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="90px">
                            </td>
                            <td width="245px">
                                <table width="245px" height="380px" cellpadding="0" cellspacing="0">
                                    <tr height="190px">
                                        <td>
                                            <table width="245px" height="190px" cellpadding="0" cellspacing="0">
                                                <tr height="35px">
                                                    <td>
                                                        <asp:Label Style="color: #006699; font-family: 楷体; font-size: 14pt; font-weight: bold"
                                                            ID="Label8" runat="server" Text="班级新闻"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr height="146px">
                                                    <td align="left">
                                                        <%-- <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">本学期开展排球比赛活动</a>--%>
                                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="146px"
                                                            PageSize="5" ShowHeader="False" Width="239px" BackColor="White" BorderStyle="None"
                                                            BorderWidth="0px">
                                                            <Columns>
                                                                <asp:TemplateField Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="LinkButton4" runat="server" Text='<%# Eval("Title") %>' Font-Underline="False"
                                                                            OnClick="LinkButton4_Click"></asp:LinkButton>
                                                                    </ItemTemplate>
                                                                    <ItemStyle Font-Names="楷体" Font-Size="12pt" ForeColor="#006699" Height="29px" />
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <RowStyle BorderStyle="None" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table width="245px" height="190px" cellpadding="0" cellspacing="0">
                                                <tr height="2px">
                                                    <td>
                                                        <div style='height: 1px; background-color: #3399FF; line-height: 1px; clear: both;
                                                            display: block; overflow: hidden'>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr height="35px">
                                                    <td>
                                                        <asp:Label ID="Label11" Style="color: #006699; font-family: 楷体; font-size: 14pt;
                                                            font-weight: bold" runat="server" Text="班级活动"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <%-- <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">我班积极参与篮球比赛项目</a>--%>
                                                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" Height="146px"
                                                            PageSize="5" ShowHeader="False" Width="239px" BackColor="White" BorderStyle="None"
                                                            BorderWidth="0px">
                                                            <Columns>
                                                                <asp:TemplateField Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="LinkButton6" runat="server" Text='<%# Eval("Title") %>' OnClick="LinkButton6_Click"></asp:LinkButton>
                                                                    </ItemTemplate>
                                                                    <ItemStyle Font-Names="楷体" Font-Size="12pt" ForeColor="#006699" />
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <RowStyle BorderStyle="None" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="70px">
                            </td>
                            <td width="265px">
                                <table width="265px" height="380px" cellpadding="0" cellspacing="0">
                                    <tr height="190px">
                                        <td>
                                            <table width="265px" height="190px" cellpadding="0" cellspacing="0">
                                                <tr height="35px">
                                                    <td>
                                                        <asp:Label Style="color: #006699; font-family: 楷体; font-size: 14pt; font-weight: bold"
                                                            ID="Label9" runat="server" Text="学习资料"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <%--<a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">ASP.NET高级应用</a>--%>
                                                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" Height="146px"
                                                            PageSize="5" ShowHeader="False" Width="239px" BackColor="White" BorderStyle="None"
                                                            BorderWidth="0px">
                                                            <Columns>
                                                                <asp:TemplateField Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="LinkButton5" runat="server" Text='<%# Eval("Title") %>' OnClick="LinkButton5_Click"></asp:LinkButton>
                                                                    </ItemTemplate>
                                                                    <ItemStyle Font-Names="楷体" Font-Size="12pt" ForeColor="#006699" />
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <RowStyle BorderStyle="None" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table width="265px" height="190px" cellpadding="0" cellspacing="0">
                                                <tr height="2px">
                                                    <td>
                                                        <div style='height: 1px; background-color: #3399FF; line-height: 1px; clear: both;
                                                            display: block; overflow: hidden'>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr height="35px">
                                                    <td>
                                                        <asp:Label ID="Label10" Style="color: #006699; font-family: 楷体; font-size: 14pt;
                                                            font-weight: bold" runat="server" Text="友情链接"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <%--  <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">红河学院主页</a>--%>
                                                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" Height="146px"
                                                            PageSize="5" ShowHeader="False" Width="239px" BackColor="White" BorderStyle="None"
                                                            BorderWidth="0px">
                                                            <Columns>
                                                                <asp:TemplateField Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="HyperLink1" Target="_blank" NavigateUrl='<%# Eval("text") %>'
                                                                            runat="server" Text='<%# Eval("Title") %>'></asp:HyperLink>
                                                                        
                                                                    </ItemTemplate>
                                                                    <ItemStyle Font-Names="楷体" Font-Size="12pt" ForeColor="#006699" />
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <RowStyle BorderStyle="None" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="20px">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr height="70px" align="center">
                <td>
                    <asp:Label ID="Label4" runat="server" Text="站内统计："></asp:Label><asp:Label ID="Label5"
                        runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
