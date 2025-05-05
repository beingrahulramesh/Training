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

        public async Task <IActionResult> Getemployee()
        {
            var cmd = "select * from Emp;";
            var employees = new List<Employee>();
            using (var connection = data_context.Connection()) {
            await connection.OpenAsync();
              using  var command=new SqlCommand(cmd, connection);

                using (var reader = command.ExecuteReader()) 
                { 
                
                    while (await reader.ReadAsync())
                    {
                        Employee employee = new Employee { 
                        
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            Name=reader.GetString(reader.GetOrdinal("Name")),
                            Designation=reader.GetString(reader.GetOrdinal("Designation")),
                            Department= reader.GetString(reader.GetOrdinal("Department"))
                        };
                        employees.Add(employee);
                    }
                }

            }
            return Ok(employees);
        }
    }
}
