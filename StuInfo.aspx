<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuInfo.aspx.cs" Inherits="computer2011.StuInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" class="form-horizontal" role="form" runat="server">
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            姓 名</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="305px"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            学 号</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Width="309px"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            性 别</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox19" CssClass="form-control" runat="server" Width="308px"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            民 族</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox20" CssClass="form-control" runat="server" Width="305px"></asp:TextBox>
        </div>
    </div>
    <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox20"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Width="5px"
                                    ControlToValidate="TextBox20" ValidationExpression="^.{0,60}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            出生日期</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Width="281px"></asp:TextBox>
        </div>
    </div>
    <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox3"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Width="5px"
                                    ControlToValidate="TextBox20" ValidationExpression="^.{0,60}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            政治面貌</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Width="277px"></asp:TextBox>
        </div>
    </div>
    <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="TextBox4"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Width="5px"
                                    ControlToValidate="TextBox20" ValidationExpression="^.{0,60}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            身份证号</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Width="281px"></asp:TextBox>
        </div>
    </div>
    <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox5"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" Width="5px"
                                    ControlToValidate="TextBox5" ValidationExpression="^.{18}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            联系电话</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" Width="277px"></asp:TextBox>
        </div>
    </div>
    <%--     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox6"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" Width="5px"
                                    ControlToValidate="TextBox6" ValidationExpression="^.{1,15}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            宿舍地址</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" Width="278px"></asp:TextBox>
        </div>
    </div>
    <%--     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox8"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*" Height="20px"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" Width="5px"
                                    ControlToValidate="TextBox8" ValidationExpression="^.{1,20}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            担任职务</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" Width="279px"></asp:TextBox>
        </div>
    </div>
    <%--    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" Width="5px"
                                    ControlToValidate="TextBox9" ValidationExpression="^.{0,20}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            QQ号</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" Width="304px"></asp:TextBox>
        </div>
    </div>
    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox7"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" Width="5px"
                                    ControlToValidate="TextBox7" ValidationExpression="^.{1,15}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            家庭联系人姓名</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" Width="304px"></asp:TextBox>
        </div>
    </div>
    <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox12"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" Width="5px"
                                    ControlToValidate="TextBox12" ValidationExpression="^.{1,10}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            家庭联系人电话</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server" Width="303px"></asp:TextBox>
        </div>
    </div>
    <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox13"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                                    Width="5px" ControlToValidate="TextBox13" ValidationExpression="^.{1,15}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            家庭住址</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" Width="357px"></asp:TextBox>
        </div>
    </div>
    <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox10"
                        ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                        Width="5px" ControlToValidate="TextBox10" ValidationExpression="^.{1,20}$" ForeColor="Blue"
                        ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            村委会负责人电话</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox15" CssClass="form-control" runat="server" Width="289px"></asp:TextBox>
        </div>
    </div>
    <%--    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server"
                                    Width="5px" ControlToValidate="TextBox15" ValidationExpression="^.{0,15}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            村委会负责人姓名</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox14" CssClass="form-control" runat="server" Width="288px"></asp:TextBox>
        </div>
    </div>
    <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                                    Width="5px" ControlToValidate="TextBox14" ValidationExpression="^.{0,10}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            邮政编码</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
        </div>
    </div>
    <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox11"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server"
                                    Width="5px" ControlToValidate="TextBox11" ValidationExpression="^.{6}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            父母单位负责人姓名</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox16" CssClass="form-control" runat="server" Width="271px"></asp:TextBox>
        </div>
    </div>
    <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server"
                                    Width="5px" ControlToValidate="TextBox16" ValidationExpression="^.{0,10}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            父母单位负责人电话</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox17" CssClass="form-control" runat="server" Width="270px"></asp:TextBox>
        </div>
    </div>
    <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server"
                                    Width="5px" ControlToValidate="TextBox17" ValidationExpression="^.{0,15}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">
            备注</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox18" CssClass="form-control" runat="server" Width="878px"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" Text="提 交" OnClick="Button1_Click" />
        </div>
    </div>
    </form>
</body>
</html>
