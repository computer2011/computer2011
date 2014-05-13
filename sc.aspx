<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sc.aspx.cs" Inherits="classphoto.sc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>上传</title>
</head>
<body>
    <form id="form1" runat="server">
   <div style="text-align: center">

        <asp:Button ID="Button1" runat="server" Text="上传到班级风采" 
            onclick="Button1_Click" BackColor="Lime" />
        <asp:Button ID="Button2"
            runat="server" Text="上传到个人风采" onclick="Button2_Click" 
            BackColor="#FF3300" />
    </div>
    </form>
</body>
</html>
