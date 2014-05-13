using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace photo
{
    public partial class 班级相册 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataTable dt = new DataTable();
            //SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=photo;Integrated Security=True");
            //cn.Open();
            //SqlCommand com = new SqlCommand();
            //com.Connection = cn;
            //com.CommandText = "select 图片的路径 from 班级风采 ";
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = com;
            //da.Fill(dt);

            //this.GridView1.DataSource = dt;
            //this.GridView1.DataBind();

            //cn.Close();
        }
        //public object 图片路径 { get; set; }

        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    DataBind();
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/上传.aspx");
        }
    }
}