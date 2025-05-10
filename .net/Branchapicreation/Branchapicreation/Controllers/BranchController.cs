using Branchapicreation.Models;
using DevExpress.Data.Browsing;
using Intuit.Ipp.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;

namespace Branchapicreation.Controllers
{
   
    public class BranchController:ControllerBase
    {//

        private dbcontext1 _context;
        private Branch _branch;
        public BranchController(dbcontext1 context, Branch branch)
        {
            _context = context;
            _branch = branch;
        }




        [HttpGet("api/v1/GetAllBranchdetails", Name = "GetAllBranchdetails")]
        public async Task<IActionResult> GetAllBranchdetail()
        {
            var cmd = "SELECT * FROM Branch";
            var employees = new List<Branch>();
            using (var connection = _context.CreateConnection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);
                using (var reader = command.ExecuteReader())
                {
                    while (await reader.ReadAsync())
                    {
                        var employee = new Branch
                        {
                            brid= reader.GetInt32(reader.GetOrdinal("brid")),
                            brname = reader.GetString(reader.GetOrdinal("brname")),
                            head = reader.GetString(reader.GetOrdinal("head")),
                            Noofemployees = reader.GetInt32(reader.GetOrdinal("Noofemployees"))
                        };
                        employees.Add(employee);
                    }
                }
            }
            return Ok(employees);
        }



        //--------------------
        [HttpGet("api/v1/GetAllBranchIdNames", Name = "GetAllBranchIdnames")]
        public async Task<IActionResult> GetAllBranchIdName()
        {
            var cmd = "SELECT brid,brname FROM Branch";
            var employees = new List<Branch>();
            using (var connection = _context.CreateConnection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);
                using (var reader = command.ExecuteReader())
                {
                    while (await reader.ReadAsync())
                    {
                        var employee = new Branch
                        {
                            brid = reader.GetInt32(reader.GetOrdinal("brid")),
                            brname = reader.GetString(reader.GetOrdinal("brname"))
                           
                        };
                        employees.Add(employee);
                    }
                }
            }
            return Ok(employees);
        }
        //------------

        [HttpGet("api/v1/GetAllBranchById", Name = "GetAllBranchById")]

        public async Task<IActionResult> SearchEmployeeById(string id)
        {
            var userId = Convert.ToInt32(id);
            var cmd = "SELECT * FROM Branch WHERE brid = @Id";
            var employees = new List<Branch>();
            using (var connection = _context.CreateConnection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);
                command.Parameters.AddWithValue("@Id", userId);
                using (var reader = command.ExecuteReader())
                {
                    while (await reader.ReadAsync())
                    {
                        var employee = new Branch
                        {
                            brid = reader.GetInt32(reader.GetOrdinal("brid")),
                            brname = reader.GetString(reader.GetOrdinal("brname")),
                            head = reader.GetString(reader.GetOrdinal("head")),
                            Noofemployees = reader.GetInt32(reader.GetOrdinal("Noofemployees"))
                        };
                        employees.Add(employee);
                    }

                }
            }
            return Ok(employees);
        }

        //
    }
}
