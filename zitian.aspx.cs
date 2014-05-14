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
    public partial class zitian : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               //SqlConnection con = new SqlConnection("Data Source=HCW4GXJWFCWVBJ9\\SQLEXPRESS;Initial Catalog=ZHLH;Integrated Security=True");
               // SqlCommand com = new SqlCommand("SELECT  XMB.XID,XMB.XMMC,DF,DFYJ from XMB,LHPF where XMB.XID IN ('X001','X002','X003','X004','X005','X009','X010','X011','X012','X013','X014','X015','X016','X018')and XMB.xid=LHPF.xid ", cn);
                SqlCommand com = new SqlCommand("select Sno, a.XID, ZTBS,xmmc from Student_XMB a,Student_LHPF b where ZTBS ='1' and Sno='" + Session["LoginStudentXH"] + "'", cn);
                DataTable table = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = com;
                da.Fill(table);
                this.GridView1.DataSource = table;
                this.GridView1.DataBind();
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {

                //var txt = (TextBox)GridView1.Rows[i].FindControl("TextBox1");
                //var txt3 = (TextBox)GridView1.Rows[i].FindControl("TextBox3");
                //var txt2 = (TextBox)(GridView1.Rows[i].FindControl("TextBox2"));
                string txt = ((TextBox)GridView1.Rows[i].FindControl("TextBox1")).Text;
                string txt3 = ((TextBox)GridView1.Rows[i].FindControl("TextBox3")).Text ;
                string txt2 = ((TextBox)GridView1.Rows[i].FindControl("TextBox2")).Text ;
                //if (txt == null)
                //{
                //    continue;
                // }" + Session["LoginStudentXH"] + " " + Session["MXN"].ToString() + "
             
               
                DataAccess.GetData GD = new DataAccess.GetData();
                DataTable xx = GD.GetDataTable("insert into Student_LHPF(Sno,XN,XID,DF,DFYJ) VALUES ('" + Session["LoginUserXH"] + "','" + Session["MXN"].ToString() + "','" + txt3 + "','" + txt + "','" + txt2 + "')");
            //    //SqlConnection con = new SqlConnection("Data Source=HCW4GXJWFCWVBJ9\\SQLEXPRESS;Initial Catalog=ZHLH;Integrated Security=True");
                //var sno = Session["LoginUserXH"]; //?? "201101030275";
            //    var val = txt.Text;
            //    var val1 = txt3.Text;
            //    var val2 = txt2.Text;
            //  // string xn = Session["MXN"].ToString();
            //    var insertSql = string.Format("insert into  Student_LHPF(Sno,XN,XID,DF,DFYJ) VALUES ('" + Session["LoginUserXH"] + " ','" + Session["MXN"].ToString() + "','" + val1 + "','{3}','{4}')", sno, val1, val, val2);
                //SqlCommand com = new SqlCommand(insertSql);//  "insert into  LHPF(Sno,XN,XID,DF,DFYJ) VALUES ((select XID from XMB where XMMC="+ +"),'" + txt + "','" + txt3 + "') ", con);
                SqlCommand com = new SqlCommand();
                com.Connection = cn;
                try
                {

                    {
                        cn.Open();
                        int ret = com.ExecuteNonQuery();
                        //con.Close();  
                        if (ret <= 0)

                            ClientScript.RegisterStartupScript(this.GetType(), "", "alert('提交数据失败!')");
                        else
                            ClientScript.RegisterStartupScript(this.GetType(), "", "alert('提交数据成功!')");

                    }

                }
                catch (Exception ex)
                {
                    // ClientScript.RegisterStartupScript(this.GetType(), "", "alert('插入数据失败! 详情:" + ex.Message + "')");

                }              
            }
           
                   
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //SqlConnection conn = new SqlConnection("Data Source=HCW4GXJWFCWVBJ9\\SQLEXPRESS;Initial Catalog=ZHLH;Integrated Security=True");
            //SqlCommand comm = new SqlCommand("insert into PFTJ select Sno,sum(DF) as DF from LHPF group by Sno", conn);
            SqlCommand comm = new SqlCommand("insert Student_PFTJ (Sno,XN, DF) select Sno,XN, SUM(DF) as df from Student_LHPF where XN='MXN' group by Sno ");
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            
            Response.Redirect("shixiantongji.aspx");
        }
    }
}