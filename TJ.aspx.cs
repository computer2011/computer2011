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
    public partial class TJ : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter sa = new SqlDataAdapter("select * from sj", cn);
            DataTable table = new DataTable();
            sa.Fill(table);
            this.GridViewTJ.DataSource = table;
            this.GridViewTJ.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string id = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("select kq.Sno,name ,kqlb from kq,Student,kqlb where kq.Sno=Student.Sno and kq.kqID=kqlb.kqID and kq.ID='" + id + "' order by kq.sno", cn);
            da.Fill(table);
            this.GridViewXQ.DataSource = table;
            this.GridViewXQ.DataBind();
            this.GridViewXQ.Visible = true;
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

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Business.Users.Competence thecom = new Business.Users.Competence();
            string qx = thecom.isCompetence("" + Session["LoginStudentXH"] + "", "61");
            if (qx == "")
            {
                string id = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
                Session["id"] = id;
                Response.Redirect("XG.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + qx + "');</script>");
            }
            
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("TimeTJ.aspx");
        }

    }
}