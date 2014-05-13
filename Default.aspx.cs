using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace computer2011
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    Session["LoginStudentXH"] =null;
            //}
            LinkButton1.Attributes.Add("target", "content1");
            LinkButton1.Attributes.Add("href", "IndexPage.aspx");

            LinkButton2.Attributes.Add("target", "content1");
            LinkButton2.Attributes.Add("href", "classxc.aspx");

            LinkButton3.Attributes.Add("target", "content1");
            LinkButton3.Attributes.Add("href", "Guest.aspx");

            LinkButton4.Attributes.Add("target", "content1");
            LinkButton4.Attributes.Add("href", "Student.aspx");

            LinkButton5.Attributes.Add("target", "content1");
            LinkButton5.Attributes.Add("href", "MCXS.aspx");

            LinkButton6.Attributes.Add("target", "content1");
            LinkButton6.Attributes.Add("href", "KBCX.aspx");

            LinkButton7.Attributes.Add("target", "content1");
            LinkButton7.Attributes.Add("href", "TJ.aspx");

            LinkButton8.Attributes.Add("target", "content1");
            LinkButton8.Attributes.Add("href", "shixiantongji.aspx");

            
            


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)//首页
        {

        }

        protected void LinkButton10_Click(object sender, EventArgs e)//系统管理
        {
            Response.Redirect("Users/Login.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)//主页管理
        {
            Response.Redirect("Main_Manage.aspx");
        }
    }
}