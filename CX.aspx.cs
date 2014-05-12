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
    public partial class CX : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable table;
        SqlConnection cn = new SqlConnection("Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=aL6wpXdRyJSgqh4FJDhyfKBB6D3XiURZa6aRWgSPKD8TmYx2ge2HjSXxjBzS4nGL;");

        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlDataAdapter sa = new SqlDataAdapter("select Sno,Name from Student", cn);
            //DataTable table = new DataTable();
            //sa.Fill(table);
            //this.GridViewTime.DataSource = table;
            //this.GridViewTime.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cn.Open();
            cmd.CommandText = "select distinct(IDname), kq.Sno,Name,kqlb,time,kq.ID from Student,sj,kq,kqlb where kq.ID=SJ.ID and kq.kqID=kqlb.kqID and kq.Sno=student.Sno and  (Student.Sno='" + this.TextBoxSno.Text + "' or Name='" + this.TextBoxName.Text + "') order by kq.ID";
            da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            table = new DataTable();
            try
            {
                da.Fill(table);
                this.GridView2.DataSource = table;
                this.GridView2.DataBind();
            }
            catch (Exception exp)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "", "错误" + exp.Message + "')");
            }
            SqlCommand cq = new SqlCommand();
            cq.Connection = cn;
            cq.CommandText = "select count(kqid) from kq,Student where kq.Sno=student.Sno and kqid='1' and (Student.Sno='" + this.TextBoxSno.Text + "' or Name='" + this.TextBoxName.Text + "')";
            SqlCommand cd = new SqlCommand();
            cd.Connection = cn;
            cd.CommandText = "select count(kqid) from kq,Student where kq.Sno=student.Sno and kqid='2' and (Student.Sno='" + this.TextBoxSno.Text + "' or Name='" + this.TextBoxName.Text + "')";
            SqlCommand zt = new SqlCommand();
            zt.Connection = cn;
            zt.CommandText = "select count(kqid) from kq,Student where kq.Sno=student.Sno and kqid='3' and (Student.Sno='" + this.TextBoxSno.Text + "' or Name='" + this.TextBoxName.Text + "')";
            SqlCommand qx = new SqlCommand();
            qx.Connection = cn;
            qx.CommandText = "select count(kqid) from kq,Student where kq.Sno=student.Sno and kqid='4' and (Student.Sno='" + this.TextBoxSno.Text + "' or Name='" + this.TextBoxName.Text + "')";
            this.Labelone.Visible = true;
            this.GridView2.Visible = true;
            this.Labelone.Text = "出勤'" + cq.ExecuteScalar() + "'次，迟到'" + cd.ExecuteScalar() + "'次，早退'" + zt.ExecuteScalar() + "'次，缺席'" + qx.ExecuteScalar() + "'次";
            cn.Close();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/CJ.aspx");
        }

        protected void LinkButtonTJ_Click(object sender, EventArgs e)
        {
            Response.Redirect("TJ.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("TimeTJ.aspx");
        }
    }
}