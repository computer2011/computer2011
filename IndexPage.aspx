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
                                        <td>
                                            <table width="354px" height="258px" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <a style="color: #006699; font-family: 楷体; font-size: 14pt; font-weight: bold">2011级计算机科学与技术</a>
                                                    </td>
                                                </tr>
                                                <tr align="left">
                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">1.2011级计算机科学与技术班简介</a>
                                                    </td>
                                                </tr>
                                                <tr align="left">
                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">2.班级网站维护相关准备工作</a>
                                                    </td>
                                                </tr>
                                                <tr align="left">
                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">3.关于近期校园安全的重要通知</a>
                                                    </td>
                                                </tr>
                                                <tr align="left">
                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">4.关于本学期做好假期实习准备工作</a>
                                                    </td>
                                                </tr>
                                                <tr align="left">
                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">5.本学期我班将进行推优工作</a>
                                                    </td>
                                                </tr>
                                                <tr align="left">
                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">6.认真贯彻落实党的十八大精神</a>
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
                                            <asp:Button ID="Button1" CssClass="btn btn-info btn-xs" runat="server" Text="登录" />
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
                                                <tr height="40px">
                                                    <td>
                                                        <a style="color: #006699; font-family: 楷体; font-size: 14pt; font-weight: bold">最新班级新闻</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">本学期开展排球比赛活动</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">本学期将进行优秀班集体评选</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">本学期的篮球比赛已圆满结束</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">本学期将做好假期实习准备工作</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">本学期将进行推优工作</a>
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
                                                <tr height="40px">
                                                    <td>
                                                        <a style="color: #006699; font-family: 楷体; font-size: 14pt; font-weight: bold">最新活动回顾</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">我班积极参与篮球比赛项目</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">我班集体组织户外拓展活动</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">进行班级网站建设的筹划工作</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">班级集体组织到长桥海郊游</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">我班在排球比赛中取得优异成绩</a>
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
                                                <tr height="40px">
                                                    <td>
                                                        <a style="color: #006699; font-family: 楷体; font-size: 14pt; font-weight: bold">最新学习资料</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">ASP.NET高级应用</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">C#.NET高级应用实例</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">路由器与交换机课程实验</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">C#网络应用编程实例</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">计算机维护技术ppt</a>
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
                                                <tr height="40px">
                                                    <td>
                                                        <a style="color: #006699; font-family: 楷体; font-size: 14pt; font-weight: bold">友情链接</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">红河学院主页</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">红河学院校园日历</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">红河学院学生学费查询系统</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">红河学院学生选课系统</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <a style="color: #006699; font-family: 楷体; font-size: 12pt; font-weight: normal;
                                                            text-decoration: underline">红河学院工学院资源下载</a>
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
