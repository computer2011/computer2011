using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace UserWeb.Users
{
    public partial class UserManage : System.Web.UI.Page
    {

        DataAccess.GetData GD = new DataAccess.GetData();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginUserXH"].ToString() == "")
            {
                Response.Redirect("Login.aspx");
            }
            DataShow();
        }
        /// <summary>
        /// 数据绑定
        /// </summary>
        public void DataShow()
        {
            Business.Users.User userlist = new Business.Users.User();
            DataTable usersj = userlist.GetUserList("");
            if (usersj.Rows.Count > 0)
            {
                this.LabelInfo.Text = "共有用户数据" + usersj.Rows.Count + "条";
                this.GridView1.DataSource = usersj;
                 GridView1.DataBind();
            }
            else
            {
                this.LabelInfo.Text = "暂无用户数据！";
            }
        }
        /// <summary>
        /// 用户角色分配
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Business.Users.Competence qx = new Business.Users.Competence();
            //角色分配的权限
            string logingxh = Session["LoginUserXH"].ToString();
            if (qx.isCompetence("" + logingxh + "", "14") == "")
            {
                    Session["UserRoleEditXH"] = ((GridViewRow)((LinkButton)sender).Parent.Parent).Cells[0].Text;
                    Response.Redirect("UserRoleEdit.aspx");
            }
            else 
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + qx.isCompetence("" + Session["LoginUserXH"] + "", "14") + "');</script>");
            }
          
           
        }
        /// <summary>
        /// 条件查询
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            Business.Users.User tjuser = new Business.Users.User();
            DataTable usersj = new DataTable();
            if (this.TextBoxXH.Text == "" && this.TextBoxXM.Text == "")
            {
               usersj = tjuser.GetUserList("");
               

            }
            else if (this.TextBoxXH.Text != "" && this.TextBoxXM.Text != "")
            {
                string sqltj = " where Sno like '"+this.TextBoxXH.Text+"%' and Name like '"+this.TextBoxXM.Text+"%'"; 
                 usersj = tjuser.GetUserList(sqltj);
            }
            else if (this.TextBoxXH.Text != "" && this.TextBoxXM.Text == "")
            {
                string sqltj = " where Sno like '" + this.TextBoxXH.Text + "%'";
                 usersj = tjuser.GetUserList(sqltj);
            }
            else if (this.TextBoxXH.Text == "" && this.TextBoxXM.Text != "")
            {
                string sqltj = " where Name like '" + this.TextBoxXM.Text + "%'";
                usersj = tjuser.GetUserList(sqltj);
            }
            this.LabelInfo.Text = "共有用户数据" + usersj.Rows.Count + "条";
            this.GridView1.DataSource = usersj;
            GridView1.DataBind();
        }
        /// <summary>
        /// 禁止登录
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LinkButton3_Click1(object sender, EventArgs e)
        {   
            try
            {
                string xh = ((GridViewRow)((LinkButton)sender).Parent.Parent).Cells[0].Text;
                Business.Users.Competence qx = new Business.Users.Competence();
                //删除用户权限
                if (qx.isCompetence("" + Session["LoginUserXH"] + "", "11") == "")
                {
                    Business.Users.User jzuser = new Business.Users.User();
                    jzuser.JZUser("" + Session["LoginUserXH"] + "");
                    DataShow();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + qx.isCompetence("" + Session["LoginUserXH"] + "", "11") + "');</script>");
                }
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('操作失败！');</script>");
            }

        }
    }
}