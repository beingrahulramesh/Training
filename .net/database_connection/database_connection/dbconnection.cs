using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace database_connection
{
    public class dbconnection
    {
        public SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Administrator\Documents\Company_431111.mdf;Integrated Security=True;Connect Timeout=30");
        //sql connection string
        public void execute(SqlCommand cmd)//for executin dml stmts=execute
        {//function execute (type name)=public void execute(sqlcommand cmd)
            cmd.Connection = cn;
            if(cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

        }

        public SqlDataReader Getresult(SqlCommand cmd)
        {
            //return type sqldatareader
            cmd.Connection= cn;
            if(cn.State == System.Data.ConnectionState.Open)
            {
                cn.Close();
            }
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            //select queries execution=executereader
            //other queries execution=executenonreader();
            return dr;
            cn.Close();
        }
    }
}