using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace classphoto
{
    public partial class gr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TextBox6.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "", "alert('图片名称不可为空!')");
                return;
            }

            if (string.IsNullOrEmpty(TextBox7.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "", "alert('图片描述不可为空!')");
                return;
            }
            if (string.IsNullOrEmpty(TextBox8.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "", "alert('图片描述不可为空!')");
                return;
            }
            //连接数据库字符串 
            string dbConnString = "Data Source=QH-20140307WHVM;Initial Catalog=photo;Integrated Security=True";
            //不知道你的材料编号是什麽类型,默认为 varchar,r如果是int怎去掉''号就行了 
            string sql = "INSERT INTO grfc (图片名称,图片路径,图片描述) VALUES ('" + TextBox6.Text.Trim() + "','" + TextBox7.Text.Trim() + "','" + TextBox8.Text.Trim() + "')";
            //可以会发生异常的语句都放在这里 
            try
            {
                //using 是系统关键字, 作用是自动释放资源,详情请百度百科 
                using (SqlConnection conn = new SqlConnection(dbConnString))
                {
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    //打开数据库连接 
                    conn.Open();
                    //对数据进行插入操作, 返回影响行数 
                    int val = cmd.ExecuteNonQuery();
                    //关闭数据库连接; 用了using 这一句可以省略 
                    conn.Close();
                    if (val <= 0)
                        ClientScript.RegisterStartupScript(this.GetType(), "", "alert('抱歉，插入数据失败!')");
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "", "alert('恭喜你！图片上传成功!')");
                }
            }
            //捕获异常 
            catch (Exception exp)
            {
                //处理异常....... 
                ClientScript.RegisterStartupScript(this.GetType(), "", "alert('插入数据失败! 详情:" + exp.Message + "')");
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/gr.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/classxc.aspx");
        }
    }
}