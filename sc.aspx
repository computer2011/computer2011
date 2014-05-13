<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sc.aspx.cs" Inherits="classphoto.sc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <title>上传</title>
    <style type="text/css">
        .style2
        {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align=center>
    <tr height="10px">
    <td bgcolor="#0099CC" class="style2">  请选择您要上传到的相册</td>
    </tr>
    </table>
   <div style="text-align: center">

        <asp:Button type="button" class="btn btn-primary" ID="Button1" runat="server" Text="上传到班级风采" 
            onclick="Button1_Click" />

        <asp:Button  type="button" class="btn btn-primary" ID="Button2"
            runat="server" Text="上传到个人风采" onclick="Button2_Click" />
    </div>
    </form>
</body>
</html>
