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
    public partial class xiangxixinxi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string id = Session["ID"].ToString();
            string xh = Request.QueryString["Sno"].ToString();
            string xn = Request.QueryString["XN"].ToString();
            SqlConnection con = new SqlConnection("Data Source=HCW4GXJWFCWVBJ9\\SQLEXPRESS;Initial Catalog=ZHLH;Integrated Security=True");
            SqlCommand com = new SqlCommand("SELECT Sno ,LHPF.XN,XMMC ,dfyj FROM XMB ,LHPF", con);
            //SqlCommand com = new SqlCommand("SELECT distinct DFFL.FLMC,XMB.XMMC,LHPF.DF FROM  DFFL, XMB,LHPF where XMB.XID IN ('X001','X002','X003','X004','X005','X011','X012','X013','X014','X015','X016','X018''X006','X007','X008','X009','X010','X017') AND DFFL.FID=XMB.FID", con);
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = com;
            da.Fill(table);
            this.GridView1.DataSource = table;
            this.GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("shixiantongji.aspx");
        }
    }
}