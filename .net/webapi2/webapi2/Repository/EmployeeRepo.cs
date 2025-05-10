using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using webapi2.Context;
using webapi2.Model;

namespace webapi2.Repository
{
    public class EmployeeRepo:ControllerBase
    {
        //create object of datacontext and model=(employeecs)
        private DataContext data_context;//just initialize the object of datacontext
        private Employee employee;

        public EmployeeRepo(DataContext data_context, Employee employee)
        {
            this.data_context = data_context;
            this.employee = employee;
        }

       


        public async Task<IActionResult> Getemployee()
        {
            var cmd = "select * from Emp;";
            var employees = new List<Employee>();
            using (var connection = data_context.Connection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);

                using (var reader = command.ExecuteReader())
                {

                    while (await reader.ReadAsync())
                    {
                        Employee employee = new Employee
                        {

                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            Name = reader.GetString(reader.GetOrdinal("Name")),
                            Designation = reader.GetString(reader.GetOrdinal("Designation")),
                            Department = reader.GetString(reader.GetOrdinal("Department"))
                        };
                        employees.Add(employee);
                    }
                }

            }
            return Ok(employees);
        }


        public async Task<IActionResult> SearchEmployeesByName()
        {
            var cmd = "select Id,Name FROM Emp ";
            var employees = new List<Employee>();
            using (var connection = data_context.Connection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);

                using (var reader = command.ExecuteReader())
                {

                    while (await reader.ReadAsync())
                    {
                        Employee employee = new Employee
                        {

                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            Name = reader.GetString(reader.GetOrdinal("Name")),

                        };
                        employees.Add(employee);
                    }
                }

            }
            return Ok(employees);
        }




        public async Task<IActionResult> SearchById(string id)
        {
            var Userid=Convert.ToInt32(id);
            var cmd = "select * from Emp where Id=@Id";
            var employees = new List<Employee>();
            using (var connection = data_context.Connection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);
                command.Parameters.AddWithValue("@Id", Userid);
                using (var reader = command.ExecuteReader())
                {

                    while (await reader.ReadAsync())
                    {
                        Employee employee = new Employee
                        {

                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            Name = reader.GetString(reader.GetOrdinal("Name")),
                            Designation = reader.GetString(reader.GetOrdinal("Designation")),
                            Department = reader.GetString(reader.GetOrdinal("Department"))
                        };
                        employees.Add(employee);
                    }
                }

            }
            return Ok(employees);
        }


        public async Task<IActionResult> InsertNewEmployee(Employee employee)
        {
            if (employee == null || employee.Id == 0 || string.IsNullOrWhiteSpace(employee.Name))
            {
                return BadRequest("Invalid Employee Data");
            }
            var cmd = "INSERT INTO Emp(Id,Name,Designation,Department) VALUES (@Id,@Name,@Designation, @Department);";
            using (var connection = data_context.Connection())
            {
                try
                {
                    await connection.OpenAsync();
                    var command = new SqlCommand(cmd, connection);
                    command.Parameters.AddWithValue("@Id", employee.Id);
                    command.Parameters.AddWithValue("@Name", employee.Name);
                    command.Parameters.AddWithValue("@Designation", employee.Designation);
                    command.Parameters.AddWithValue("@Department", employee.Department);
                    var queryOutput = await command.ExecuteNonQueryAsync();
                    if (queryOutput > 0)
                    {
                        return Ok(employee.Id);
                    }
                    else
                    {
                        return StatusCode(StatusCodes.Status500InternalServerError);
                    }
                }
                catch(Exception e)
                {
                    return StatusCode(StatusCodes.Status500InternalServerError, e.Message);
                }

            }
        }







    }
}
