using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace computer2011
{
    public partial class UTC_LinkButton : System.Web.UI.UserControl
    {
        /// <summary>
        /// linkbutton的text属性
        /// </summary>
        public string The_Text
        {
            set { this.LinkButton1.Text = value; }
        }
        ///// <summary>
        ///// 上课星期
        ///// </summary>
        //public string SKXQ
        //{
        //    get;
        //    set;
        //}
        ///// <summary>
        ///// 上课时段
        ///// </summary>
        //public string SKSD
        //{
        //    get;
        //    set;
        //}
        public delegate void L_ClickEvent();
        public L_ClickEvent L_Click;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            this.L_Click();
        }
    }
}