﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xcgl.aspx.cs" Inherits="classphoto.xcgl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div style="height:600px; text-align: center;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" 
            onrowdatabound="GridView1_RowDataBound" onrowdeleting="GridView1_RowDeleting1">
        </asp:GridView>
            
        
    </div>
    </form>
</body>
</html>
