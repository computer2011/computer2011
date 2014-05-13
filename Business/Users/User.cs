using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Business.Users
{
    public class User
    {
        DataAccess.GetData GD = new DataAccess.GetData();
        #region 属性

        /// <summary>
        /// 学号
        /// </summary>
        public string XH
        {
            get;
            set;
        }

        /// <summary>
        /// 名称
        /// </summary>
        public string XM
        {
            get;
            set;
        }

        /// <summary>
        /// 密码
        /// </summary>
        public string PassWord
        {
            get;
            set;
        }
        /// <summary>
        /// 专业名称
        /// </summary>
        public string ZYMC
        {
            get;
            set;
        }
        /// <summary>
        /// 学院名称
        /// </summary>
        public string XYMC
        {
            get;
            set;
        }
        /// <summary>
        /// 电话
        /// </summary>
        public string Phone
        {
            get;
            set;
        }

        /// <summary>
        /// qq号
        /// </summary>
        public string QQ
        {
            get;
            set;
        }

        /// <summary>
        /// 邮箱
        /// </summary>
        public string email
        {
            get;
            set;
        }
        /// <summary>
        /// 状态
        /// </summary>
        public string State
        {
            get;
            set;
        }

        /// <summary>
        /// 角色列表
        /// </summary>
        public List<string> TheRole
        {
            get;
            set;
        }
        #endregion

        /// <summary>
        /// 管理员登录方法
        /// </summary>
        /// <param name="UserName">用户名</param>
        /// <param name="PassWord">密码</param>
        /// <returns>登录成功的用户实例，如登录未成功，则返回Null</returns>
        public User UserLogin(string XH, string PassWord)
        {
            DataTable login = GD.GetDataTable("select Sno from Users where Sno = '" + XH + "' and PassWord='" + PassWord + "'");
            if (login.Rows.Count > 0)
            {
                User TheUser = new User();
                return TheUser;
            }
            return null;
        }

        /// <summary>
        /// 学生登录方法
        /// </summary>
        /// <param name="UserName">用户名</param>
        /// <param name="PassWord">密码</param>
        /// <returns>登录成功的用户实例，如登录未成功，则返回Null</returns>
        public User Login(string XH, string PassWord)
        {
            DataTable login = GD.GetDataTable("select Sno from Student where Sno = '" + XH + "' and PassWord='" + PassWord + "'");
            if (login.Rows.Count > 0)
            {
                User TheUser = new User();
                return TheUser;
            }
            return null;
        }
        /// <summary>
        /// 管理员修改密码
        /// </summary>
        public String UserChangePassword(string XH, String oldpaw, String newpaw, String QRnewpaw)
        {
            //三个空都不为空
            if (oldpaw != "" && newpaw != "" && QRnewpaw != "")
            {
                //新密码长度判断
                if (oldpaw.Length < 6 || newpaw.Length < 6 || QRnewpaw.Length < 6)
                {
                    return "密码长度输入不合法，密码至少为6位";
                }

                //判断新旧密码是否一致   
                else if (oldpaw == newpaw)
                {
                    return "新旧密码一样,请重新输入";

                }
                //两次密码输入不一致
                else if (newpaw != QRnewpaw)
                {
                    return "两次输入密码不一致，请重新输入";
                }
                else
                {
                    try
                    {
                        DataTable xx = UserPwdUpdate("" + XH + "", "" + QRnewpaw + "");
                        return "密码修改成功";
                    }
                    catch
                    {
                        return "密码修改失败";
                    }
                }

            }
            else
            {

                return "密码不能为空！";
            }
        }


        /// <summary>
        /// 学生修改密码
        /// </summary>
        public String StudentChangePassword(string XH, String oldpaw, String newpaw, String QRnewpaw)
        {
            //三个空都不为空
            if (oldpaw != "" && newpaw != "" && QRnewpaw != "")
            {
                //新密码长度判断
                if (oldpaw.Length < 6 || newpaw.Length < 6 || QRnewpaw.Length < 6)
                {
                    return "密码长度输入不合法，密码至少为6位";
                }

                //判断新旧密码是否一致   
                else if (oldpaw == newpaw)
                {
                    return "新旧密码一样,请重新输入";

                }
                //两次密码输入不一致
                else if (newpaw != QRnewpaw)
                {
                    return "两次输入密码不一致，请重新输入";
                }
                else
                {
                    try
                    {
                        DataTable xx = StudentPwdUpdate("" + XH + "", "" + QRnewpaw + "");
                        return "密码修改成功";
                    }
                    catch
                    {
                        return "密码修改失败";
                    }
                }

            }
            else
            {

                return "密码不能为空！";
            }
        }
        /// <summary>
        /// 管理员修改密码
        /// </summary>
        /// <param name="XH"></param>
        /// <param name="Pwd"></param>
        /// <returns></returns>
        public DataTable UserPwdUpdate(string XH, string Pwd)
        {
            DataTable pwd = GD.GetDataTable("update Users set PassWord='" + Pwd + "' where Sno='" + XH + "'");
            return pwd;
        }

        /// <summary>
        /// 学生修改密码
        /// </summary>
        /// <param name="XH"></param>
        /// <param name="Pwd"></param>
        /// <returns></returns>
        public DataTable StudentPwdUpdate(string XH, string Pwd)
        {
            DataTable pwd = GD.GetDataTable("update Student set PassWord='" + Pwd + "' where Sno='" + XH + "'");
            return pwd;
        }


        /// <summary>
        /// 获取用户列表
        /// </summary>
        /// <param name="sqltj"></param>
        /// <returns></returns>
        public DataTable GetUserList(string sqltj)
        {
            string sql = "select * from student";
            sql += sqltj;
            DataTable userlist = GD.GetDataTable(sql);
            return userlist;
        }
        /// <summary>
        /// 获取用户角色列表
        /// </summary>
        /// <param name="XH"></param>
        /// <returns></returns>
        public DataTable GetUserRoleList(string XH)
        {
            DataTable userrolelist = GD.GetDataTable("select * from UserRole where Sno = '" + XH + "'");
            return userrolelist;
        }

        /// <summary>
        /// 获取用户角色
        /// </summary>
        /// <param name="XH"></param>
        /// <param name="RoleID"></param>
        /// <returns></returns>
        public DataTable GetUserRole(string XH, string RoleID)
        {
            DataTable userrole = GD.GetDataTable("select * from UserRole where Sno = '" + XH + "' and RoleID = '" + RoleID + "'");
            return userrole;
        }
        /// <summary>
        /// 添加用户角色
        /// </summary>
        /// <param name="XH"></param>
        /// <param name="RoleID"></param>
        /// <returns></returns>
        public DataTable addUserRole(string XH, string RoleID)
        {
            DataTable adduaerrole = GD.GetDataTable("insert UserRole values('" + XH + "','" + RoleID + "')");
            return adduaerrole;
        }

        /// <summary>
        /// 删除用户角色
        /// </summary>
        /// <param name="XH"></param>
        /// <param name="RoleID"></param>
        /// <returns></returns>
        public DataTable deleteUserRole(string XH, string RoleID)
        {
            DataTable deleteuserrole = GD.GetDataTable("delete UserRole where Sno ='" + XH + "' and RoleID = '" + RoleID + "'");
            return deleteuserrole;
        }

        /// <summary>
        /// 禁止用户 
        /// </summary>
        /// <param name="XH"></param>
        public void JZUser(string XH)
        {
            DataTable uc = GD.GetDataTable("delete RoleCompetence where RoleID in (select RoleID from RoleUser where Sno='"+XH+"')");//删掉对应的权限
            DataTable scqx = GD.GetDataTable("delete RoleUser where Sno= '" + XH + "'");//删掉该用户对应角色
            
        }
    }
}
