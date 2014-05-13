using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WJDC
{
    public partial class TjcxTm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

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

        protected void CJLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/CJstudent.aspx");
        }

        
    }
}