<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gr.aspx.cs" Inherits="classphoto.gr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>个人风采</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   <div style="color:#F00"  align="center">
 注意：由于服务器内存不足，请将照片发到这里：<a href="http://www.poco.cn/">http://www.poco.cn/</a>账号和密码为：1078182117@qq.com&nbsp;&nbsp;&nbsp; 
       wdmms1991090931务必把得到的照片外链地址填到图片路径中，否则您上传的照片将无法上传
    </div>
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="个人风采："></asp:Label>
    </div>
    <div align="center">
        <asp:Label ID="Label2" runat="server" Text="图片名称："></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </div>
   <div align="center">
       <asp:Label ID="Label5" runat="server" Text="图片路径："></asp:Label>
       <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
       
       
   </div>
   <div align="center" style="margin-bottom: 0px">
       <asp:Label ID="Label6" runat="server" Text="图片描述："></asp:Label>
       <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
   </div>
   <div align="center">
             
       
   </div>
   <div align="center">
   <table>
   <tr>
   <td><asp:Button type="button" class="btn btn-primary" ID="Button1" runat="server" 
           Text="上传" onclick="Button1_Click" />  </td>
   <td width="60"></td>
   <td>
       <asp:Button type="button" class="btn btn-info" ID="Button2" runat="server" 
           Text="取消" onclick="Button2_Click1" /></td>
        <td width="60"></td>
        <td> 
            <asp:Button  type="button" class="btn btn-info" ID="Button3" runat="server" 
                Text="返回" onclick="Button3_Click" />  </td>
  </tr>
   
   </table>
   </div>
   </html>

   </html>
    </form>
    </html>
</body>

