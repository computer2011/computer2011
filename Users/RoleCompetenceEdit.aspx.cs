using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace UserWeb
{
    public partial class RoleCompetenceEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if (!Page.IsPostBack)
           {
            Business.Users.Competence thecom = new Business.Users.Competence();
            DataTable comlisr = thecom.GetCompetenceList();
            this.ListView2.DataSource = comlisr;
            this.DataBind();
            
           Business.Users.Role therole = new Business.Users.Role();
           DataTable role= therole.GetRoleList();

            
           for (int i = 0; i < this.ListView2.Items.Count; i++)
           {
               DataTable userrole = therole.GetRoleCompetenceList("" + Session["UserRoleCompetenceEditXH"].ToString() + "");//班主任
               for (int j = 0; j < userrole.Rows.Count; j++)
               {
                   string comID = userrole.Rows[j]["CompetenceID"].ToString();
                   if (comID == ((Label)this.ListView2.Items[i].Controls[0].FindControl("Label1")).Text)
                   {
                       ((CheckBox)this.ListView2.Items[i].Controls[0].FindControl("CheckBox1")).Checked = true;
                   }
               }
           }}   
           
        }
        /// <summary>
        /// 提交
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
                try
                {
                    for (int i = 0; i < this.ListView2.Items.Count; i++)
                    {

                        // Business.Users.User theuser = new Business.Users.User();
                        Business.Users.Role therole = new Business.Users.Role();
                        DataTable userrole = therole.GetRoleCompetence("10");//班主任
                        DataTable rcom = therole.RoleCompetence("" + Session["UserRoleCompetenceEditXH"].ToString() + "", "" + ((Label)this.ListView2.Items[i].Controls[0].FindControl("Label1")).Text + "");
                        //选中
                        if (((CheckBox)this.ListView2.Items[i].Controls[0].FindControl("CheckBox1")).Checked == true)
                        {
                            //数据库中不存在
                            //添加
                            if (rcom.Rows.Count == 0)
                            {
                                therole.AddRoleCompetence("" + Session["UserRoleCompetenceEditXH"].ToString() + "", "" + ((Label)this.ListView2.Items[i].Controls[0].FindControl("Label1")).Text + "");
                            }
                        }
                        else if (((CheckBox)this.ListView2.Items[i].Controls[0].FindControl("CheckBox1")).Checked == false) //没选中
                        {
                            //数据库中存在
                            //删除
                            if (rcom.Rows.Count > 0)
                            {
                                therole.deleteRoleCompetence("" + Session["UserRoleCompetenceEditXH"].ToString() + "", "" + ((Label)this.ListView2.Items[i].Controls[0].FindControl("Label1")).Text + "");
                            }
                        }
                    }
                    Response.Redirect("UserRoleEdit.aspx");
                }
                catch
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('提交失败！');</script>");
                }
            
        }

    }
}