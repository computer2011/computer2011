<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="noTj.aspx.cs" Inherits="WJDC.noTj" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>提交失败</title>
    <style>
        div
        {
            width: 580px;
            height: 190px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -95px 0 0 -290px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" width="1000">
        <tr>
            <td width="80">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="homeLinkButton_Click" type="button"
                    class="btn btn-primary">问卷主页</asp:LinkButton>
            </td>
            <td width="80">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="MclrLinkButton_Click">问卷录入</asp:LinkButton>
            </td>
            <td width="80">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="delLinkButton_Click">问卷删除</asp:LinkButton>
            </td>
            <td width="80">
            </td>
            <td>
            </td>
        </tr>
        <tr height="300">
            <td width="300" colspan=3>
            </td>
            <td>
                <p>
                    对不起，你已参加过本次问卷调查！请返回<br />
                    <asp:LinkButton ID="LinkButton" runat="server" OnClick="LinkButton_Click">问卷主页</asp:LinkButton>重新选择你需要参与的问卷调查！</p>
            </td>
        </tr>
    </table>
    <hr />
    <br>
   
    </form>
</body>
</html>
