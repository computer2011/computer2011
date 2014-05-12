using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;


namespace WJDC.Models
{
    public class FjdcDAL
    {
        public static IList<FjdcTm> GetTmList(string wjh)
        {
            
            var cn = new SqlConnection("Data Source=(local);Initial Catalog=Wjdc;Integrated Security=True");
            var cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select Th,Tm from Tm where Tm.Wjh="+wjh+"";
            cmd.CommandType = System.Data.CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable table = new DataTable();
            da.Fill(table);

            List<FjdcTm> tmlist = new List<FjdcTm>();
            for (int row = 0; row < table.Rows.Count; row++)
            {
                FjdcTm tm = new FjdcTm();
                tm.Th = (long)table.Rows[row][0];
                tm.Tm = table.Rows[row][1].ToString();
                tmlist.Add(tm);
                

                SqlDataAdapter da1 = new SqlDataAdapter("select ID,choice,tixing,number from choice,Tm where choice.th='" + tm.Th + "' and Tm.th='" + tm.Th + "'", cn);
                DataTable table1 = new DataTable();
                da1.Fill(table1);
                List<FjdcChoice> choicelist = new List<FjdcChoice>();
                tm.Choices = choicelist;
                int sum = 0;
                for (int j = 0; j < table1.Rows.Count; j++)
                {
                    FjdcChoice choice = new FjdcChoice();
                    choice.Choice = table1.Rows[j][1].ToString();
                    choice.Number = (int)table1.Rows[j][3];
                    sum += choice.Number;
                    choicelist.Add(choice);
                }

                foreach (var choice in choicelist)
                {
                    choice.Bfb = (int)(100.0 * choice.Number / sum);
                }
            }
            return tmlist;
        }
    }
}