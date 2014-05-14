<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuccessTj.aspx.cs" Inherits="WJDC.SuccessTj" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>提交成功</title>
    <style>
   div{
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
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="homeLinkButton_Click">问卷主页</asp:LinkButton></td>
         <td width="80">
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="MclrLinkButton_Click">问卷录入</asp:LinkButton></td>       
        <td width="80">
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="delLinkButton_Click">问卷删除</asp:LinkButton></td>
        <td width="80"></td>
        <td></td>
        </tr>
        <tr height="300">
            <td width="300" colspan=3>
            </td>
            <td><p>你已成功提交了本次问卷调查！谢谢你的参与！<br/>请返回<asp:LinkButton ID="LinkButton" runat="server" 
                onclick="LinkButton_Click">问卷主页</asp:LinkButton>或是你需要的功能！</p>
                </td>
            </tr>
        </table>
    
    <br><br>
    <div class="div1">
        
    </div>
    
    <br><br>
    </form>
</body>
</html>
