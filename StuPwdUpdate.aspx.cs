using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace computer2011
{
    public partial class StuPwdUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Business.Users.User theuser = new Business.Users.User();
            string RetString = theuser.StudentChangePassword("" + Session["LoginStudentXH"] + "", "" + this.TextBoxOld.Text + "", "" + this.TextBoxNew.Text + "", "" + this.TextBoxReNew.Text + "");
            if (RetString == "密码修改成功")
            {
                Response.Write("<script>alert('修改成功，请重新登录!');window.location.href ='http://computer2011.apphb.com/default.aspx'</script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + RetString + "!');</script>");
            }
        }
    }
}