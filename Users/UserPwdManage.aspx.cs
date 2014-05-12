using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserWeb.Users
{
    public partial class UserPwdManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            Business.Users.User theuser = new Business.Users.User();
            string RetString = theuser.ChangePassword("" + Session["LoginUserXH"] + "", ""+this.TextBoxOld.Text+"", ""+this.TextBoxNew.Text+"", ""+this.TextBoxReNew.Text+"");
            if (RetString == "密码修改成功")
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('"+RetString+"!');</script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + RetString + "!');</script>");
            }

            //theuser.UserPwdUpdate("" + Session["LoginUserXH"] + "", "");
        }
    }
}