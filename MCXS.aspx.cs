using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WJDC
{
    public partial class MCXS : System.Web.UI.Page
    {
       // SqlConnection cn;
        SqlCommand cmd;
        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
           
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select Wjh,Wjm,WjTime,student.sno,student.name from Wj,student where student.sno=Wj.sno";
            cmd.CommandType = System.Data.CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable table = new DataTable();
            da.Fill(table);

            this.GridView1.DataSource = table;
            this.GridView1.DataBind();
            //cmd.Parameters.Add("@Wjm", SqlDbType.NChar, 80);
            //cmd.Parameters.Add("@WjTime", SqlDbType.DateTime, 8);
        }



        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            string id = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
            Session["id"] = id;
            Response.Redirect("TMXS.aspx");

            
        }

        //protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        //{
        //    //cmd.Parameters["@Wjm"].Value = this.HyperLink1.Text;
        //    //cmd.Parameters["@WjTime"].Value = this.Label1.Text;

           

        //}


        protected void homeLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MCXS.aspx");
        }

        protected void MclrLinkButton_Click(object sender, EventArgs e)
        {
            Business.Users.Competence thecom = new Business.Users.Competence();
            string qx = thecom.isCompetence("" + Session["LoginStudentXH"] + "", "30");
            if (qx == "")
            {
                Response.Redirect("/wjlr.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + qx + "');</script>");
            }
           
        }

        protected void delLinkButton_Click(object sender, EventArgs e)
        {
            Business.Users.Competence thecom = new Business.Users.Competence();
            string qx = thecom.isCompetence("" + Session["LoginStudentXH"] + "", "32");
            if (qx == "")
            {
                Response.Redirect("/WJSC.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + qx + "');</script>");
            }
           
        }

        //protected void TJLinkButton_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("/tjcx.aspx");
        //}

        protected void TJbtn_Click(object sender, EventArgs e)
        {
            string id1 = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
            Session["ID1"] = id1;
            Response.Redirect("TjcxTm.aspx?wjh=" + id1);
        }

        protected void dtbtn_Click(object sender, EventArgs e)
        {
            string id = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
            Session["id"] = id;
            Response.Redirect("TMXS.aspx");
        }
    }
}