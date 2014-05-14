using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace computer2011
{
    public partial class Student : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string a = null;
                try
                {
                    a = Session["LoginStudentXH"].ToString();
                }
                catch 
                {
                    this.divstu.Visible = false;
                   // Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('请先登录!');</script>");
                    Response.Write("<script>alert('请先登录!');window.location.href ='IndexPage.aspx'</script>");
                   // return;
                }
                //if (a != null)
                //{
                  
                        DataTable table = new DataTable();
                        SqlCommand cmd = new SqlCommand("select sno,name,(select MC from DM_Sex where DM=sex) as sex,(select MC from DM_MZ where DM= mz) as mz,P_Self_Num,QQ,SS_Address from student", cn);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);

                        try
                        {
                            da.Fill(table);
                        }
                        catch
                        {
                            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('查询失败，请检查网络，如有疑问请与系统管理员联系。');</script>");
                        }
                        this.GridView1.DataSource = table;
                        this.GridView1.DataBind();
                   
                //}
                //else
                //{
                //    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('请先登录！');</script>");
                //    //Response.Write("<script>alert('请先登录!');window.location.href ='http://computer2011.apphb.com'</script>");
                //}
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)//更多
        {
            string ID = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
            Response.Redirect("StuInfo.aspx?ID=" + ID + "&CZLX=1");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)//修改
        {

            if (Session["LoginStudentXH"].ToString() == ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text)
            {
                string ID = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
                Response.Redirect("StuInfo.aspx?ID=" + ID + "&CZLX=0");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('你没有修改权限，如有疑问，请与管理员联系！');</script>");
            }
        }
    }
}