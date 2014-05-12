using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace KQ
{
    public partial class CJ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection cn = new SqlConnection("Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=aL6wpXdRyJSgqh4FJDhyfKBB6D3XiURZa6aRWgSPKD8TmYx2ge2HjSXxjBzS4nGL;");
                SqlDataAdapter sa = new SqlDataAdapter("select Sno,Name from Student", cn);
                DataTable table = new DataTable();
                sa.Fill(table);
                this.GridView1.DataSource = table;
                this.GridView1.DataBind();
            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TextBox1.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "", "alert('TextBox1不可为空!')");
                return;
            }
            if (string.IsNullOrEmpty(TextBox2.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "", "alert('TextBox2不可为空!')");
                return;
            }
            //连接数据库字符串 
            string dbConnString = "Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=aL6wpXdRyJSgqh4FJDhyfKBB6D3XiURZa6aRWgSPKD8TmYx2ge2HjSXxjBzS4nGL;";
            //不知道你的材料编号是什麽类型,默认为 varchar,r如果是int怎去掉''号就行了 
            string sql = "INSERT INTO sj (IDname,introduce) VALUES ('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "')";
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
                        ClientScript.RegisterStartupScript(this.GetType(), "", "alert('插入数据失败!')");
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "", "alert('插入数据成功!')");
                }
            }
            //捕获异常 
            catch (Exception exp)
            {
                //处理异常....... 
                ClientScript.RegisterStartupScript(this.GetType(), "", "alert('插入数据失败! 详情:" + exp.Message + "')");
            }
            this.GridView1.Visible = true;
            this.Button2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string dbConnString = "Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=aL6wpXdRyJSgqh4FJDhyfKBB6D3XiURZa6aRWgSPKD8TmYx2ge2HjSXxjBzS4nGL;";
            SqlConnection cn = new SqlConnection(dbConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select max(id) from sj";
            cn.Open();

            //string kqid =((DropDownList)GridView1.FindControl( "DropDownList1 ")).SelectedValue.ToString();
            for (int i=0; i < GridView1.Rows.Count;i++ )
            {
                string sno = GridView1.Rows[i].Cells[0].Text;
                //string name = GridView1.Rows[i].Cells[0].ToString();
                string kqid = (GridView1.Rows[i].Cells[2].FindControl("DropDownList1") as DropDownList).SelectedValue.ToString();
                string kq = "insert into kq(id,sno,kqid) values('" +cmd.ExecuteScalar()+ "','" + sno + "','" + kqid + "')";
                try
                {
                     using (SqlConnection conn = new SqlConnection(dbConnString))
                    {
                          SqlCommand cm = new SqlCommand(kq, conn);
                          conn.Open();
                          int val = cm.ExecuteNonQuery();
                          conn.Close();
                          if (val <= 0)
                          ClientScript.RegisterStartupScript(this.GetType(), "", "alert('插入数据失败!')");
                          else
                          ClientScript.RegisterStartupScript(this.GetType(), "", "alert('插入数据成功!')");
                    }
                }
                catch (Exception exp)
               {
                   ClientScript.RegisterStartupScript(this.GetType(), "", "alert('插入数据失败! 详情:" + exp.Message + "')");
               }
           }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CX.aspx");
        }

        protected void LinkButtonTJ_Click(object sender, EventArgs e)
        {
            Response.Redirect("TJ.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TimeTJ.aspx");
        }

    }
}