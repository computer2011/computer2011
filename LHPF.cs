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

        public static void LH(string XN)
        {
            SqlConnection cn = new SqlConnection(new ConnectDatabase().conn);

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