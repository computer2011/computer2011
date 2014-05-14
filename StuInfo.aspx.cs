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
    public partial class StuInfo : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable table = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter("SELECT  [Sno],[Name],(select MC from DM_Sex where DM=[Sex]) ,(select MC from DM_MZ where DM=[MZ]) ,[Birthday],(select MC from DM_ZZMM where DM=[ZZMM]),[SFZH] ,[P_Self_Num] ,[QQ] ,[SS_Address] ,[ZhiWu] ,[F_Address] ,[YouBian]  ,[F_PhoneName] ,[F_PhoneNum]  ,[CommitteeName]  ,[CommitteePhone]  ,[FMDWFZRXM]  ,[FMDWFZRDH]  ,[BZ]  FROM [Student] where sno='" + Request.QueryString["ID"] + "'", cn);
                try
                {
                    da.Fill(table);

                    this.TextBox1.Text = table.Rows[0][1].ToString().Trim();
                    this.TextBox2.Text = table.Rows[0][0].ToString().Trim();
                    this.TextBox3.Text = table.Rows[0][4].ToString().Trim();//出生日期
                    this.TextBox4.Text = table.Rows[0][5].ToString().Trim();//政治面貌
                    this.TextBox5.Text = table.Rows[0][6].ToString().Trim();
                    this.TextBox6.Text = table.Rows[0][7].ToString().Trim();
                    this.TextBox7.Text = table.Rows[0][8].ToString().Trim();
                    this.TextBox8.Text = table.Rows[0][9].ToString().Trim();
                    this.TextBox9.Text = table.Rows[0][10].ToString().Trim();
                    this.TextBox10.Text = table.Rows[0][11].ToString().Trim();
                    this.TextBox11.Text = table.Rows[0][12].ToString().Trim();
                    this.TextBox12.Text = table.Rows[0][13].ToString().Trim();
                    this.TextBox13.Text = table.Rows[0][14].ToString().Trim();
                    this.TextBox14.Text = table.Rows[0][15].ToString().Trim();
                    this.TextBox15.Text = table.Rows[0][16].ToString().Trim();
                    this.TextBox16.Text = table.Rows[0][17].ToString().Trim();
                    this.TextBox17.Text = table.Rows[0][18].ToString().Trim();
                    this.TextBox18.Text = table.Rows[0][19].ToString().Trim();
                  
                    this.TextBox19.Text = table.Rows[0][3].ToString().Trim();//民族

                    this.TextBox20.Text = table.Rows[0][2].ToString().Trim();//
                }
                catch
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('查询失败，请检查网络，如有疑问请与系统管理员联系。');</script>");
                }


                if (Request.QueryString["CZLX"] == "0")
                {
                    this.TextBox1.Enabled = false;
                    this.TextBox2.Enabled = false;
                    this.TextBox20.Enabled = false;
                }
                if (Request.QueryString["CZLX"] == "1")
                {
                   
                    this.Button1.Visible = false;
                    //this.TextBox1.Enabled = false;
                    this.en.Disabled = true;
                   
                }

                
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

              SqlCommand cmd=new SqlCommand("update Student set [MZ]=(select DM from DM_MZ where MC= '"+this.TextBox19.Text+"') ,[Birthday]='"+this.TextBox3.Text+"' ,[ZZMM]=(select DM from DM_ZZMM where MC='"+this.TextBox4.Text+"') ,[SFZH]='"+this.TextBox5.Text+"',[P_Self_Num]='"+this.TextBox6.Text+"',[QQ]='"+this.TextBox7.Text+"' ,[SS_Address]='"+this.TextBox8.Text+"' ,[ZhiWu]='"+this.TextBox9.Text+"' ,[F_Address]='"+this.TextBox10.Text+"' ,[YouBian]='"+this.TextBox11.Text+"' ,[F_PhoneName]='"+this.TextBox12.Text+"' ,[F_PhoneNum]='"+this.TextBox13.Text+"'  ,[CommitteeName]='"+this.TextBox14.Text+"' ,[CommitteePhone]='"+this.TextBox15.Text+"' ,[FMDWFZRXM]='"+this.TextBox16.Text+"' ,[FMDWFZRDH]='"+this.TextBox17.Text+"' ,[BZ]='"+this.TextBox18.Text+"'  where Sno='"+this.TextBox2.Text+"'",cn);
              try
              {
                  cn.Open();
                  cmd.ExecuteNonQuery();
                  Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('提交成功！');</script>");

              }
              catch
              {
                  Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('提交失败，请检查网络，如有疑问请与系统管理员联系。');</script>");
              }
              finally
              {
                  cn.Close();
              }
        }
    }
}