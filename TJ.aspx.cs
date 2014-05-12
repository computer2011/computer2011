using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace KQ
{
    public partial class TJ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=aL6wpXdRyJSgqh4FJDhyfKBB6D3XiURZa6aRWgSPKD8TmYx2ge2HjSXxjBzS4nGL;");
            SqlDataAdapter sa = new SqlDataAdapter("select * from sj", cn);
            DataTable table = new DataTable();
            sa.Fill(table);
            this.GridViewTJ.DataSource = table;
            this.GridViewTJ.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string id = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
            DataTable table = new DataTable();
            SqlConnection cn = new SqlConnection("Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=aL6wpXdRyJSgqh4FJDhyfKBB6D3XiURZa6aRWgSPKD8TmYx2ge2HjSXxjBzS4nGL;");
            SqlDataAdapter da = new SqlDataAdapter("select kq.Sno,name ,kqlb from kq,Student,kqlb where kq.Sno=Student.Sno and kq.kqID=kqlb.kqID and kq.ID='" + id + "'", cn);
            da.Fill(table);
            this.GridViewXQ.DataSource = table;
            this.GridViewXQ.DataBind();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CX.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CJ.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            string id = ((Label)((LinkButton)sender).Parent.Parent.Controls[0].FindControl("Label1")).Text;
            Session["id"] = id;
            Response.Redirect("XG.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("TimeTJ.aspx");
        }

    }
}