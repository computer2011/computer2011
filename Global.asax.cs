using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data;
using System.Data.SqlClient;

namespace computer2011
{
    public class Global : System.Web.HttpApplication
    {
       
        public SqlCommand cmd;
        SqlConnection cn = new SqlConnection(new ConnectDatabase().conn);
        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

            cmd = new SqlCommand("select num from  Visite_Recorder", cn);


            try
            {
                cn.Open();
                Session["count"] = cmd.ExecuteScalar();
            }
            catch 
            {
                
            }
            finally
            {
                cn.Close();
            }
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

            cmd = new SqlCommand("update Visite_Recorder set num=num+1", cn);
            
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
            }
            catch
            { 
            }
            finally
            {
                cn.Close();
            }


        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}