using Microsoft.Data.SqlClient;

namespace webapi2.Context
{
    public class DataContext
    {
        //conncetion string init>create con>
        //the context folder is mainly for db connection
        private readonly string _connectionString;
        public DataContext(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("SQLConnection");


        }

        public SqlConnection Connection()
        {
            return new SqlConnection(_connectionString);
        }
    }
}
