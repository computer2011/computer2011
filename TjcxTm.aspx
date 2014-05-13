<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TjcxTm.aspx.cs" Inherits="WJDC.TjcxTm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" width="1000" >      
      <tr>
       <td width="80">
        <asp:LinkButton ID="homeLinkButton" runat="server" onclick="homeLinkButton_Click">问卷主页</asp:LinkButton></td>
         <td width="80">
        <asp:LinkButton ID="MclrLinkButton" runat="server" onclick="MclrLinkButton_Click">问卷录入</asp:LinkButton></td>       
        <td width="80">
        <asp:LinkButton ID="delLinkButton" runat="server" onclick="delLinkButton_Click">问卷删除</asp:LinkButton></td>
        <td width="160">
        <asp:LinkButton ID="CJLinkButton" runat="server" onclick="CJLinkButton_Click" >学生参加情况统计</asp:LinkButton>
        </td>
        <td></td>
        </tr>
        </table>
    </div>
    <div>
    <div>
        <% 
            string wjh = Request.QueryString["wjh"];
            IList<WJDC.Models.FjdcTm> tmList = WJDC.Models.FjdcDAL.GetTmList(wjh);
       foreach (var tm in tmList)
       {
        %>
        <div ><%= tm.Tm %>        <% foreach (var choice in tm.Choices) { %>
        <div  class="progress">
            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow=" <%= choice.Bfb %>" aria-valuemin="0" aria-valuemax="100" style="width: <%= choice.Bfb %>%">
            <%= choice.Choice %>, <%= choice.Number %>, <%= choice.Bfb %>%
            </div>
            </div>
            <% } %>
        </div>
        <% } %>
        </div>
    </div>
    </form>
    <script src="js/jquery-2.1.1.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
