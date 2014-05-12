using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
namespace Business.Users
{
   public class Role
    {
        DataAccess.GetData GD = new DataAccess.GetData();
        #region 属性

        /// <summary>
        /// 角色号
        /// </summary>
        public string RoleID
        {
            get;
            set;
        }

        /// <summary>
        /// 角色名称
        /// </summary>
        public string RoleName
        {
            get;
            set;
        }

        /// <summary>
        /// 
        /// 备注
        /// </summary>
        public string Remark
        {
            get;
            set;
        }
#endregion
        /// <summary>
        /// 获取角色列表
        /// </summary>
        /// <returns></returns>
        public DataTable GetRoleList()
        {
            DataTable rolelist = GD.GetDataTable("select * from DM_Role");
            return rolelist;
        }
        /// <summary>
        /// 添加角色
        /// </summary>
        /// <param name="RoleID"></param>
        /// <param name="RoleName"></param>
        /// <returns></returns>
        public DataTable AddRole(string RoleID ,string RoleName)
        {
            DataTable addrole = GD.GetDataTable("insert Role values('"+RoleID+"','"+RoleName+"')");
            return addrole;
        }
        /// <summary>
        /// 删除角色
        /// </summary>
        /// <param name="RoleID"></param>
        /// <returns></returns>
        public DataTable DeleteRole(string RoleID)
        {
            DataTable deleterole = GD.GetDataTable("delete Role where RoleID = '"+RoleID+"'");
            return deleterole;
        }
        /// <summary>
        /// 获取角色权限列表
        /// </summary>
        /// <param name="RoleID"></param>
        /// <returns></returns>
        public DataTable GetRoleCompetenceList( string RoleID)
        {
            DataTable rolecompetencelist = GD.GetDataTable("select * from RoleCompetence where RoleID= '"+RoleID+"'");
            return rolecompetencelist;
        }

        /// <summary>
        /// 获取角色权限列表
        /// </summary>
        /// <param name="RoleID"></param>
        /// <returns></returns>
        public DataTable GetRoleCompetence(string RoleName)
        {
            DataTable rolecompetence = GD.GetDataTable("select * from RoleCompetence where RoleID in (select RoleID from UserRole where RoleID in (select RoleID from DM_Role where RoleName='"+RoleName+"'))");
            return rolecompetence;
        }
        /// <summary>
        /// 获取角色权限列表
        /// </summary>
        /// <param name="RoleID"></param>
        /// <returns></returns>
        public DataTable RoleCompetence(string RoleID , string CompetenceID)
        {
            DataTable rolecompetence = GD.GetDataTable("select * from RoleCompetence where RoleID ='"+RoleID+"' and CompetenceID = '"+CompetenceID+"'");
            return rolecompetence;
        }
        /// <summary>
        /// 添加角色权限
        /// </summary>
        /// <param name="RoleID"></param>
        /// <param name="CompetenceID"></param>
        /// <returns></returns>
        public DataTable AddRoleCompetence(string RoleID, string CompetenceID)
        {
            DataTable addrolecompetence = GD.GetDataTable("insert RoleCompetence values('"+RoleID+"','"+CompetenceID+"')");
            return addrolecompetence;
        }
        /// <summary>
        /// 删除角色权限
        /// </summary>
        /// <param name="RoleID"></param>
        /// <param name="CompetenceID"></param>
        /// <returns></returns>
        public DataTable deleteRoleCompetence(string RoleID , string CompetenceID)
        {
            DataTable deleterolecompetence = GD.GetDataTable("delete RoleCompetence where RoleID = '"+RoleID+"' and CompetenceID = '"+CompetenceID+"'");
            return deleterolecompetence;
        }
    }
}
