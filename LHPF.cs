using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace computer2011
{
    public class LHPF
    {
        SqlConnection cn = new SqlConnection(new ConnectDatabase().conn);
<<<<<<< HEAD
        public static void  LH(string XN)
        {
=======
        public static void LH(string XN)
        {
            SqlConnection cn = new SqlConnection(new ConnectDatabase().conn);
>>>>>>> b52341142da66b3827ce914777560d935d17e9b9
            string LHPF = "insert into Student_LHPF (Sno, XN, XID, DF, DFYJ) select Sno,XN, 7 as xid, SUM(jd*xf)/sum(XF)*50/4 as df, SUM(jd*xf)/sum(XF) as DFYJ from Student_CJ group by Sno,XN where XN='" + XN + "'";
            SqlCommand CM = new SqlCommand();
            CM.CommandText = LHPF;
            CM.Connection = cn;
            cn.Open();
            CM.ExecuteNonQuery();
            cn.Close();
        }
    }
}