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
    public partial class KBCX : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable table;

        public KBCX()
        {
            cn = new SqlConnection("Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=wYhcieM7QdHhCbyE8mUB3dt68ZaXsKXEZcZE8ro4rkC4DyW8UPmKLDxtEjdreWNf;");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)//按时段查询
        {
            string count = "0";
            cmd = new SqlCommand("select count(*) from course where Time1 like '%" + this.DropDownList1.SelectedValue + "" + this.DropDownList2.SelectedValue + "%' or time2 like '%" + this.DropDownList1.SelectedValue + "" + this.DropDownList2.SelectedValue + "%'", cn);
            try
            {
                cn.Open();

                 count = "本时段共有" + cmd.ExecuteScalar().ToString() + "人上课";
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('查询失败，请检查网络，如有疑问请与系统管理员联系。');</script>");
            }
            finally 
            {
                cn.Close();
            }
            
            this.LinkButton1.Text = count;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from course where Time1 like '%" + this.DropDownList1.SelectedValue + "" + this.DropDownList2.SelectedValue + "%' or time2 like '%" + this.DropDownList1.SelectedValue + "" + this.DropDownList2.SelectedValue + "%'", cn);
            table = new DataTable();
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
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            this.Label6.Visible = true;
            cmd = new SqlCommand("TJ_KB", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandTimeout = 200;
            cmd.Parameters.Add("@SKSJ", SqlDbType.NVarChar, 100).Direction = ParameterDirection.Output;
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('查询失败，请检查网络，如有疑问请与系统管理员联系。');</script>");
            }
            finally
            {
                cn.Close();
            }
            this.Label6.Text = cmd.Parameters["@SKSJ"].Value.ToString();
            if (Label6.Text == "")
            {
                Label6.Text = "抱歉，没有结果！";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from course where sno='" + this.TextBox2.Text + "' or name='" + this.TextBox3.Text + "' ", cn);
            table = new DataTable();
            try
            {
                da.Fill(table);
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('查询失败，请检查网络，如有疑问请与系统管理员联系。');</script>");
            }
            this.GridView2.DataSource = table;
            this.GridView2.DataBind();
        }


    }
}