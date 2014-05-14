using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ZHLH
{
    public partial class shixiantongji : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
                   
            //var txt = (DropDownList)FindControl("DropDownList1");
   
         
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string id = ((Label)((LinkButton)sender).Parent.FindControl("label1")).Text;
            Session["ID"] = id;
            Response.Redirect("xiangxixinxi.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["MXN"] =  DropDownList1.SelectedValue;
            SqlCommand com = new SqlCommand("select p.Sno, s.Name, p.df, P.XN, P.PM,P.JZXJ from Student_PFTJ p join Student s on p.Sno = s.Sno where xn = '" + DropDownList1.SelectedValue + "' ORDER BY DF", cn);
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = com;
            da.Fill(table);
            this.GridView1.DataSource = table;
            this.GridView1.DataBind();
        }
        /// <summary>
        /// 填写综合量化
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            Business.Users.Competence thecom = new Business.Users.Competence();
            if (thecom.isCompetence("" + Session["LoginStudentXH"] + "", "21") == "")
            {
                Response.Redirect("zitian.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + thecom.isCompetence("" + Session["LoginStudentXH"] + "", "21") + "');</script>");

            }
        }
        /// <summary>
        /// 项目管理
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button3_Click(object sender, EventArgs e)
        {
            Business.Users.Competence thecom = new Business.Users.Competence();
            if (thecom.isCompetence("" + Session["LoginStudentXH"] + "", "22") == "")
            {
               Response.Redirect("Xmpfb.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + thecom.isCompetence("" + Session["LoginStudentXH"] + "", "22") + "');</script>");

            }
            
        }
        /// <summary>
        /// 分类管理
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button4_Click(object sender, EventArgs e)
        {
            Business.Users.Competence thecom = new Business.Users.Competence();
            if (thecom.isCompetence("" + Session["LoginStudentXH"] + "", "22") == "")
            { 
               Response.Redirect("FLGLB.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + thecom.isCompetence("" + Session["LoginStudentXH"] + "", "22") + "');</script>");

            }
           
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Business.Users.Competence thecom = new Business.Users.Competence();
            if (thecom.isCompetence("" + Session["LoginStudentXH"] + "", "22") == "")
            {
               Response.Redirect("ZHLH.aspx");;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + thecom.isCompetence("" + Session["LoginStudentXH"] + "", "22") + "');</script>");

            }
            
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("zonghelianghua.aspx");
        //}
    }
}