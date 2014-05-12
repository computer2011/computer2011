using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WJDC
{
    public partial class TMXS : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod.Equals("GET"))
            {
                CheckID();
            }

        }
                                    
        //问卷显示
        private void CheckID()
        {

            DataTable table = new DataTable();
            string id = Session["id"].ToString();
           
            SqlDataAdapter da = new SqlDataAdapter("select tm,th from Tm where wjh='" + id + "'", cn);

            da.Fill(table);
            string Content = "";
            string th = "";
            for (int i = 0; i < table.Rows.Count; i++)
            {
                //if (!string.IsNullOrEmpty(table.Rows[i][0].ToString()))
                    Content = table.Rows[i][0].ToString() + "</br>";//题目

                Label label1 = new Label();
                label1.ID = "label" + i.ToString();
                label1.Text = (i + 1) + "、" + Content;
                //Session["ID"] = i + 1;
                this.div1.Controls.Add(label1);

                //if (!string.IsNullOrEmpty(table.Rows[i][2].ToString()))
                //    Content = table.Rows[i][2].ToString() + "</br>";
                //Label2.ID = i.ToString();
                //Label2.Text = Content;

                th = table.Rows[i][1].ToString();//题号

                SqlDataAdapter da1 = new SqlDataAdapter("select choice,tixing,ID from choice,Tm where choice.th='" + th + "' and Tm.th='" + th + "'", cn);
                DataTable table1 = new DataTable();
                da1.Fill(table1);
                for (int j = 0; j < table1.Rows.Count; j++)
                {
                    string xx = table1.Rows[j][0].ToString();


                    if (table1.Rows[j][1].ToString() == "0")//当Tixing等于0的时候，为单选，使用radio显示出来
                    {
                        RadioButton radio1 = new RadioButton();
                        radio1.ID = table1.Rows[j][2].ToString();
                        radio1.GroupName = table.Rows[i][1].ToString();
                        radio1.Checked = false;
                        radio1.Text = xx + "<br />";


                        this.div1.Controls.Add(radio1);
                    }
                    else//当Tixing不等于0的时候，为不定项选择，使用checkbox显示出来
                    {
                        CheckBox box1 = new CheckBox();
                        box1.ID = table1.Rows[j][2].ToString();

                        box1.Checked = false;
                        box1.Text = xx + "<br />";

                        this.div1.Controls.Add(box1);
                    }
                    table1.Rows[j][0] += "<br />";
                }


            }

        }
        //提交按钮
        protected void tjButton_Click(object sender, EventArgs e)
        {
            DataTable table3 = new DataTable();
            string id = Session["id"].ToString();
            
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "Select sno,wjh from Tongji where sno=@sno and wjh=@wjh";
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Parameters.Add("@sno", SqlDbType.NVarChar, 12);
            cmd.Parameters.Add("@wjh", SqlDbType.NChar, 12);
            cmd.Parameters["@sno"].Value = this.txtsno.Text;
            cmd.Parameters["@wjh"].Value = id;


            try
            {
                cn.Open();
                SqlDataAdapter da3 = new SqlDataAdapter();
                da3.SelectCommand = cmd;
                da3.Fill(table3);

                if (table3.Rows.Count > 0)
                {
                    Response.Redirect("/noTj.aspx");
                }
                else
                {
                    SqlCommand cmd1 = new SqlCommand("INSERT INTO TongJi(sno,Wjh) VALUES ('" + txtsno.Text.Trim() + "','" + id + "')", cn);
                    cmd1.ExecuteNonQuery();
                    
                    DataTable table = new DataTable();
                    //string id = Session["id"].ToString();
                    //SqlConnection cn = new SqlConnection("Data Source=(local);Initial Catalog=Wjdc;Integrated Security=True");
                    SqlDataAdapter da = new SqlDataAdapter("select tm,th from Tm where wjh='" + id + "'", cn);

                    da.Fill(table);
                    for (int i = 0; i < table.Rows.Count; i++)
                    {
                        string tmid = table.Rows[i][1].ToString();//题号

                        SqlDataAdapter da1 = new SqlDataAdapter("select choice,tixing,ID,Number from choice,Tm where choice.th='" + tmid + "' and Tm.th='" + tmid + "'", cn);
                        DataTable xmtable = new DataTable();
                        da1.Fill(xmtable);
                        for (int j = 0; j < xmtable.Rows.Count; j++)
                        {
                            string xxid = xmtable.Rows[j][2].ToString();
                            bool xz = false; // 选项被选中为true
                            if (xmtable.Rows[j][1].ToString() == "0")//tixing为0的时候为单项选择
                            {
                                var radio = Request.Form[tmid];
                                xz = radio != null && radio.Equals(xxid);
                            }
                            else
                            {
                                var box = Request.Form[xxid];
                                xz = box != null;
                            }
                            if (xz)
                            {
                                SqlCommand com = new SqlCommand("update choice set Number = Number + 1 where ID = " + xxid, cn);
                                //var sql = "update choice set Number = Number + 1 where ID = " + xxid;
                               
                                com.ExecuteNonQuery();
                                cn.Close();
                            }
                        }   
                    }
                    //SqlCommand cmd5 = new SqlCommand("INSERT INTO TongJi(sno,Wjh) VALUES ('" + txtsno.Text.Trim() + "','" + id + "')", cn);
                    //cn.Open();

                    //cmd5.ExecuteNonQuery();
                   
                }

                
            }
            //catch 
            //{
                
            //}
           
            finally
            {
                cn.Close();
                Response.Redirect("/successTj.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MCXS.aspx");
        }

    }
}