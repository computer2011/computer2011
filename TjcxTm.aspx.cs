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
            Response.Redirect("/wjlr.aspx");
        }

        protected void delLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/WJSC.aspx");
        }

        
    }
}