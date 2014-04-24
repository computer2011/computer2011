using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data;
using  System.Data.SqlClient;

namespace computer2011
{
    public class Global : System.Web.HttpApplication
    {
        public SqlConnection cn;
        public SqlCommand cmd;

        protected void Application_Start(object sender, EventArgs e)
        {
           
        }

        protected void Session_Start(object sender, EventArgs e)
        {
             cn = new SqlConnection("Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=aL6wpXdRyJSgqh4FJDhyfKBB6D3XiURZa6aRWgSPKD8TmYx2ge2HjSXxjBzS4nGL;");
             cmd = new SqlCommand("select num from  Visite_Recorder", cn);
             cn.Open();
            Session["count"]= cmd.ExecuteScalar();
            cn.Close();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
         
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

            cn = new SqlConnection("Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=aL6wpXdRyJSgqh4FJDhyfKBB6D3XiURZa6aRWgSPKD8TmYx2ge2HjSXxjBzS4nGL;");
            cmd = new SqlCommand("update Visite_Recorder set num=num+1", cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        protected void Application_End(object sender, EventArgs e)
        {
          
        }
    }
}