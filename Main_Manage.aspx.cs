﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace computer2011
{
    public partial class Main_Manage : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string act = null;
                try
                {
                    act = Session["LoginStudentXM"].ToString();
                }
                catch
                {
                    this.divmanage.Visible = false;
                    //Response.Write("<script>alert('请先登录!');window.href ='http://computer2011.apphb.com/default.aspx'</script>");
                    Response.Write("<script>alert('请先登录!');window.location.href ='IndexPage.aspx'</script>");
                    return;
                    // Response.Write("<script>alert('请先登录!');window.location.href ='http://computer2011.apphb.com/default.aspx'</script>");
                    // return;
                }

                //if (act != null)
                //{
                Business.Users.Competence thecom = new Business.Users.Competence();
                string qx = thecom.isCompetence("" + Session["LoginStudentXH"].ToString() + "", "17");
                if (qx == "")
                {
                    SqlDataAdapter da = new SqlDataAdapter("select * from DM_LB", cn);
                    DataSet ds = new DataSet();
                    cn.Open();
                    da.Fill(ds, "TitleType");
                    cn.Close();
                    this.DropDownList1.DataSource = ds.Tables["TitleType"].DefaultView;
                    this.DropDownList1.DataValueField = ds.Tables["TitleType"].Columns[0].ColumnName;
                    this.DropDownList1.DataTextField = ds.Tables["TitleType"].Columns[1].ColumnName;
                    this.DropDownList1.DataBind();
                }
                else
                {
                    this.divmanage.Visible = false;
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('你没有权限，如有疑问，请与管理员联系！');</script>");
                }
                //}

            }

            //{
            //    this.divmanage.Visible = false;
            //    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('请先登录!');</script>");



        }



        protected void Button1_Click(object sender, EventArgs e)//发布
        {
            this.Button1.Enabled = false;
            bool yz = true;
            string message = "";

            if (this.TextBox1.Text == "")
            {
                yz = false;
                message += "标题不能为空；";
            }
            if (this.TextBox1.Text.Length > 14)
            {
                yz = false;
                message += "标题不能超过14个字符；";
            }
            if (this.TextArea1.Value == "")
            {
                yz = false;
                message += "正文不能为空";
            }
            TimeZoneInfo bjTimeZoneInfo = TimeZoneInfo.FindSystemTimeZoneById("China Standard Time");
            DateTime Time = DateTime.Now;
            DateTime Ctime = TimeZoneInfo.ConvertTime(Time, bjTimeZoneInfo);

            SqlCommand cmd = new SqlCommand("insert into MainPage(LBID,Title,Text,FBTime,Author)values(" + this.DropDownList1.SelectedValue + ",'" + this.TextBox1.Text + "','" + this.TextArea1.Value + "','" + Ctime + "','" + Session["LoginStudentXM"].ToString() + "')", cn);
            if (yz == true)
            {
                try
                {

                    cn.Open();
                    cmd.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('发布成功！');</script>");
                    this.Button1.Enabled = true;

                }
                catch
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('发布失败，请检查网络或格式是否正确，如有疑问请与系统管理员联系！');</script>");
                }
                finally
                {
                    cn.Close();
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('" + message + "');</script>");
                this.Button1.Enabled = true;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Business.Users.Competence thecom = new Business.Users.Competence();
            string qx = thecom.isCompetence("" + Session["LoginStudentXH"].ToString() + "", "17");
            if (qx == "")
            {
                Response.Redirect("MainContentSelect.aspx");
            }
            else
            {
                Response.Write("<script>alert('你没有权限，如有疑问请与管理员联系!');window.location.href ='Main_Manage.aspx'</script>");
            }
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("http://computer2011.apphb.com/default.aspx");
        //}
    }
}