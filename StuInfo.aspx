<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuInfo.aspx.cs" Inherits="computer2011.StuInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   
</head>
<body>
    <form id="form1" class="form-horizontal" role="form" runat="server">
    <fieldset id="en" runat="server">
        <div class="form-group">
            <label for="TextBox1" class="col-sm-2 control-label">
                姓 名</label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="TextBox2" class="col-sm-2 control-label">
                学 号</label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="TextBox20" class="col-sm-2 control-label">
                性 别</label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox20" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="TextBox19" class="col-sm-2 control-label">
                民 族</label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBox19" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" SetFocusOnError="true" ControlToValidate="TextBox19"
                ValidationGroup="Group2" CssClass="col-sm-3 control-label" ForeColor="Red" runat="server"
                ErrorMessage="民族不能为空"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" SetFocusOnError="true"
                runat="server" CssClass="col-sm-3 control-label" ValidationGroup="Group2" ControlToValidate="TextBox19"
                ValidationExpression="^.{0,4}$" ForeColor="Blue" ErrorMessage="不能超过10字符"></asp:RegularExpressionValidator>
        </div>
        <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox20"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Width="5px"
                                    ControlToValidate="TextBox20" ValidationExpression="^.{0,60}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox3" class="col-sm-2 control-label">
                出生日期</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TextBox3" CssClass="form-control"  runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" SetFocusOnError="true"
                ControlToValidate="TextBox3" ValidationGroup="Group2" CssClass="col-sm-3 control-label"
                ForeColor="Red" runat="server" ErrorMessage="出生日期不能为空"></asp:RequiredFieldValidator>
            <%--   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" SetFocusOnError="true" runat="server" ControlToValidate="TextBox3" ValidationGroup="Group2"
                CssClass="col-sm-2 control-label" ValidationExpression="^(d{2}|d{4})-((0([1-9]{1}))|(1[1|2]))-(([0-2]([1-9]{1}))|(3[0|1]))$"
                ForeColor="Blue" ErrorMessage="格式为2014-03-01"></asp:RegularExpressionValidator>--%>
        </div>
        <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox3"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Width="5px"
                                    ControlToValidate="TextBox20" ValidationExpression="^.{0,60}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox4" class="col-sm-2 control-label">
                政治面貌</label>
            <div class="col-sm-7">
                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" SetFocusOnError="true"
                ControlToValidate="TextBox4" ValidationGroup="Group2" CssClass="col-sm-3 control-label"
                ForeColor="Red" runat="server" ErrorMessage="政治面貌不能为空"></asp:RequiredFieldValidator>
        </div>
        <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="TextBox4"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Width="5px"
                                    ControlToValidate="TextBox20" ValidationExpression="^.{0,60}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox5" class="col-sm-2 control-label">
                身份证号</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="true" ControlToValidate="TextBox5"
                ValidationGroup="Group2" CssClass="col-sm-3 control-label" ForeColor="Red" runat="server"
                ErrorMessage="身份证号不能为空"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" SetFocusOnError="true"
                runat="server" CssClass="col-sm-2 control-label" ValidationGroup="Group2" ControlToValidate="TextBox5"
                ValidationExpression="^.{18}$" ForeColor="Blue" ErrorMessage="身份证号长度错误"></asp:RegularExpressionValidator>
        </div>
        <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox5"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" Width="5px"
                                    ControlToValidate="TextBox5" ValidationExpression="^.{18}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox6" class="col-sm-2 control-label">
                联系电话</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="true" ControlToValidate="TextBox6"
                ValidationGroup="Group2" CssClass="col-sm-3 control-label" ForeColor="Red" runat="server"
                ErrorMessage="联系电话不能为空"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" SetFocusOnError="true"
                runat="server" CssClass="col-sm-2 control-label" ValidationGroup="Group2" ControlToValidate="TextBox6"
                ValidationExpression="^.{0,15}$" ForeColor="Blue" ErrorMessage="不能超过15个字符"></asp:RegularExpressionValidator>
        </div>
        <%--     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox6"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" Width="5px"
                                    ControlToValidate="TextBox6" ValidationExpression="^.{1,15}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox8" class="col-sm-2 control-label">
                宿舍地址</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="true" ControlToValidate="TextBox8"
                ValidationGroup="Group2" CssClass="col-sm-3 control-label" ForeColor="Red" runat="server"
                ErrorMessage="宿舍地址不能为空" Height="20px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" SetFocusOnError="true"
                runat="server" ValidationGroup="Group2" CssClass="col-sm-2 control-label" ControlToValidate="TextBox8"
                ValidationExpression="^.{0,20}$" ForeColor="Blue" ErrorMessage="不能超过20个字符"></asp:RegularExpressionValidator>
        </div>
        <%--     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox8"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*" Height="20px"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" Width="5px"
                                    ControlToValidate="TextBox8" ValidationExpression="^.{1,20}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox9" class="col-sm-2 control-label">
                担任职务</label>
            <div class="col-sm-8">
                <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" SetFocusOnError="true"
                runat="server" CssClass="col-sm-2 control-label" ControlToValidate="TextBox9"
                ValidationExpression="^.{0,20}$" ForeColor="Blue" ValidationGroup="Group2" ErrorMessage="不超过20个字符"></asp:RegularExpressionValidator>
        </div>
        <%--    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" Width="5px"
                                    ControlToValidate="TextBox9" ValidationExpression="^.{0,20}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox7" class="col-sm-2 control-label">
                QQ号</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="true" ControlToValidate="TextBox7"
                ValidationGroup="Group2" CssClass="col-sm-3 control-label" ForeColor="Red" runat="server"
                ErrorMessage="QQ号不能为空"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" SetFocusOnError="true"
                runat="server" CssClass="col-sm-2 control-label" ControlToValidate="TextBox7"
                ValidationExpression="^.{0,15}$" ForeColor="Blue" ValidationGroup="Group2" ErrorMessage="不超过15个字符"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <label for="TextBox12" class="col-sm-2 control-label">
                家庭联系人姓名</label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="true" ControlToValidate="TextBox12"
                ValidationGroup="Group2" CssClass="col-sm-4 control-label" ForeColor="Red" runat="server"
                ErrorMessage="家庭联系人姓名不能为空"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" SetFocusOnError="true"
                runat="server" CssClass="col-sm-2 control-label" ValidationGroup="Group2" ControlToValidate="TextBox12"
                ValidationExpression="^.{0,10}$" ForeColor="Blue" ErrorMessage="不超过10个字符"></asp:RegularExpressionValidator>
        </div>
        <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox12"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" Width="5px"
                                    ControlToValidate="TextBox12" ValidationExpression="^.{1,10}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox13" class="col-sm-2 control-label">
                家庭联系人电话</label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="true" ControlToValidate="TextBox13"
                ValidationGroup="Group2" CssClass="col-sm-4 control-label" ForeColor="Red" runat="server"
                ErrorMessage="家庭联系人电话不能为空"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" SetFocusOnError="true"
                runat="server" ValidationGroup="Group2" CssClass="col-sm-2 control-label" ControlToValidate="TextBox13"
                ValidationExpression="^.{0,15}$" ForeColor="Blue" ErrorMessage="不能超过15个字符"></asp:RegularExpressionValidator>
        </div>
        <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox13"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                                    Width="5px" ControlToValidate="TextBox13" ValidationExpression="^.{1,15}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox10" class="col-sm-2 control-label">
                家庭住址</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" Width="497px"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" SetFocusOnError="true" ControlToValidate="TextBox10"
                ValidationGroup="Group2" CssClass="col-sm-3 control-label" ForeColor="Red" runat="server"
                ErrorMessage="家庭住址不能为空"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator11" SetFocusOnError="true"
                runat="server" ValidationGroup="Group2" CssClass="col-sm-2 control-label" ControlToValidate="TextBox10"
                ValidationExpression="^.{0,80}$" ForeColor="Blue" ErrorMessage="不超过20个字符"></asp:RegularExpressionValidator>
        </div>
        <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox10"
                        ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                        Width="5px" ControlToValidate="TextBox10" ValidationExpression="^.{1,20}$" ForeColor="Blue"
                        ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox15" class="col-sm-2 control-label">
                村委会负责人电话</label>
            <div class="col-sm-8">
                <asp:TextBox ID="TextBox15" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator13" SetFocusOnError="true"
                runat="server" ValidationGroup="Group2" CssClass="col-sm-2 control-label" ControlToValidate="TextBox15"
                ValidationExpression="^.{0,15}$" ForeColor="Blue" ErrorMessage="不超过15个字符"></asp:RegularExpressionValidator>
        </div>
        <%--    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server"
                                    Width="5px" ControlToValidate="TextBox15" ValidationExpression="^.{0,15}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox14" class="col-sm-2 control-label">
                村委会负责人姓名</label>
            <div class="col-sm-8">
                <asp:TextBox ID="TextBox14" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator12" SetFocusOnError="true"
                runat="server" ValidationGroup="Group2" CssClass="col-sm-2 control-label" ControlToValidate="TextBox14"
                ValidationExpression="^.{0,10}$" ForeColor="Blue" ErrorMessage="不超过10个字符"></asp:RegularExpressionValidator>
        </div>
        <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                                    Width="5px" ControlToValidate="TextBox14" ValidationExpression="^.{0,10}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox11" class="col-sm-2 control-label">
                邮政编码</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" SetFocusOnError="true" ControlToValidate="TextBox11"
                ValidationGroup="Group2" CssClass="col-sm-3 control-label" ForeColor="Red" runat="server"
                ErrorMessage="邮政编码不能为空"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator14" SetFocusOnError="true"
                runat="server" CssClass="col-sm-2 control-label" ControlToValidate="TextBox11"
                ValidationExpression="^.{6}$" ForeColor="Blue" ValidationGroup="Group2" ErrorMessage="只能为6位数"></asp:RegularExpressionValidator>
        </div>
        <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox11"
                                    ForeColor="Red" runat="server" Width="10px" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server"
                                    Width="5px" ControlToValidate="TextBox11" ValidationExpression="^.{6}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox16" class="col-sm-2 control-label">
                父母单位负责人姓名</label>
            <div class="col-sm-8">
                <asp:TextBox ID="TextBox16" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator15" SetFocusOnError="true"
                runat="server" CssClass="col-sm-2 control-label" ValidationGroup="Group2" ControlToValidate="TextBox16"
                ValidationExpression="^.{0,10}$" ForeColor="Blue" ErrorMessage="不能超过10个字符"></asp:RegularExpressionValidator>
        </div>
        <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server"
                                    Width="5px" ControlToValidate="TextBox16" ValidationExpression="^.{0,10}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox17" class="col-sm-2 control-label">
                父母单位负责人电话</label>
            <div class="col-sm-8">
                <asp:TextBox ID="TextBox17" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator16" SetFocusOnError="true"
                runat="server" CssClass="col-sm-2 control-label" ControlToValidate="TextBox17"
                ValidationExpression="^.{0,15}$" ForeColor="Blue" ValidationGroup="Group2" ErrorMessage="不超过15个字符"></asp:RegularExpressionValidator>
        </div>
        <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server"
                                    Width="5px" ControlToValidate="TextBox17" ValidationExpression="^.{0,15}$" ForeColor="Blue"
                                    ErrorMessage="*"></asp:RegularExpressionValidator>--%>
        <div class="form-group">
            <label for="TextBox18" class="col-sm-2 control-label">
                备注</label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox18" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="Button1" CssClass="btn btn-info" ValidationGroup="Group2" runat="server"
                    Text="提 交" OnClick="Button1_Click" />
            </div>
        </div>
    </fieldset>
  <%--   <script src="script/js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="script/js/bootstrap-datetimepicker.js" type="text/javascript"></script>
    <script src="script/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>
    <script type="text/jscript">
        $(".CanLoginBeginTime")
                .removeAttr("data-val-date")
                .attr("data-date-forma", "yyyy-mm-dd hh:ii:ss")
                .attr("data-value", true)
                .attr("data-val-required", "必须填写")
                .datetimepicker({
                    language: 'zh-CN',
                    format: 'yyyy-m-d hh:ii:ss'
                });
    </script>--%>
    </form>
</body>
</html>
