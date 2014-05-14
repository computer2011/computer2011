using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace liuyanban
{
    public partial class Rely : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Button2.Enabled = false;
            this.Button3.Visible = false;
            this.InfoData();    
            this.RelyInfo();
        }


        /// <summary>
        /// 显示留言内容
        /// </summary>
        private void InfoData()
        {
            SqlCommand com = new SqlCommand("select * from Guest where id=@ID", cn);
            com.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(Session["ID"]);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = com;
            DataTable tt = new DataTable();
            da.Fill(tt);
            if (tt.Rows.Count > 0)
            {
                this.Label1.Text = "留言内容：" + tt.Rows[0][2].ToString();
            }
            
        }
        /// <summary>
        /// 显示回复
        /// </summary>
        private void RelyInfo()
        {
            SqlCommand com = new SqlCommand();
            com.CommandText = "select * from Rely where Guestid=@ID order by ID desc";
            com.Connection = new SqlConnection(new computer2011.ConnectDatabase().conn); //cn;
            com.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(Session["ID"]);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = com;       
            DataTable tt = new DataTable();
            da.Fill(tt);
            this.GridView1.DataSource = tt;
            this.GridView1.DataBind();
            if (tt.Rows.Count > 0)
            {
                this.Button2.Enabled = true;
                this.Button3.Visible = true;
            }
        }
        /// <summary>
        /// 回复的Click事件，插入回复内容
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        
        protected void LinkButton1_Click(object sender, EventArgs e)
        {            
            if (string.IsNullOrEmpty(TextBox1.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('请输入姓名!')</script>");
                return;
            }
            if (string.IsNullOrEmpty(txtRely.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('请输入回复内容!')</script>");
                return;
            }

            TimeZoneInfo bjTimeZoneInfo = TimeZoneInfo.FindSystemTimeZoneById("China Standard Time");//转换北京时间
            DateTime t = DateTime.Now;
            DateTime t2 = TimeZoneInfo.ConvertTime(t, bjTimeZoneInfo);
            string sql = "INSERT INTO Rely(Name,Rely,Guestid,Time,XH) VALUES ('" + TextBox1.Text.Trim() + "','" + txtRely.Text.Trim() + "','" + Session["ID"].ToString() + "','" + t2 + "','" + Session["LoginStudentXH"] + "')";
            try
            {
                //using 是系统关键字, 作用是自动释放资源。
                using (cn)
                {
                    SqlCommand cmd = new SqlCommand(sql, cn);
                    //打开数据库连接 
                    cn.Open();
                    //对数据进行插入操作, 返回影响行数 
                    int val = cmd.ExecuteNonQuery();
                    //关闭数据库连接;
                    cn.Close();
                    if (val <= 0)
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('对不起，回复失败!')</script>");
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('恭喜，回复成功!')</script>");
                }
            }
            //捕获异常 
            catch (Exception exp)
            {
                //处理异常....... 
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('回复失败！详情：" + exp.Message + "')</script>");
            }
            
            Response.Redirect("~/Rely.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Info.aspx");
        }
        /// <summary>
        /// 全选
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            CheckBox chk;
            //如果全选
            if (Button2.Text == "全选")
            {    //扫描DataView的项
                foreach (GridViewRow dgi in GridView1.Rows)
                {    //查找到模板列中的CheckBox控件
                    chk = (CheckBox)dgi.FindControl("checkBox1");
                    //选中
                    chk.Checked = true;
                }
                Button2.Text = "全不选";
            }
            //如果全不选
            else
            {
                foreach (GridViewRow dgi in GridView1.Rows)
                {    //查找到模板列中的CheckBox控件
                    chk = (CheckBox)dgi.FindControl("checkBox1");
                    //不选
                    chk.Checked = false;
                }
                Button2.Text = "全选";
            }
        }
       /// <summary>
       /// 删除回复
       /// </summary>
       /// <param name="sender"></param>
       /// <param name="e"></param>
        protected void Button3_Click(object sender, EventArgs e)
        {
            Business.Users.Competence thecom = new Business.Users.Competence();
            if (thecom.isCompetence("" + Session["LoginStudentXH"] + "", "43") == "")
            {
                SqlCommand sqlcom;
                for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                    if (cbox.Checked == true)
                    {
                        string sqlstr = "delete from Rely where ID='" + GridView1.DataKeys[i].Value + "'";
                        sqlcom = new SqlCommand(sqlstr, cn);
                        cn.Open();
                        sqlcom.ExecuteNonQuery();
                        cn.Close();
                    }
                    RelyInfo();
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + thecom.isCompetence("" + Session["LoginStudentXH"] + "", "43") + "!');</script>");
            }          
        }
        /// <summary>
        /// 分页的数据绑定
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            RelyInfo(); //重新绑定GridView数据的函数
        }
    }
}