using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace classphoto
{
    public partial class xcgl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection("Data Source=.;Initial Catalog=photo;Integrated Security=True");
            myConn.Open();
            string sqlStr = "select * from grfc";
            SqlDataAdapter myDa = new SqlDataAdapter(sqlStr, myConn);
            DataSet myDs = new DataSet();
            myDa.Fill(myDs);
            GridView1.DataSource = myDs;
            GridView1.DataKeyNames = new string[] { "photoID" };
            GridView1.DataBind();
            myDs.Dispose();
            myDs.Dispose();
            myConn.Close();
        
            

        }
        

        

       

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            int photoID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string sqlStr = "delete from grfc where photoID=" + photoID;
            SqlConnection myconn = new SqlConnection("Data Source=.;Initial Catalog=photo;Integrated Security=True");
            myconn.Open();
            SqlCommand myCmd = new SqlCommand(sqlStr, myconn);
            myCmd.ExecuteNonQuery();
            myCmd.Dispose();
            myconn.Close();
            GridView1.EditIndex = -1;
            this.GridView1.DataBind();
        }

        
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                ((LinkButton)e.Row.Cells[0].Controls[0]).Attributes.Add("onclick", "return confirm('确定要删除吗？')");
            }
        }

       

        
       


       
    }
}