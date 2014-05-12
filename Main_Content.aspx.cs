using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace computer2011
{
    public partial class Main_Content : System.Web.UI.Page
    {
      
        SqlConnection cn =new SqlConnection( new ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable table = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter("select DM_LB.MC,title,Text,FBTime from MainPage,DM_LB where ID=" + Request.QueryString["ID"] + " and DM_LB.DM=LBID ", cn);
                da.Fill(table);
                this.Label1.Text ="/ "+ table.Rows[0][0].ToString().Trim()+"/ ";
                this.Label2.Text = table.Rows[0][1].ToString().Trim();
                this.text1.Value =  table.Rows[0][2].ToString().Trim();
                this.Label3.Text = "发布时间："+table.Rows[0][3].ToString().Trim();
            }
        }
    }
}