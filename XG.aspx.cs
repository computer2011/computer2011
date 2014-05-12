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
                SqlDataAdapter sa = new SqlDataAdapter("select Sno,Name from Student", cn);
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