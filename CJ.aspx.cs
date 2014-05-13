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
        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlDataAdapter sa = new SqlDataAdapter("select Sno,Name from Student where sno like '20110103%'", cn);
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
            string sql = "INSERT INTO sj (IDname,introduce,time) VALUES ('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','"+System.DateTime.Now.ToLocalTime()+"')";
            try
            {
                using (SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection= cn;
                    cmd.CommandText=sql;
                    cn.Open();
                    int val = cmd.ExecuteNonQuery();
                    cn.Close();
                    if (val <= 0)
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('插入数据失败!')</script>");
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('插入数据成功!')</script>");
                }
            }
            catch (Exception exp)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('插入数据失败! 详情:" + exp.Message + "')</script>");
            }
            this.GridView1.Visible = true;
            this.Button2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select max(id) from sj";
            
            for (int i=0; i < GridView1.Rows.Count;i++ )
            {
                string sno = GridView1.Rows[i].Cells[0].Text;
                string kqid = (GridView1.Rows[i].Cells[2].FindControl("DropDownList1") as DropDownList).SelectedValue.ToString();
                cn.Open();
                string kq = "insert into kq(id,sno,kqid) values('" +cmd.ExecuteScalar()+ "','" + sno + "','" + kqid + "')";
                cn.Close();
                try
                {
                    
                          SqlCommand cm = new SqlCommand(kq, cn);
                          cn.Open();
                          int val = cm.ExecuteNonQuery();
                          cn.Close();
                          if (val <= 0)
                          ClientScript.RegisterStartupScript(this.GetType(), "", "alert('插入数据失败!')");
                          else
                          ClientScript.RegisterStartupScript(this.GetType(), "", "alert('插入数据成功!')");
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