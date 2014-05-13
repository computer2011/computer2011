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

    public partial class Guest : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);//连接数据库的字段
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 插入留言
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            this.btnINSER();
        }
        /// <summary>
        /// 插入留言
        /// </summary>
        private void btnINSER()
        {
            if (string.IsNullOrEmpty(Contents.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('请输入留言内容!')</script>");
                return;
            }
            TimeZoneInfo bjTimeZoneInfo = TimeZoneInfo.FindSystemTimeZoneById("China Standard Time");//转换北京时间
            DateTime t = DateTime.Now;
            DateTime t2 = TimeZoneInfo.ConvertTime(t, bjTimeZoneInfo);
            string sql = " INSERT INTO Guest (Contents,Time) VALUES ('" + Contents.Text.Trim() + "','" + t2 + "')";
            try
            {
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
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('对不起，留言失败!')</script>");
                    else
                        Response.Write("<script>alert('成功喽!');window.location.href ='Info.aspx'</script>");
                    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('恭喜，留言成功!')</script>");
                }
            }
            //捕获异常 
            catch (Exception exp)
            {
                //处理异常....... 
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('留言失败！详情：" + exp.Message + "')</script>");
            }
        }
        /// <summary>
        /// 浏览留言
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Info.aspx");
        }
    }
}
