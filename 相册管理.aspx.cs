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
    public partial class 相册管理 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataTable dt = new DataTable();
            //SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=photo;Integrated Security=True");
            //cn.Open();
            //SqlCommand com = new SqlCommand();
            //com.Connection = cn;
            //com.CommandText = "select * from 个人风采 ";
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = com;
            //da.Fill(dt);

            //this.GridView1.DataSource = dt;
            //this.GridView1.DataBind();

            //cn.Close();
            SqlConnection myConn = GetConnection();
            myConn.Open();
            string sqlStr = "select * from tb_个人风采";
            SqlDataAdapter myDa = new SqlDataAdapter(sqlStr,myConn);
            DataSet myDs = new DataSet();
            myDa.Fill(myDs);
            GridView1.DataSource = myDs;
            GridView1.DataKeyNames = new string[] { "个人风采"};
            GridView1.DataBind();
            myDs.Dispose();
            myDs.Dispose();
            myConn.Close();



        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //int 图片名称 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string sqlStr = "delete from tb_个人风采 where 图片名称=" + 图片名称;
            SqlConnection myconn = GetConnection();
            myconn.Open();
            SqlCommand myCmd = new SqlCommand(sqlStr, myconn);
            myCmd.ExecuteNonQuery();
            myCmd.Dispose();
            myconn.Close();
            GridView1.EditIndex = -1;
            this.GridView1.DataBind();
        }

        private SqlConnection GetConnection()
        {
            throw new NotImplementedException();
        }








        public string 图片名称 { get; set; }
    }
}