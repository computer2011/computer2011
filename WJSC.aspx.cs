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
    public partial class WJSC : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select Wjh,Wjm,WjTime,student.sno,student.name from Wj,student where student.sno=Wj.sno";
            cmd.CommandType = System.Data.CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable table = new DataTable();
            da.Fill(table);
            this.delGridView.DataSource = table;
            this.delGridView.DataBind();
        }
        protected void delLinkButton_Click(object sender, EventArgs e)
        {

            Business.Users.Competence thecom = new Business.Users.Competence();
            string qx = thecom.isCompetence("" + Session["LoginStudentXH"] + "", "30");
            if (qx == "")
            {
                string id = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
                Session["id"] = id;

                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "EXEC DELETE_wj  '" + id + "'";
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("/WJSC.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + qx + "');</script>");
            }
           
        }

        protected void homeLinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MCXS.aspx");
        }

        

        //protected void TJLinkButton_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("/tjcx.aspx");
        //}

        protected void WJLULinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/wjlr.aspx");
        }
       
    }
}