using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UserWeb.Users
{
    public partial class UserRoleEdit : System.Web.UI.Page
    {
        DataAccess.GetData GD = new DataAccess.GetData();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                Business.Users.Role therole = new Business.Users.Role();
                DataTable rolelisr = therole.GetRoleList();
                this.ListView2.DataSource = rolelisr;
                this.DataBind();

                Business.Users.User theuser = new Business.Users.User();
                for (int i = 0; i < this.ListView2.Items.Count; i++)
                {
                    DataTable userrole = theuser.GetUserRoleList("" + Session["UserRoleEditXH"].ToString() + "");
                    for (int j = 0; j < userrole.Rows.Count; j++)
                    {
                        string RoleID = userrole.Rows[j]["RoleID"].ToString();
                        if (RoleID == ((Label)this.ListView2.Items[i].Controls[0].FindControl("Label1")).Text)
                        {
                            ((CheckBox)this.ListView2.Items[i].Controls[0].FindControl("CheckBox1")).Checked = true;
                        }
                    }
                }
            }
         
        }
        /// <summary>
        /// 提交数据
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                for (int i = 0; i < this.ListView2.Items.Count; i++)
                {

                    Business.Users.User theuser = new Business.Users.User();
                    DataTable rolerole = theuser.GetUserRole("" + Session["UserRoleEditXH"].ToString() + "", "" + ((Label)this.ListView2.Items[i].Controls[0].FindControl("Label1")).Text + "");
                        //选中
                    if (((CheckBox)this.ListView2.Items[i].Controls[0].FindControl("CheckBox1")).Checked == true)
                        {
                            //数据库中不存在
                            //添加
                            if (rolerole.Rows.Count == 0)
                            {
                                 
                                //DataTable xx = GD.GetDataTable("insert");
                                theuser.addUserRole("" + Session["UserRoleEditXH"].ToString()+ "", "" + ((Label)this.ListView2.Items[i].Controls[0].FindControl("Label1")).Text + "");
                            }
                        }
                    else if (((CheckBox)this.ListView2.Items[i].Controls[0].FindControl("CheckBox1")).Checked == false) //没选中
                        {
                            //数据库中存在
                            //删除
                            if (rolerole.Rows.Count > 0)
                            {
                                theuser.deleteUserRole("" + Session["UserRoleEditXH"].ToString() + "", "" + ((Label)this.ListView2.Items[i].Controls[0].FindControl("Label1")).Text + "");
                            }
                        }
                }
                Response.Redirect("UserManage.aspx");
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('提交失败！');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        { Business.Users.Competence thecom = new Business.Users.Competence();
        if (thecom.isCompetence("" + Session["LoginUserXH"].ToString() + "", "15") == "")
            {
                Session["UserRoleCompetenceEditXH"] = ((Label)((Button)sender).FindControl("Label1")).Text;
               Response.Redirect("RoleCompetenceEdit.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + thecom.isCompetence("" + Session["UserRoleEditXH"].ToString() + "", "15") + "');</script>");
            }
        }
        /// <summary>
        /// 分配权限
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < this.ListView2.Items.Count; i++)
            {
               Session["UserRoleCompetenceEditXH"] = ((Label)((Button)sender).FindControl("Label1")).Text;
            }
                
        }
    }
}