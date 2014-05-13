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
        //SqlConnection cn = new SqlConnection(new ConnectDatabase().conn);
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
            string xn = DropDownList1.SelectedValue;
            Session["MXN"] = xn;
            SqlConnection con = new SqlConnection("Data Source=HCW4GXJWFCWVBJ9\\SQLEXPRESS;Initial Catalog=ZHLH;Integrated Security=True");
            SqlCommand com = new SqlCommand("select p.Sno, s.Name, p.df, P.XN, P.PM,P.JZXJ from PFTJ p join Student s on p.Sno = s.Sno where xn = '" + xn + "'ORDER BY DF", con);
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = com;
            da.Fill(table);
            this.GridView1.DataSource = table;
            this.GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("zonghelianghua.aspx");
        }
    }
}