using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WJDC
{
    public partial class noTj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MCXS.aspx");
        }

        protected void homeLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MCXS.aspx");
        }

        protected void MclrLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/wjlr.aspx");
        }

        protected void delLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/WJSC.aspx");
        }

        //protected void TJLinkButton_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("/tjcx.aspx");
        //}
    }
}