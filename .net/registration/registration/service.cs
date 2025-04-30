using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;




namespace registration
{
    public class service
    {
        SqlConnection sqlConnection= new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Administrator\Documents\TrainerDB.mdf;Integrated Security=True;Connect Timeout=30");

        public void ExecuteQuery(SqlCommand cmd)
        {
            cmd.Connection = sqlConnection;
            if (sqlConnection.State == System.Data.ConnectionState.Open)
            {
                sqlConnection.Close();
            }
            sqlConnection.Open();
            cmd.ExecuteNonQuery();
            sqlConnection.Close();
        }
        public SqlDataReader GetResult(SqlCommand cmd)
        {

            cmd.Connection = sqlConnection;
            if (sqlConnection.State == System.Data.ConnectionState.Open)
            {
                sqlConnection.Close();
            }
            sqlConnection.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            return sqlDataReader;
        }





    }
}