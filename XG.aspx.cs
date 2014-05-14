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
        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlDataAdapter sa = new SqlDataAdapter("select Sno,Name from Student where sno like '201101%'", cn);
                DataTable table = new DataTable();
                sa.Fill(table);
                this.GridView1.DataSource = table;
                this.GridView1.DataBind();
 
            }
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            this.GridView1.Visible = true;
            this.ButtonUpdate.Visible = true;
            string id = Session["id"].ToString();
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string sno = GridView1.Rows[i].Cells[0].Text;
                string kqid = (GridView1.Rows[i].Cells[2].FindControl("DropDownList1") as DropDownList).SelectedValue.ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "update kq set kqid='" + kqid + "'where id='" + id + "' and sno='" + sno + "'";
                cn.Open();
                try
                {
                        int val = cmd.ExecuteNonQuery();
                        cn.Close();
                        if (val <= 0)
                        {
                            SqlCommand TJ = new SqlCommand();
                            TJ.Connection = cn;
                            TJ.CommandText = "insert into kq(id,sno,kqid) values('" + id + "','" + sno + "','" + kqid + "')";
                            cn.Open();
                            TJ.ExecuteNonQuery();
                            cn.Close();
                        }
                        else
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('修改数据成功!')</script>");
                }
                catch (Exception exp)
                {
                    ClientScript.RegisterStartupScript(this.GetType(),"alert", "<script>window.alert('插入数据失败! 详情:" + exp.Message + "')</script>");
                }
                
            }
            TimeZoneInfo bjTimeZoneInfo = TimeZoneInfo.FindSystemTimeZoneById("China Standard Time");
            DateTime Time = DateTime.Now;
            DateTime Ctime = TimeZoneInfo.ConvertTime(Time, bjTimeZoneInfo);
            SqlCommand SJ = new SqlCommand();
            SJ.Connection = cn;
            SJ.CommandText = "update sj set time='" + Ctime+ "' where id='" + id + "'";
            cn.Open();
            SJ.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("TJ.aspx");
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
            Business.Users.Competence thecom = new Business.Users.Competence();
            string qx = thecom.isCompetence("" + Session["LoginStudentXH"] + "", "63");
            if (qx == "")
            {
                Response.Redirect("TimeTJ.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + qx + "');</script>");
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Business.Users.Competence thecom = new Business.Users.Competence();
            string qx = thecom.isCompetence("" + Session["LoginStudentXH"] + "", "62");
            if (qx == "")
            {
                Response.Redirect("CJ.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + qx + "');</script>");
            }
        }
    }
}