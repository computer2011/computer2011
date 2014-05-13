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
    public partial class TimeTJ : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter sa = new SqlDataAdapter("select Sno,Name from Student order by sno", cn);
            DataTable table = new DataTable();
            sa.Fill(table);
            this.GridViewTime.DataSource = table;
            this.GridViewTime.DataBind();
        }
        protected void ButtonTime_Click(object sender, EventArgs e)
        {
            string begin = this.TextBoxBeginTime.Text;
            string end = this.TextBoxEndTime.Text;
            for (int i = 0; i < GridViewTime.Rows.Count; i++)
            {
                string TimeSno = this.GridViewTime.Rows[i].Cells[0].Text;
                cn.Open();
                SqlCommand TimeCQ = new SqlCommand();
                TimeCQ.Connection = cn;
                TimeCQ.CommandText = "select count(kqid) from kq,sj where kq.ID=sj.ID and kqid='1' and Sno='" + TimeSno + "' and time>='" + begin + "' and time<='" + end + "'";
                SqlCommand TimeCD = new SqlCommand();
                TimeCD.Connection = cn;
                TimeCD.CommandText = "select count(kqid) from kq,sj where kq.ID=sj.ID and kqid='2' and Sno='" + TimeSno + "' and time>='" + begin + "'and time<='" + end + "'";
                SqlCommand TimeZT = new SqlCommand();
                TimeZT.Connection = cn;
                TimeZT.CommandText = "select count(kqid) from kq,sj where kq.ID=sj.ID and kqid='3' and Sno='" + TimeSno + "' and time>='" + begin + "'and time<='" + end + "'";
                SqlCommand TimeQX = new SqlCommand();
                TimeQX.Connection = cn;
                TimeQX.CommandText = "select count(kqid) from kq,sj where kq.ID=sj.ID and kqid='4' and Sno='" + TimeSno + "' and time>='" + begin + "'and time<='" + end + "'";
                try
                {
                    this.GridViewTime.Rows[i].Cells[2].Text = TimeCQ.ExecuteScalar().ToString();
                    this.GridViewTime.Rows[i].Cells[3].Text = TimeCD.ExecuteScalar().ToString();
                    this.GridViewTime.Rows[i].Cells[4].Text = TimeZT.ExecuteScalar().ToString();
                    this.GridViewTime.Rows[i].Cells[5].Text = TimeQX.ExecuteScalar().ToString();
                    cn.Close();
                }
                catch (Exception exp)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "", "错误" + exp.Message + "')");
                }
                this.GridViewTime.Visible = true;

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TJ.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CX.aspx");
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