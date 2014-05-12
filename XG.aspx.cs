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
    public partial class XG : System.Web.UI.Page
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

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            string id = Session["id"].ToString();
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string sno = GridView1.Rows[i].Cells[0].Text;
                string kqid = (GridView1.Rows[i].Cells[2].FindControl("DropDownList1") as DropDownList).SelectedValue.ToString();
                SqlConnection cn = new SqlConnection("Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=aL6wpXdRyJSgqh4FJDhyfKBB6D3XiURZa6aRWgSPKD8TmYx2ge2HjSXxjBzS4nGL;");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cn;
                string kq = "update kq set kqid='" + kqid + "'where id='" + id + "' and sno='" + sno + "'";
                try
                {
                    using (cn)
                    {
                        cmd.CommandText = kq;
                        cn.Open();
                        int val = cmd.ExecuteNonQuery();
                        cn.Close();
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
                this.GridView1.Visible = true;
                this.ButtonUpdate.Visible = true;
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

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CJ.aspx");
        }
    }
}