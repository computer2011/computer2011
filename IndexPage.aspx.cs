using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace computer2011
{
    public partial class IndexPage : System.Web.UI.Page
    {
        SqlConnection cn =new SqlConnection( new ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DataTable table1 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter("select top 6 text from MainPage where LBID=1 order by ID desc", cn);//班级简介
                da1.Fill(table1);
                this.GridView1.DataSource = table1;
                this.GridView1.DataBind();

                #region
                SqlDataAdapter da = new SqlDataAdapter("select  ID,LBID,Title from MainPage ", cn);
                DataSet ds = new DataSet();
                da.Fill(ds, "table");


                DataView DV1 = new DataView();//最新班级新闻
                DV1.Table = ds.Tables["table"];
                DV1.Sort = "ID desc";
                DV1.RowFilter = "LBID=2";
                this.GridView2.DataSource = DV1;
                this.GridView2.DataBind();

                DataView DV2 = new DataView();//最新学习资料
                DV2.Table = ds.Tables["table"];
                DV2.Sort = "ID desc";
                DV2.RowFilter = "LBID=3";
                this.GridView3.DataSource = DV2;
                this.GridView3.DataBind();

                DataView DV3 = new DataView();//班级活动回顾
                DV3.Table = ds.Tables["table"];
                DV3.Sort = "ID desc";
                DV3.RowFilter = "LBID=4";
                this.GridView4.DataSource = DV3;
                this.GridView4.DataBind();

                DataView DV4 = new DataView();//班级活动回顾
                DV4.Table = ds.Tables["table"];
                DV4.Sort = "ID desc";
                DV4.RowFilter = "LBID=5";
                this.GridView5.DataSource = DV4;
                this.GridView5.DataBind();
                #endregion
                #region
                //DataTable table2 = new DataTable();
                //SqlDataAdapter da2 = new SqlDataAdapter("select top 5 ID,LBID,Title from MainPage where LBID=2 order by ID desc", cn);//最新班级新闻
                //da2.Fill(table2);
                //this.GridView2.DataSource = table2;
                //this.GridView2.DataBind();

                //DataTable table3 = new DataTable();
                //SqlDataAdapter da3 = new SqlDataAdapter("select top 5 ID,LBID,Title from MainPage where LBID=3 order by ID desc", cn);//最新学习资料
                //da3.Fill(table3);
                //this.GridView3.DataSource = table3;
                //this.GridView3.DataBind();

                //DataTable table4 = new DataTable();
                //SqlDataAdapter da4 = new SqlDataAdapter("select top 5 ID,LBID,Title from MainPage where LBID=4 order by ID desc", cn);//班级活动回顾
                //da4.Fill(table4);
                //this.GridView4.DataSource = table4;
                //this.GridView4.DataBind();

                //DataTable table5 = new DataTable();
                //SqlDataAdapter da5 = new SqlDataAdapter("select top 5 ID,LBID,Title from MainPage where LBID=5 order by ID desc", cn);//友情链接
                //da5.Fill(table5);
                //this.GridView5.DataSource = table5;
                //this.GridView5.DataBind();
                #endregion

            }





            this.Label5.Text = "你是第" + Session["count"] + "位访问者";

        }

        protected void LinkButton4_Click(object sender, EventArgs e)//跳转到相应模块
        {
            string ID = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label13")).Text;
            Response.Redirect("Main_Content.aspx?ID="+ID+"");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            string ID = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label14")).Text;
            Response.Redirect("Main_Content.aspx?ID=" + ID + "");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            string ID = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label15")).Text;
            Response.Redirect("Main_Content.aspx?ID=" + ID + "");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            string ID = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label16")).Text;
            Response.Redirect("Main_Content.aspx?ID=" + ID + "");
        }

    }
}