using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.PortableExecutable;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using DataAccess.Context;
using DataAccess.Models;
using Microsoft.AspNetCore.Mvc;

namespace DataAccess.Repository
{

    public class employeerepo:ControllerBase
    {
        private DataContext _context;
        private EmployeeModel _model;

        public employeerepo(EmployeeModel model, DataContext context)
        {
            _context = context;
            _model = model;


        }
        public async Task<dynamic> GetnameRepo(string name) //type=dynamic
        {
            var res = "my name is " + name;
            return res;
        }

        public async Task<IActionResult> GetAllempdetailsrepo()
        {
            var cmd = "select * from Emp";
            var employees = new List<EmployeeModel>();

            using (var Connection = _context.CreateConnection())
            {
                await Connection.OpenAsync();
                using var command = new SqlCommand(cmd, Connection);

                using (var reader = await command.ExecuteReaderAsync())
                    {
                    while (await reader.ReadAsync()) {
                        var employee = new EmployeeModel
                        {
                                Id=reader.GetInt32(reader.GetOrdinal("Id")),
                                Name = reader.GetString(reader.GetOrdinal("Name")),
                                Designation = reader.GetString(reader.GetOrdinal("Designation")),
                                Department = reader.GetString(reader.GetOrdinal("Department")),


                        };
                        employees.Add(employee);
                    }
                }
            }
            return Ok(employees);
        }
    }
}