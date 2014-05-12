using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Data.Common;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccess
{
    public class DataAccess
    {
        public SqlConnection myConn;
        public DataAccess()
        {
            myConn = new SqlConnection("Server=0c88271c-fdd3-49c7-9b3d-a26800e5cc00.sqlserver.sequelizer.com;Database=db0c88271cfdd349c79b3da26800e5cc00;User ID=azefycnhafeeukyh;Password=aL6wpXdRyJSgqh4FJDhyfKBB6D3XiURZa6aRWgSPKD8TmYx2ge2HjSXxjBzS4nGL;");
            //myConn = new SqlConnection("Data Source=PC201312101741\\SQLEXPRESS;Initial Catalog=BeautifulHome;Integrated Security=True");
        }
    }

    //该类用于向数据提交数据
    public class ExcuteData
    {
        private DataAccess DC;
        private SqlDataAdapter Da;
        private SqlCommand SelectCommand;

        //构造函数
        public ExcuteData()
        {
            DC = new DataAccess();
            this.Da = new SqlDataAdapter();
            this.SelectCommand = new SqlCommand();
            this.Da.SelectCommand = this.SelectCommand;
            this.SelectCommand.Connection = this.DC.myConn;
        }

        //检查连接是否关闭
        public void CheckConnectionAndClose()
        {
            if (this.DC.myConn.State == ConnectionState.Open)
            {
                this.DC.myConn.Close();
            }
        }

        public bool UpdateTable(IDbCommand InsertCom, IDbCommand DeleteCom, IDbCommand UpdateCom, DataTable Table, DataTableMapping Mapping)    //数据适配器数据提交
        {
            SqlDataAdapter SqlDa = new SqlDataAdapter();
            SqlDa.TableMappings.Add(Mapping);
            SqlDa.AcceptChangesDuringUpdate = true;
            InsertCom.Connection = this.DC.myConn;
            DeleteCom.Connection = this.DC.myConn;
            UpdateCom.Connection = this.DC.myConn;
            SqlDa.InsertCommand = (SqlCommand)InsertCom;
            SqlDa.UpdateCommand = (SqlCommand)UpdateCom;
            SqlDa.DeleteCommand = (SqlCommand)DeleteCom;
            try
            {
                SqlDa.Update(Table);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Excute(string TableName, DataTable Table, SqlDataAdapter SqlDa)
        {
            AutoCreatAdapterCommand AC = new AutoCreatAdapterCommand(TableName, "SQL Server");
            SqlDa.TableMappings.Add(AC.TableMapping);
            SqlDa.AcceptChangesDuringUpdate = true;
            AC.InsertString.Connection = this.DC.myConn;
            AC.DeleteString.Connection = this.DC.myConn;
            AC.UpdateString.Connection = this.DC.myConn;
            SqlDa.InsertCommand = (SqlCommand)AC.InsertString;
            SqlDa.UpdateCommand = (SqlCommand)AC.UpdateString;
            SqlDa.DeleteCommand = (SqlCommand)AC.DeleteString;
            try
            {
                SqlDa.Update(Table);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Excute(string SQL)              //简单数据提交
        {
            this.SelectCommand.CommandText = SQL;
            try
            {
                this.DC.myConn.Open();
                this.SelectCommand.ExecuteNonQuery();
                this.DC.myConn.Close();
                return true;
            }
            catch
            {
                this.CheckConnectionAndClose();
                return false;
            }
        }

        public bool Excute(IDbCommand Comd)              //简单数据提交
        {
            Comd.Connection = this.DC.myConn;
            try
            {
                this.DC.myConn.Open();
                Comd.ExecuteNonQuery();
                this.DC.myConn.Close();
                return true;
            }
            catch
            {
                this.CheckConnectionAndClose();
                return false;
            }
        }

        public bool Excute(string SQL, ArrayList PName, ArrayList PValue)
        {
            this.SelectCommand.CommandText = SQL;
            for (int i = 0; i < PName.Count; i++)
            {
                this.SelectCommand.Parameters.AddWithValue(PName[i].ToString(), (byte[])PValue[i]);
            }

            try
            {
                this.DC.myConn.Open();
                this.SelectCommand.ExecuteNonQuery();
                this.DC.myConn.Close();
                return true;
            }
            catch
            {
                this.CheckConnectionAndClose();
                return false;
            }
        }     //使用二进制参数的数据提交

        public bool Excute(ArrayList SQL, ArrayList PName, ArrayList PValue, bool IsTransaction)  //使用事务的批量数据提交
        {
            if (IsTransaction)
            {
                this.DC.myConn.Open();
                SqlTransaction myTrans = this.DC.myConn.BeginTransaction();
                try
                {
                    for (int j = 0; j < SQL.Count; j++)
                    {
                        SqlCommand TCommand = new SqlCommand();
                        TCommand.CommandText = SQL[j].ToString();
                        TCommand.Connection = this.DC.myConn;
                        TCommand.Transaction = myTrans;
                        for (int i = 0; i < ((ArrayList)PName[j]).Count; i++)
                        {
                            TCommand.Parameters.AddWithValue(((ArrayList)PName[j])[i].ToString(), (byte[])((ArrayList)PValue[j])[i]);
                        }
                        TCommand.ExecuteNonQuery();
                    }
                    myTrans.Commit();
                    this.DC.myConn.Close();
                    return true;
                }
                catch
                {
                    myTrans.Rollback();
                    this.CheckConnectionAndClose();
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public int Excute(string ProduceName, ArrayList TheParamesterList)  //执行存储过程
        {
            int returnvalue = -1;
            this.SelectCommand.CommandText = ProduceName;
            this.SelectCommand.CommandType = CommandType.StoredProcedure;
            for (int i = 0; i < TheParamesterList.Count; i++)
            {
                this.SelectCommand.Parameters.Add(new SqlParameter(((DataParamester)TheParamesterList[i]).PName, ((DataParamester)TheParamesterList[i]).PValue));
            }
            // this.SelectCommand.Parameters.Add("rv", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

            try
            {
                this.SelectCommand.Connection.Open();
                this.SelectCommand.ExecuteNonQuery();

                //   returnvalue = (int)this.SelectCommand.Parameters["rv"].Value;
                this.SelectCommand.Connection.Close();
                this.SelectCommand.CommandType = CommandType.Text;
                this.SelectCommand.Parameters.Clear();
                this.Da.TableMappings.Clear();
                return returnvalue;
            }
            catch
            {
                this.CheckConnectionAndClose();
                this.SelectCommand.CommandType = CommandType.Text;
                this.SelectCommand.Parameters.Clear();
                this.Da.TableMappings.Clear();
                return -1;
            }
        }
    }

    //该类用于从数据库中获取数据
    public class GetData
    {
        private DataAccess DC;
        private SqlDataAdapter Da;
        private SqlCommand SelectCommand;

        //构造函数
        public GetData()
        {
            DC = new DataAccess();
            this.Da = new SqlDataAdapter();
            this.SelectCommand = new SqlCommand();
            this.Da.SelectCommand = this.SelectCommand;
            this.SelectCommand.Connection = this.DC.myConn;
        }

        //检查连接是否关闭
        public void CheckConnectionAndClose()
        {
            if (this.DC.myConn.State == ConnectionState.Open)
            {
                this.DC.myConn.Close();
            }
        }

        //获取某一数据列表
        public DataTable GetDataTable(string SQL)
        {
            DataTable Table = new DataTable();
            this.SelectCommand.CommandText = SQL;
            try
            {
                this.Da.Fill(Table);
                return Table;
            }
            catch
            {
                this.CheckConnectionAndClose();
                return null;
            }
        }

        //获取某一数据列表(指定数据表)
        public void GetDataTable(string SQL, DataTable Table)
        {
            this.SelectCommand.CommandText = SQL;
            try
            {
                this.Da.Fill(Table);
            }
            catch
            {
                this.CheckConnectionAndClose();
            }
        }

        //获取某一数据值
        public string GetDataValue(string SQL)
        {
            string Value;
            this.SelectCommand.CommandText = SQL;
            try
            {
                this.DC.myConn.Open();
                Value = this.SelectCommand.ExecuteScalar().ToString();
                this.DC.myConn.Close();
                return Value;
            }
            catch
            {
                this.CheckConnectionAndClose();
                return "";
            }
        }

        //获取某一数据值
        public string GetDataNumValue(string SQL)
        {
            string Value;
            this.SelectCommand.CommandText = SQL;
            try
            {
                this.DC.myConn.Open();
                Value = this.SelectCommand.ExecuteScalar().ToString();
                this.DC.myConn.Close();
                if (Value == "")
                {
                    return "0";
                }
                return Value;
            }
            catch
            {
                this.CheckConnectionAndClose();
                return "0";
            }
        }

        //获取二进制数据值
        public byte[] GetDataByteValue(string SQL)
        {
            byte[] Value;
            this.SelectCommand.CommandText = SQL;
            try
            {
                this.DC.myConn.Open();
                Value = (byte[])this.SelectCommand.ExecuteScalar();
                this.DC.myConn.Close();

                return Value;
            }
            catch
            {
                this.CheckConnectionAndClose();
                return null;
            }
        }

        /// <summary>
        /// 通过存储过程获取数据表
        /// </summary>
        /// <param name="ProcedureName"></param>
        /// <param name="Theparameteres"></param>
        /// <returns></returns>
        public DataTable GetDataTableFormProcedure(string ProcedureName, ArrayList TheParamesterList)
        {
            DataTable Table = new DataTable();
            this.SelectCommand.CommandText = ProcedureName;
            this.SelectCommand.CommandType = CommandType.StoredProcedure;
            for (int i = 0; i < TheParamesterList.Count; i++)
            {
                this.SelectCommand.Parameters.Add(new SqlParameter(((DataParamester)TheParamesterList[i]).PName, ((DataParamester)TheParamesterList[i]).PValue));
            }

            try
            {
                this.Da.Fill(Table);
                this.SelectCommand.Parameters.Clear();
                this.SelectCommand.CommandType = CommandType.Text;
                return Table;
            }
            catch
            {
                this.CheckConnectionAndClose();
                this.SelectCommand.Parameters.Clear();
                this.SelectCommand.CommandType = CommandType.Text;
                return null;
            }
        }

        /// <summary>
        /// 通过存储过程获取数据值
        /// </summary>
        /// <param name="ProcedureName"></param>
        /// <param name="Theparameteres"></param>
        /// <returns></returns>
        public string GetDataValueFormProcedure(string ProcedureName, ArrayList TheParamesterList)
        {
            string Value;
            this.SelectCommand.CommandText = ProcedureName;
            this.SelectCommand.CommandType = CommandType.StoredProcedure;
            for (int i = 0; i < TheParamesterList.Count; i++)
            {
                this.SelectCommand.Parameters.Add(new SqlParameter(((DataParamester)TheParamesterList[i]).PName, ((DataParamester)TheParamesterList[i]).PValue));
            }
            this.SelectCommand.Parameters.Add("ReturnValue", SqlDbType.VarChar, 100).Direction = ParameterDirection.Output;

            try
            {
                this.DC.myConn.Open();
                this.SelectCommand.ExecuteNonQuery();
                Value = this.SelectCommand.Parameters["ReturnValue"].Value.ToString();
                this.DC.myConn.Close();
                this.SelectCommand.Parameters.Clear();
                this.SelectCommand.CommandType = CommandType.Text;
                return Value;
            }
            catch
            {
                this.CheckConnectionAndClose();
                this.SelectCommand.Parameters.Clear();
                this.SelectCommand.CommandType = CommandType.Text;
                return "";
            }
        }

        //验证是否存在某一项数据
        public bool Validate(string SQL)
        {
            bool Value = false;
            this.SelectCommand.CommandText = SQL;
            try
            {
                this.DC.myConn.Open();
                SqlDataReader Read = this.SelectCommand.ExecuteReader();
                if (Read.Read())
                {
                    Value = true;
                }
                this.DC.myConn.Close();
            }
            catch
            {
                this.CheckConnectionAndClose();
            }
            return Value;
        }

    }

    //自动生成数据适配器 
    public class AutoCreatAdapterCommand
    {
        private DataAccess DC = new DataAccess();
        private IDbCommand ComSelect;
        private IDbCommand ComUpdate;
        private IDbCommand ComDelete;
        private IDbCommand ComInsert;
        private DataTableMapping Mapping;

        private string tableName;
        private DataTable tableSchema = new DataTable();

        public AutoCreatAdapterCommand(string paraTableName, string ConnctionType)
        {
            this.tableName = paraTableName;
            this.InitialCommand(ConnctionType);
            this.ComSelect.CommandText = "select * from " + tableName.Trim();
            IDbCommand command = DC.myConn.CreateCommand();
            command.CommandText = "select * from " + tableName.Trim();
            DC.myConn.Open();
            IDataReader myReader = command.ExecuteReader(CommandBehavior.KeyInfo);
            this.tableSchema = myReader.GetSchemaTable();
            myReader.Close();
            myReader.Dispose();
            DC.myConn.Close();
            this.CreatInsertString();
            this.CreatDeleteString();
            this.CreatUpdateString();
            this.CreatMapping();
        }
        //初始化为SQLServer连接命令对象（修改点）
        private void InitialCommand(string ConnctionType)
        {
            if (ConnctionType == "SQL Server")
            {
                this.ComDelete = new System.Data.SqlClient.SqlCommand();
                this.ComInsert = new System.Data.SqlClient.SqlCommand();
                this.ComSelect = new System.Data.SqlClient.SqlCommand();
                this.ComUpdate = new System.Data.SqlClient.SqlCommand();
            }
        }
        public DataTable TableSchema
        {
            get { return this.tableSchema; }
        }
        public IDbCommand SelectString
        {
            get { return this.ComSelect; }
        }
        public IDbCommand InsertString
        {
            get { return this.ComInsert; }
        }
        public IDbCommand DeleteString
        {
            get { return this.ComDelete; }
        }
        public IDbCommand UpdateString
        {
            get { return this.ComUpdate; }
        }
        public DataTableMapping TableMapping
        {
            get
            {
                return this.Mapping;
            }
        }

        private void CreatMapping()
        {
            this.Mapping = new System.Data.Common.DataTableMapping();
            Mapping.SourceTable = "Table";
            Mapping.DataSetTable = this.tableName.ToString().Trim();
            foreach (DataRow row in this.tableSchema.Rows)
            {
                Mapping.ColumnMappings.Add(row["ColumnName"].ToString(), row["ColumnName"].ToString());
            }
        }
        private void CreatInsertString()
        {
            string insert = "INSERT INTO " + this.tableName + "(";
            string values = ") VALUES (";
            string select = "); SELECT ";
            string where = "FROM " + this.tableName + " WHERE ";
            foreach (DataRow row in this.tableSchema.Rows)
            {
                if (row["IsAutoIncrement"].ToString() == "False")
                {
                    Byte NumericPrecision = ((System.Byte)(0));
                    Byte NumericScale = ((System.Byte)(0));
                    if (row["NumericPrecision"].ToString() != "255")
                    {
                        NumericPrecision = System.Byte.Parse(row["NumericPrecision"].ToString());
                    }
                    if (row["NumericScale"].ToString() != "255")
                    {
                        NumericScale = System.Byte.Parse(row["NumericScale"].ToString());
                    }
                    if (this.T(row["DataTypeName"].ToString()) == SqlDbType.Decimal)
                    {
                        this.ComInsert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@" + row["ColumnName"].ToString(), this.T(row["DataTypeName"].ToString()), (int)row["ColumnSize"], System.Data.ParameterDirection.Input, (bool)row["AllowDBNull"], NumericPrecision, NumericScale, row["BaseColumnName"].ToString(), System.Data.DataRowVersion.Original, null));
                    }
                    else
                    {
                        this.ComInsert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@" + row["ColumnName"].ToString(), this.T(row["DataTypeName"].ToString()), (int)row["ColumnSize"], row["ColumnName"].ToString()));
                    }
                    insert += row["ColumnName"].ToString() + ", ";
                    values += "@" + row["ColumnName"].ToString() + ", ";
                    select += row["ColumnName"].ToString() + ", ";
                    if (this.T(row["DataTypeName"].ToString()) != SqlDbType.Image && this.T(row["DataTypeName"].ToString()) != SqlDbType.NText && this.T(row["DataTypeName"].ToString()) != SqlDbType.Text)
                    {
                        //where += "(" + row["ColumnName"].ToString() + " = @" + row["ColumnName"].ToString() + ") AND ";
                    }
                }
                else
                {
                    select += row["ColumnName"].ToString() + ", ";
                    where += "(" + row["ColumnName"].ToString() + " = SCOPE_IDENTITY())      ";
                }
            }
            this.ComInsert.CommandText = insert.Remove(insert.Length - 2, 1) + values.Remove(values.Length - 2, 1) + select.Remove(select.Length - 2, 1) + where.Remove(where.Length - 4, 3);
        }
        private void CreatDeleteString()
        {
            string delete = "DELETE FROM " + this.tableName + " WHERE ";
            string where = "";
            foreach (DataRow row in this.tableSchema.Rows)
            {
                Byte NumericPrecision = ((System.Byte)(0));
                Byte NumericScale = ((System.Byte)(0));
                if (row["NumericPrecision"].ToString() != "255")
                {
                    NumericPrecision = System.Byte.Parse(row["NumericPrecision"].ToString());
                }
                if (row["NumericScale"].ToString() != "255")
                {
                    NumericScale = System.Byte.Parse(row["NumericScale"].ToString());
                }

                if (this.T(row["DataTypeName"].ToString()) != SqlDbType.Image && this.T(row["DataTypeName"].ToString()) != SqlDbType.NText && this.T(row["DataTypeName"].ToString()) != SqlDbType.Text)
                {
                    this.ComDelete.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_" + row["ColumnName"].ToString(), this.T(row["DataTypeName"].ToString()), System.Convert.ToInt32(row["ColumnSize"]), System.Data.ParameterDirection.Input, (bool)row["AllowDBNull"], NumericPrecision, NumericScale, row["BaseColumnName"].ToString(), System.Data.DataRowVersion.Original, null));
                    if (row["AllowDBNull"].ToString() != "True")
                    {
                        where += "( " + row["ColumnName"].ToString() + " = @Original_" + row["ColumnName"].ToString() + " ) AND ";
                    }
                    else
                    {
                        where += "( " + row["ColumnName"].ToString() + " = @Original_" + row["ColumnName"].ToString() + " OR @Original_" + row["ColumnName"].ToString() + " IS NULL AND " + row["ColumnName"].ToString() + " IS NULL ) AND ";
                    }
                }
            }
            this.ComDelete.CommandText = delete + where.Remove(where.Length - 4, 3);
        }
        private void CreatUpdateString()
        {

            string insert = "UPDATE " + this.tableName + " SET ";
            string where1 = " WHERE ";
            string select = "; SELECT ";
            string where2 = "FROM " + this.tableName + " WHERE ";
            string where3 = "FROM " + this.tableName + " WHERE ";
            bool sfyAutoIncrement = false;
            foreach (DataRow row in this.tableSchema.Rows)
            {

                Byte NumericPrecision = ((System.Byte)(0));
                Byte NumericScale = ((System.Byte)(0));
                if (row["NumericPrecision"].ToString() != "255")
                {
                    NumericPrecision = System.Byte.Parse(row["NumericPrecision"].ToString());
                }
                if (row["NumericScale"].ToString() != "255")
                {
                    NumericScale = System.Byte.Parse(row["NumericScale"].ToString());
                }

                if (this.T(row["DataTypeName"].ToString()) == SqlDbType.Decimal)
                {
                    this.ComUpdate.Parameters.Add(new System.Data.SqlClient.SqlParameter("@" + row["ColumnName"].ToString(), this.T(row["DataTypeName"].ToString()), (int)(NumericPrecision + NumericScale), System.Data.ParameterDirection.Input, (bool)row["AllowDBNull"], NumericPrecision, NumericScale, row["BaseColumnName"].ToString(), System.Data.DataRowVersion.Current, null));
                }
                else
                {
                    this.ComUpdate.Parameters.Add(new System.Data.SqlClient.SqlParameter("@" + row["ColumnName"].ToString(), this.T(row["DataTypeName"].ToString()), (int)row["ColumnSize"], row["ColumnName"].ToString()));
                }

                if (row["IsAutoIncrement"].ToString() == "False")
                {
                    insert += " " + row["ColumnName"].ToString() + " = @" + row["ColumnName"].ToString() + ", ";


                }
                else
                {
                    where3 += "(" + row["ColumnName"].ToString() + " = @" + row["ColumnName"].ToString() + ") AND ";
                    sfyAutoIncrement = true;
                }
                if (this.T(row["DataTypeName"].ToString()) != SqlDbType.Image && this.T(row["DataTypeName"].ToString()) != SqlDbType.NText && this.T(row["DataTypeName"].ToString()) != SqlDbType.Text)
                {

                    this.ComUpdate.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_" + row["ColumnName"].ToString(), this.T(row["DataTypeName"].ToString()), (int)row["ColumnSize"], System.Data.ParameterDirection.Input, (bool)row["AllowDBNull"], NumericPrecision, NumericScale, row["BaseColumnName"].ToString(), System.Data.DataRowVersion.Original, null));

                    if (row["AllowDBNull"].ToString() != "True")
                    {
                        where1 += "( " + row["ColumnName"].ToString() + " = @Original_" + row["ColumnName"].ToString() + " ) AND ";
                    }
                    else
                    {
                        where1 += "( " + row["ColumnName"].ToString() + " = @Original_" + row["ColumnName"].ToString() + " OR @Original_" + row["ColumnName"].ToString() + " IS NULL AND " + row["ColumnName"].ToString() + " IS NULL ) AND ";
                    }
                    where2 += "(" + row["ColumnName"].ToString() + " = @" + row["ColumnName"].ToString() + ") AND ";
                }
                select += row["ColumnName"].ToString() + ", ";

            }
            if (sfyAutoIncrement == false)
            {
                this.ComUpdate.CommandText = insert.Remove(insert.Length - 2, 1) + where1.Remove(where1.Length - 4, 3) + select.Remove(select.Length - 2, 1) + where2.Remove(where2.Length - 4, 3);
            }
            else
            {
                this.ComUpdate.CommandText = insert.Remove(insert.Length - 2, 1) + where1.Remove(where1.Length - 4, 3) + select.Remove(select.Length - 2, 1) + where3.Remove(where3.Length - 4, 3);

            }
        }

        public System.Data.SqlDbType T(string type)
        {

            switch (type)
            {
                case "bigint":
                    return SqlDbType.BigInt;

                case "binary":
                    return SqlDbType.Binary;

                case "bit":
                    return SqlDbType.Bit;

                case "char":
                    return SqlDbType.Char;

                case "datetime":
                    return SqlDbType.DateTime;

                case "decimal":
                    return SqlDbType.Decimal;

                case "float":
                    return SqlDbType.Float;

                case "image":
                    return SqlDbType.Image;

                case "int":
                    return SqlDbType.Int;

                case "money":
                    return SqlDbType.Money;

                case "nchar":
                    return SqlDbType.NChar;

                case "ntext":
                    return SqlDbType.NText;

                case "nvarchar":
                    return SqlDbType.NVarChar;

                case "real":
                    return SqlDbType.Real;

                case "smalldatetime":
                    return SqlDbType.SmallDateTime;

                case "smallint":
                    return SqlDbType.SmallInt;

                case "smallmoney":
                    return SqlDbType.SmallMoney;

                case "text":
                    return SqlDbType.Text;

                case "timestamp":
                    return SqlDbType.Timestamp;

                case "tinyint":
                    return SqlDbType.TinyInt;

                case "udt":
                    return SqlDbType.Udt;

                case "uniqueidentifier":
                    return SqlDbType.UniqueIdentifier;

                case "varbinary":
                    return SqlDbType.VarBinary;

                case "varchar":
                    return SqlDbType.VarChar;

                case "variant":
                    return SqlDbType.Variant;

                case "xml":
                    return SqlDbType.Xml;

                default:
                    return SqlDbType.Udt;
            }
        }
    }

    //数据参数类
    public class DataParamester
    {
        public string PName;
        public string PType;
        public object PValue;
        public DataParamester(string Name, object Value)
        {
            this.PName = Name;
            this.PValue = Value;
        }
    }
}
