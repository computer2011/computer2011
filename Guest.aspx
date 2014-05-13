﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guest.aspx.cs" Inherits="liuyanban.Guest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>留言板</title>
    <style type="text/css">
        .style1
        {
            font-family: "Adobe 楷体 Std R";
            font-size: x-large;
        }
        .style2
        {
            font-family: 华文行楷;
            color: #66FF99;
        }
        .style3
        {
            font-family: 楷体;
        }
    </style>
</head>
<body>
    <h1 align="center">
        <span class="style2">留言板</span>
    </h1>
    <center>
        <table border="0" height="115" style="width: 80%">
            <tr>
                <td width="100%" align="center" height="160">
                    <p class="style1">
                        <strong>欢迎对本站内容提出您宝贵的意见与建议，请遵守如下规则：</strong>
                    </p>
                    <p align="left" class="style3">
                        1. 您的留言应遵守国家的法律法规；
                    </p>
                    <p align="left" class="style3">
                        2. 您的留言应尊重他人，不得对他人构成任何形式的侵害；</p>
                    <p align="left" class="style3">
                        3. 本站保留修改和删除留言的权利。</p>
                    <p align="left">
                    </p>
                </td>
            </tr>
            <tr>
                <td height="210" align="center">
                    <form id="form1" runat="server">
                    <table border="0" cellspacing="0" cellpadding="3" style="width: 370px; height: 222px">
                        <tr>
                            <td height="31" align="left" bgcolor="#CCFFFF">
                                <asp:Label ID="Label1" runat="server" Text="请输入留言内容！" Style="font-size: x-large;
                                    font-family: 华文行楷; "></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td height="160" bgcolor="#CCFFFF" class="style5">
                                <asp:TextBox ID="Contents" runat="server" Columns="50" TextMode="MultiLine" Height="140px"
                                    Width="520px" Style="font-family: 'Adobe 宋体 Std L'; font-size: 12pt;"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <p align="center">
                        <asp:Button ID="Button1" runat="server" Text="提交留言" Height="30px" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="浏览留言" Height="30px" OnClick="Button2_Click" />
                    </p>
                    </form>
                </td>
            </tr>
        </table>
    </center>
</body>
</html>
