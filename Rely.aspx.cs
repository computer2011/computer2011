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
        protected void Page_Load(object sender, EventArgs e)
        {
            this.InfoData();

            if (!IsPostBack)
            {
                this.RelyInfo();
            }
            Button3.Attributes.Add("onclick", "return confirm('你确定要删除所选择的记录么?')");

        }
        private void InfoData()
        {
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString());
            SqlCommand com = new SqlCommand("select * from Guest where id=@ID", conn);
            com.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(Session["ID"]);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = com;
            DataTable tt = new DataTable();
            da.Fill(tt);
            this.Label1.Text = "留言内容：" + tt.Rows[0][1].ToString();
        }

        private void RelyInfo()
        {

            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString());
            SqlCommand com = new SqlCommand("select * from Rely where Guestid=@ID", conn);
            com.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(Session["ID"]);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = com;
            DataTable tt = new DataTable();
            da.Fill(tt);
            this.GridView1.DataSource = tt;
            this.GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtRely.Text))
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('请输入姓名!')</script>");
                return;
            }
            if (string.IsNullOrEmpty(txtRely.Text))
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('请输入回复内容!')</script>");
                return;
            }

            //连接数据库字符串 
            string dbConnString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString();
            string sql = "INSERT INTO Rely(Name,Rely,Guestid) VALUES ('" + TextBox1.Text.Trim() + "','" + txtRely.Text.Trim() + "', " + Session["ID"].ToString() + ")";
            try
            {
                //using 是系统关键字, 作用是自动释放资源。
                using (SqlConnection conn = new SqlConnection(dbConnString))
                {
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    //打开数据库连接 
                    conn.Open();
                    //对数据进行插入操作, 返回影响行数 
                    int val = cmd.ExecuteNonQuery();
                    //关闭数据库连接;
                    conn.Close();
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
            this.RelyInfo();
            Response.Redirect("~/Rely.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Info.aspx");
        }

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

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString());
            SqlCommand sqlcom;
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                if (cbox.Checked == true)
                {
                    string sqlstr = "delete from Rely where ID='" + GridView1.DataKeys[i].Value + "'";
                    sqlcom = new SqlCommand(sqlstr, sqlcon);
                    sqlcon.Open();
                    sqlcom.ExecuteNonQuery();
                    sqlcon.Close();
                }
            }
            RelyInfo();
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            RelyInfo(); //重新绑定GridView数据的函数
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}