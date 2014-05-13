<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="classfc.aspx.cs" Inherits="classphoto.classfc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>班级风采</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="color: #F00" align="center">
        注意：由于服务器内存不足，请将照片发到这里：http://friends.fotki.com  账号和密码为：computer2011  务必把得到的照片外链地址填到图片路径中，否则您上传的照片将无法上传
    </div>
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="班级风采"></asp:Label>
    </div>
    <div align="center">
        <asp:Label ID="Label2" runat="server" Text="图片名称："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <div align="center">
        <asp:Label ID="Label7" runat="server" Text="图片路径："></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
    </div>
    <div align="center" style="margin-bottom: 0px">
        <asp:Label ID="Label8" runat="server" Text="图片描述："></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </div>
    <div align="center">
    </div>
    <div align="center">
        <table>
            <tr>
                <td>

                    <asp:Button ID="Button3" runat="server" Text="上传" onclick="Button3_Click" 
                        BackColor="#66FF99" />
               
                </td>
                <td width="60">
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="取消" onclick="Button4_Click" 
                        BackColor="#666699" />
                </td>
                 <td width="60">
                </td>
                <td> 
                    <asp:Button ID="Button1" runat="server" Text="返回" onclick="Button1_Click" 
                        BackColor="#FF3399" />  </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
