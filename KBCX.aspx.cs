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
    public partial class KBCX : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable table;

        public KBCX()
        {
            cn = new SqlConnection("Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=aL6wpXdRyJSgqh4FJDhyfKBB6D3XiURZa6aRWgSPKD8TmYx2ge2HjSXxjBzS4nGL;");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UTC_LinkButton1.L_Click += LinkButton1_Click;
            this.UTC_LinkButton2.L_Click += LinkButton2_Click;
            this.UTC_LinkButton3.L_Click += LinkButton3_Click;
            this.UTC_LinkButton4.L_Click += LinkButton4_Click;
            this.UTC_LinkButton5.L_Click += LinkButton5_Click;
            this.UTC_LinkButton6.L_Click += LinkButton6_Click;
            this.UTC_LinkButton7.L_Click += LinkButton7_Click;
            this.UTC_LinkButton8.L_Click += LinkButton8_Click;
            this.UTC_LinkButton9.L_Click += LinkButton9_Click;
            this.UTC_LinkButton10.L_Click += LinkButton10_Click;
            this.UTC_LinkButton11.L_Click += LinkButton11_Click;
            this.UTC_LinkButton12.L_Click += LinkButton12_Click;
            this.UTC_LinkButton13.L_Click += LinkButton13_Click;
            this.UTC_LinkButton14.L_Click += LinkButton14_Click;
            this.UTC_LinkButton15.L_Click += LinkButton15_Click;
            this.UTC_LinkButton16.L_Click += LinkButton16_Click;
            this.UTC_LinkButton17.L_Click += LinkButton17_Click;
            this.UTC_LinkButton18.L_Click += LinkButton18_Click;
            this.UTC_LinkButton19.L_Click += LinkButton19_Click;
            this.UTC_LinkButton20.L_Click += LinkButton20_Click;
            this.UTC_LinkButton21.L_Click += LinkButton21_Click;
            this.UTC_LinkButton22.L_Click += LinkButton22_Click;
            this.UTC_LinkButton23.L_Click += LinkButton23_Click;
            this.UTC_LinkButton24.L_Click += LinkButton24_Click;
            this.UTC_LinkButton25.L_Click += LinkButton25_Click;
            this.UTC_LinkButton26.L_Click += LinkButton26_Click;
            this.UTC_LinkButton27.L_Click += LinkButton27_Click;
            this.UTC_LinkButton28.L_Click += LinkButton28_Click;
            this.UTC_LinkButton29.L_Click += LinkButton29_Click;
            this.UTC_LinkButton30.L_Click += LinkButton30_Click;
            this.UTC_LinkButton31.L_Click += LinkButton31_Click;
            this.UTC_LinkButton32.L_Click += LinkButton32_Click;
            this.UTC_LinkButton33.L_Click += LinkButton33_Click;
            this.UTC_LinkButton34.L_Click += LinkButton34_Click;
            this.UTC_LinkButton35.L_Click += LinkButton35_Click;


        }
        #region//linkbutton单击事件
        /// <summary>
        /// linkbutton单击事件
        /// </summary>
        private void LinkButton1_Click()
        {
            SKXX("周一", "第1,2节");
        }
        private void LinkButton2_Click()
        {
            SKXX("周二", "第1,2节");
        }
        private void LinkButton3_Click()
        {
            SKXX("周三", "第1,2节");
        }
        private void LinkButton4_Click()
        {
            SKXX("周四", "第1,2节");
        }
        private void LinkButton5_Click()
        {
            SKXX("周五", "第1,2节");
        }
        private void LinkButton6_Click()
        {
            SKXX("周一", "第3,4节");
        }
        private void LinkButton7_Click()
        {
            SKXX("周二", "第3,4节");
        }
        private void LinkButton8_Click()
        {
            SKXX("周三", "第3,4节");
        }
        private void LinkButton9_Click()
        { SKXX("周四", "第3,4节"); }
        private void LinkButton10_Click()
        { SKXX("周五", "第3,4节"); }
        private void LinkButton11_Click()
        { SKXX("周一", "第5节"); }
        private void LinkButton12_Click()
        { SKXX("周二", "第5节"); }
        private void LinkButton13_Click()
        { SKXX("周三", "第5节"); }
        private void LinkButton14_Click()
        { SKXX("周四", "第5节"); }
        private void LinkButton15_Click()
        { SKXX("周五", "第5节"); }
        private void LinkButton16_Click()
        { SKXX("周一", "第6,7节"); }
        private void LinkButton17_Click()
        { SKXX("周二", "第6,7节"); }
        private void LinkButton18_Click()
        { SKXX("周三", "第6,7节"); }
        private void LinkButton19_Click()
        { SKXX("周四", "第6,7节"); }
        private void LinkButton20_Click()
        {
            SKXX("周五", "第6,7节");
        }
        private void LinkButton21_Click()
        {
            SKXX("周一", "第8,9节");
        }
        private void LinkButton22_Click()
        {
            SKXX("周二", "第8,9节");
        }
        private void LinkButton23_Click()
        {
            SKXX("周三", "第8,9节");
        }
        private void LinkButton24_Click()
        {
            SKXX("周四", "第8,9节");
        }
        private void LinkButton25_Click()
        {
            SKXX("周五", "第8,9节");
        }
        private void LinkButton26_Click()
        {
            SKXX("周一", "第10,11节");
        }
        private void LinkButton27_Click()
        {
            SKXX("周二", "第10,11节");
        }
        private void LinkButton28_Click()
        {
            SKXX("周三", "第10,11节");
        }
        private void LinkButton29_Click()
        {
            SKXX("周四", "第10,11节");
        }
        private void LinkButton30_Click()
        {
            SKXX("周五", "第10,11节");
        }
        private void LinkButton31_Click()
        {
            SKXX("周一", "第12节");
        }
        private void LinkButton32_Click()
        {
            SKXX("周二", "第12节");
        }
        private void LinkButton33_Click()
        {
            SKXX("周三", "第12节");
        }
        private void LinkButton34_Click()
        {
            SKXX("周四", "第12节");
        }
        private void LinkButton35_Click()
        {
            SKXX("周五", "第12节");
        }

        #endregion
        /// <summary>
        /// 统计某时刻上课人数
        /// </summary>
        /// <param name="XQ">星期</param>
        /// <param name="SD">节数</param>
        /// <returns></returns>
        private string SKCount(string XQ, string SD)
        {

            string count = "0";
             cmd = new SqlCommand("TJ_KB", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandTimeout = 200;
            cmd.Parameters.Add("@XQ", SqlDbType.NVarChar, 3).Value = XQ;
            cmd.Parameters.Add("@SD", SqlDbType.NVarChar, 5).Value = SD;
            cmd.Parameters.Add("@count", SqlDbType.Int).Direction = ParameterDirection.Output;
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                count = "共有" + cmd.Parameters["@count"].Value.ToString() + "人上课";
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('查询失败，请检查网络，如有疑问请与系统管理员联系。');</script>");
            }
            finally
            {
                cn.Close();
            }
            
            return count;
        }
        /// <summary>
        /// 上课人数详细信息
        /// </summary>
        /// <param name="XQ">星期</param>
        /// <param name="SD">时段</param>
        private void SKXX(string XQ, string SD)
        {
            da = new SqlDataAdapter("select * from course where Time1 like '%" + XQ + "" + SD + "%' or time2 like '%" + XQ + "" + SD + "%'", cn);
            table = new DataTable();
            try
            {
                da.Fill(table);
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('查询失败，请检查网络，如有疑问请与系统管理员联系。');</script>");
            }

            this.GridView1.DataSource = table;
            this.GridView1.DataBind();

        }
        /// <summary>
        /// 统计课表
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            this.div1.Visible = true;
            this.UTC_LinkButton1.The_Text = SKCount("周一", "第1,2节");

            this.UTC_LinkButton2.The_Text = SKCount("周二", "第1,2节");

            this.UTC_LinkButton3.The_Text = SKCount("周三", "第1,2节");

            this.UTC_LinkButton4.The_Text = SKCount("周四", "第1,2节");

            this.UTC_LinkButton5.The_Text = SKCount("周五", "第1,2节");

            this.UTC_LinkButton6.The_Text = SKCount("周一", "第3,4节");

            this.UTC_LinkButton7.The_Text = SKCount("周二", "第3,4节");

            this.UTC_LinkButton8.The_Text = SKCount("周三", "第3,4节");

            this.UTC_LinkButton9.The_Text = SKCount("周四", "第3,4节");

            this.UTC_LinkButton10.The_Text = SKCount("周五", "第3,4节");

            this.UTC_LinkButton11.The_Text = SKCount("周一", "第5节");

            this.UTC_LinkButton12.The_Text = SKCount("周二", "第5节");

            this.UTC_LinkButton13.The_Text = SKCount("周三", "第5节");

            this.UTC_LinkButton14.The_Text = SKCount("周四", "第5节");

            this.UTC_LinkButton15.The_Text = SKCount("周五", "第5节");

            this.UTC_LinkButton16.The_Text = SKCount("周一", "第6,7节");

            this.UTC_LinkButton17.The_Text = SKCount("周二", "第6,7节");

            this.UTC_LinkButton18.The_Text = SKCount("周三", "第6,7节");

            this.UTC_LinkButton19.The_Text = SKCount("周四", "第6,7节");

            this.UTC_LinkButton20.The_Text = SKCount("周五", "第6,7节");

            this.UTC_LinkButton21.The_Text = SKCount("周一", "第8,9节");

            this.UTC_LinkButton22.The_Text = SKCount("周二", "第8,9节");

            this.UTC_LinkButton23.The_Text = SKCount("周三", "第8,9节");

            this.UTC_LinkButton24.The_Text = SKCount("周四", "第8,9节");

            this.UTC_LinkButton25.The_Text = SKCount("周五", "第8,9节");

            this.UTC_LinkButton26.The_Text = SKCount("周一", "第10,11节");

            this.UTC_LinkButton27.The_Text = SKCount("周二", "第10,11节");

            this.UTC_LinkButton28.The_Text = SKCount("周三", "第10,11节");

            this.UTC_LinkButton29.The_Text = SKCount("周四", "第10,11节");

            this.UTC_LinkButton30.The_Text = SKCount("周五", "第10,11节");

            this.UTC_LinkButton31.The_Text = SKCount("周一", "第12节");

            this.UTC_LinkButton32.The_Text = SKCount("周二", "第12节");

            this.UTC_LinkButton33.The_Text = SKCount("周三", "第12节");

            this.UTC_LinkButton34.The_Text = SKCount("周四", "第12节");

            this.UTC_LinkButton35.The_Text = SKCount("周五", "第12节");


        }
        /// <summary>
        /// 查询指定人课表
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button2_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from course where sno='" + this.TextBox2.Text + "' or name='" + this.TextBox3.Text + "' ", cn);
            table = new DataTable();
            try
            {
                da.Fill(table);
            }
            catch
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", @"<script>alert('查询失败，请检查网络，如有疑问请与系统管理员联系。');</script>");
            }
            this.GridView2.DataSource = table;
            this.GridView2.DataBind();
        }


    }
}