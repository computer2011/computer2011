<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserMain.aspx.cs" Inherits="computer2011.Users.UserMain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../script/js/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Table.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function SetWinHeight(obj) {
            var win = obj;
            if (document.getElementById) {
                if (win && !window.opera) {
                    if (win.contentDocument && win.contentDocument.body.offsetHeight)
                        win.height = win.contentDocument.body.offsetHeight;
                    else if (win.Document && win.Document.body.scrollHeight)
                        win.height = win.Document.body.scrollHeight;
                }
            }
        }

    </script>
</head>
<body>
    <nav class="navbar navbar-default" role="navigation">
 
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">网站管理 <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="../Main_Manage.aspx" target=UserMain >网站前台发布</a></li>
        </ul>
      </li>
       <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">系统管理 <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="UserManage.aspx" target=UserMain>用户管理</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">信息维护 <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="UserPwdManage.aspx" target=UserMain>密码修改</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">退出系统<b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="Login.aspx" target=UserMain>安全退出</a></li>
        </ul>
      </li>
    </ul>
    </div>
</nav>
    <script src="../script/js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.js" type="text/javascript"></script>
    <iframe id="UserMain" src="HY.aspx" name="UserMain" height="100%" onload="Javascript:SetWinHeight(this)"
        width="1000"  style="overflow-y: visible" scrolling="no">
    </iframe>
</body>
</html>
