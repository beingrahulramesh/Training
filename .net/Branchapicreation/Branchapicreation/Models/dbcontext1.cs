using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace Branchapicreation.Models
{
    public class dbcontext1:DbContext
    {
        private readonly string _connectionstring;

        public dbcontext1(IConfiguration configuration)
        {
            this._connectionstring = configuration.GetConnectionString("SQLConnection"); 
        }


        public SqlConnection CreateConnection()
        {
            return  new SqlConnection(_connectionstring);
        }
    }
}
