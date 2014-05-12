using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace Business.Users
{
    public class Competence
    {
        DataAccess.GetData GD = new DataAccess.GetData();
        #region 属性

        /// <summary>
        /// 权限号
        /// </summary>
        public string CompetenceID
        {
            get;
            set;
        }

        /// <summary>
        /// 权限名称
        /// </summary>
        public string CompetenceName
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
        /// 获取权限列表
        /// </summary>
        /// <returns></returns>
        public DataTable GetCompetenceList()
        {
            DataTable competenceist = GD.GetDataTable("select * from DM_Competence");
            return competenceist;
        }
        /// <summary>
        /// 添加权限项
        /// </summary>
        /// <param name="RoleID"></param>
        /// <param name="RoleName"></param>
        /// <returns></returns>
        public DataTable AddCompetence(string CompetenceID, string CompetenceName)
        {
            DataTable addcompetence = GD.GetDataTable("insert DM_Competence values('" + CompetenceID + "','" + CompetenceName + "'");
            return addcompetence;
        }
        /// <summary>
        /// 删除权限
        /// </summary>
        /// <param name="RoleID"></param>
        /// <returns></returns>
        public DataTable DeleteCompetence(string CompetenceID)
        {
            DataTable deletecompetence = GD.GetDataTable("delete Competence where CompetenceID = '" + CompetenceID + "'");
            return deletecompetence;
        }

        #region 是否有权限判断 
        public string isCompetence(string XH ,string CompetenceID)
        {
            DataTable iscompetemce = GD.GetDataTable("select * from RoleCompetence where RoleID in(select RoleID from UserRole where Sno='"+XH+"') and CompetenceID ='"+CompetenceID+"'");
            if (iscompetemce.Rows.Count > 0)
            {
                return "";
            }
            else
            {
                return "操作失败，你没有该权限！";
            }
 
        }

        #endregion
    }
}
