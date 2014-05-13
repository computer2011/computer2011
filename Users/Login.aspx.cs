using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UserWeb.Users
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 登录验证
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            Business.Users.User loginnuer = new Business.Users.User();
            Business.Users.User theuser = loginnuer.UserLogin("" + this.TextBoxXH.Text + "", "" + this.TextBoxPWD.Text + "");
            if (theuser == null)
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('登录失败，学号或密码错误！');</script>");
            }
            else
            {
            Business.Users.Competence thecom = new Business.Users.Competence();
            string qx = thecom.isCompetence("" + this.TextBoxXH.Text + "", "10");
            if (qx == "")
            {
                Session["LoginUserXH"] = "" + this.TextBoxXH.Text + "";
                Response.Redirect("UserManage.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + qx + "');</script>");
            }
 
            }
            

        }
    }
}