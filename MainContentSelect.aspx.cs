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
    public partial class MainContentSelect : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                SqlDataAdapter da = new SqlDataAdapter("select * from DM_LB", cn);
                DataSet ds = new DataSet();
                cn.Open();
                da.Fill(ds, "TitleType");
                cn.Close();
                this.DropDownList1.DataSource = ds.Tables["TitleType"].DefaultView;
                this.DropDownList1.DataValueField = ds.Tables["TitleType"].Columns[0].ColumnName;
                this.DropDownList1.DataTextField = ds.Tables["TitleType"].Columns[1].ColumnName;
                this.DropDownList1.DataBind();


                SqlDataAdapter da1 = new SqlDataAdapter("select ID,(select MC from DM_LB where DM=LBID) as LBMC,Title,FBTime,Author from MainPage order by FBTime desc", cn);
                DataTable table = new DataTable();
                try
                {
                    cn.Open();
                    da1.Fill(table);
                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert(‘" + ex.Message + "');</script>");

                }
                this.GridView1.DataSource = table;
                this.GridView1.DataBind();
                cn.Close();

            }
        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da2 = new SqlDataAdapter("select ID,(select MC from DM_LB where DM=LBID) as LBMC,Title,FBTime,Author from MainPage where LBID=" + this.DropDownList1.SelectedValue + " order by FBTime desc", cn);
            DataTable table2 = new DataTable();
            try
            {
                da2.Fill(table2);
            }
            catch { }
            this.GridView1.DataSource = table2;
            this.GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)//返回发布
        {
            Response.Redirect("Main_Manage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)//详细内容
        {
            try
            {
                string ID = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
                Response.Redirect("Main_Content.aspx?ID=" + ID + "");
            }
            catch { }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)//删除
        {
            Business.Users.Competence thecom = new Business.Users.Competence();
            string qx = thecom.isCompetence("" + Session["LoginStudentXH"].ToString() + "", "52");
            if (qx == "")
            {
                string ID = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
                SqlCommand cmd = new SqlCommand("delete MainPage where ID=" + ID + "", cn);
                try
                {
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    setdata(this.DropDownList1.SelectedValue);
                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert(‘" + ex.Message + "');</script>");
                }
                finally
                {
                    cn.Close();
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('你没有权限，如有疑问，请与管理员联系！');</script>");
            }

            
        }
        public void setdata(string lmlb)
        {

            SqlCommand comm = new SqlCommand("select ID,(select MC from DM_LB where DM=LBID) as LBMC,Title,FBTime,Author from MainPage where LBID=" + lmlb + " order by FBTime desc", cn);
            SqlDataAdapter da3 = new SqlDataAdapter(comm);
            DataTable table3 = new DataTable();
            da3.Fill(table3);
            GridView1.DataSource = table3;
            GridView1.DataBind();

        }

    }
}