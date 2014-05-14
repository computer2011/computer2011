using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace computer2011
{
    public partial class CJstudent : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(new computer2011.ConnectDatabase().conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string strSQL = "select Wjh,wjm from Wj";
                SqlDataAdapter ada = new SqlDataAdapter(strSQL, cn);
                DataSet ds = new DataSet();
                try
                {
                    ada.Fill(ds, "Wj");
                }
                catch { }
                DropDownList1.DataSource = ds.Tables["wj"];
                DropDownList1.DataValueField = ds.Tables["wj"].Columns[0].ColumnName;
                DropDownList1.DataTextField = ds.Tables["wj"].Columns[1].ColumnName;
                DropDownList1.DataBind();
                ds.Dispose();
            }
           
            
            //choiceDropDownList.DataSource = ds.Tables["Wj"].DefaultView;

            //choiceDropDownList.DataValueField = ds.Tables["Wj"].Columns[0].ColumnName;
            //choiceDropDownList.DataTextField = ds.Tables["Wj"].Columns[1].ColumnName;
            //choiceDropDownList.DataBind();
            //choiceDropDownList.DataSource = ds.Tables["Wj"].DefaultView;
            //ds.Dispose();
        }

        protected void CJstuNumbtn_Click(object sender, EventArgs e)
        {
            string CJsno = DropDownList1.SelectedValue.ToString();
            SqlCommand cmd = new SqlCommand("select count(sno) from tongji where tongji.wjh='" + CJsno + "'", cn);
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            try
            {
                da.Fill(table);
            }
            catch { }
            for (int j = 0; j < table.Rows.Count; j++)
            {
              Label2.Text = table.Rows[j][0].ToString() + "人";
            }
        }

        protected void nostubtn_Click(object sender, EventArgs e)
        {
            string CJsno = DropDownList1.SelectedValue.ToString();
            SqlCommand cmd = new SqlCommand("select sno,name from student where student.sno not in (select DISTINCT sno from TongJi where tongji.Wjh='" + CJsno + "')", cn);
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(table);
            this.noGridView.DataSource = table;
            this.noGridView.DataBind();
        }

        protected void yesstubtn_Click(object sender, EventArgs e)
        {
            string CJsno = DropDownList1.SelectedValue.ToString();
            
            SqlCommand cm = new SqlCommand(" select Tongji.sno,name from Tongji,student where student.sno=Tongji.sno and Tongji.Wjh='" + CJsno + "'  ", cn);
            DataTable table1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cm;
            da1.Fill(table1);
            this.yesGridView1.DataSource = table1;
            this.yesGridView1.DataBind();
        }

        protected void HomeLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MCXS.aspx");
        }
    }
}