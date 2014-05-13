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
    public partial class 班级相册1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            //DataTable dt = new DataTable();
            //SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=photo;Integrated Security=True");
            //cn.Open();
            //SqlCommand com = new SqlCommand();
            //com.Connection = cn;
            //com.CommandText = "select 图片路径 from 个人风采 ";
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = com;
            //da.Fill(dt);

            //this.GridView2.DataSource = dt;
            //this.GridView2.DataBind();

            //cn.Close();


        }
        //public object 图片路径 { get; set; }

        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView2.PageIndex = e.NewPageIndex;
        //    DataBind();
        //}
       
    }
}