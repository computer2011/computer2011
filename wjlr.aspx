<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wjlr.aspx.cs" Inherits="WJDC.wjlr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
   
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal" role="form">
     <table align="center" width="1000">      
      <tr>
       <td width="80">
        <asp:LinkButton ID="homeLinkButton" runat="server" onclick="homeLinkButton_Click">问卷主页</asp:LinkButton></td>      
        <td width="80">
        <asp:LinkButton ID="delLinkButton" runat="server" onclick="delLinkButton_Click">问卷删除</asp:LinkButton></td>
        <td width="80"></td>
        <td></td>
        </tr>
        </table>
    <br><br>
    
              <div class="form-group">
                  <label for="inputtext" class="col-sm-2 control-label">问卷名称：</label>
                     <div class="col-sm-10">
                         <asp:TextBox ID="Mctxt" runat="server"  type="text" class="form-control"  placeholder="text"></asp:TextBox>
                      </div>
              </div>
              <div class="form-group">
                   <label for="inputtext" class="col-sm-2 control-label">提问人：</label>
                      <div class="col-sm-10">
                         <asp:TextBox ID="snotxt" runat="server"  type="text" class="form-control"  placeholder="text"></asp:TextBox>
                      </div>
               </div>
               <div class="form-horizontal">
                   <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="Mcbtn" runat="server" Text="添加" type="submit" class="btn btn-default" onclick="Mcbtn_Click"  />
                   </div>
               </div>
                 
               <div class="form-group">
                     <label for="inputtext" class="col-sm-2 control-label">题目：</label>
                         <div class="col-sm-10">
                            <asp:TextBox ID="Tmtxt" runat="server"  type="text" class="form-control"  placeholder="number"></asp:TextBox>
                         </div>
              </div>
              <div class="form-group">
                   <label for="inputtext" class="col-sm-2 control-label">题型：</label>
                      <div class="col-sm-10">
                         <asp:DropDownList ID="TXDropDownList" runat="server" multiple class="form-control" style="width:1000px">
                             <asp:ListItem Value="0">单项选择</asp:ListItem>
                             <asp:ListItem Value="1">不定项选择</asp:ListItem>
                            </asp:DropDownList>
                     </div>
             </div>
              <div class="form-horizontal">
                   <div class="col-sm-offset-2 col-sm-10">
                       <asp:Button ID="Tmbtn" runat="server" Text="添加" type="submit" class="btn btn-default" onclick="Tmbtn_Click"/>
                   </div>
              </div>
              <div class="form-group">
                   <label for="inputtext" class="col-sm-2 control-label">选项：</label>
                       <div class="col-sm-10">
                          <asp:TextBox ID="XXtxt" runat="server"  type="text" class="form-control"  placeholder="text"></asp:TextBox>
                       </div>
               </div>
               <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <asp:Button ID="XXbtn" runat="server" Text="添加"  onclick="XXbtn_Click" type="submit" class="btn btn-default" />
                    </div>
               </div>
               <div class="form-group">
                    <label for="inputtext" class="col-sm-2 control-label">已添加内容：</label>
                        <div class="col-sm-10">
                          <asp:ListBox ID="NRListBox" runat="server" Height="336px" Width="628px"></asp:ListBox> 
                        </div>
               </div>
  
    </form>
</body>
</html>
