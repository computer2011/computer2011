﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace computer2011.Users
{
    public partial class UserMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //安全退出
        protected void Button1_Click(object sender, EventArgs e)
        {
           
                Session["UserRoleEditXH"] = "";
                //Response.Redirect("UserRoleEdit.aspx");
        }


        }
    }