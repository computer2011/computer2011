using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace classphoto
{
    public partial class grxc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/sc.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/classxc.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Business.Users.Competence thecom = new Business.Users.Competence();


            if (thecom.isCompetence("" + Session["LoginStudentXH"] + "", "71") == "")
            {
                Response.Redirect("~/xcgl.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + thecom.isCompetence("" + Session["LoginStudentXH"] + "", "71") + "');</script>");
            }
        }
    }
}