<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TMXS.aspx.cs" Inherits="WJDC.TMXS" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>问卷调查——问卷</title>
    
   
</head>
<body>
    <form id="form1" runat="server">
    <div >
             <asp:Button ID="Button1" runat="server" Text="退出" onclick="Button1_Click" Width="58px" Height="27px"/>
        
    </div>
    <br>
    <br>
   <br>
    <br>
    <table align="center">
    
    <tr>
    <td><b> 注：</b> <asp:RadioButton ID="RadioButton1" runat="server"  Text=此为单项选择题 ForeColor=Red/>&nbsp&nbsp&nbsp
            <asp:CheckBox ID="CheckBox1" runat="server" Text=此为不定项选择题 ForeColor=Red/></td>
    </tr>
    <%--<tr>
       <td>学号：<asp:TextBox ID="txtsno" runat="server" type="number"></asp:TextBox></td>
    </tr>--%>
    <tr>
    <td>
    <div id="div1" runat=server></div>
    
    </td>
    </tr>
    <tr>
    <td><asp:Button ID="tjButton" runat="server" Text="提交" Height="27px" 
            onclick="tjButton_Click" Width="58px" /></td>
    </tr>
    </table>
   <hr />
   <br />
   <br />
    </form>
</body>
</html>
