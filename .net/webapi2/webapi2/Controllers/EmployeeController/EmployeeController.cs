using Microsoft.AspNetCore.Mvc;
using webapi2.Model;
using webapi2.Service;

namespace webapi2.Controllers.EmployeeController
{
    public class EmployeeController
    {
        private EmployeeService _employeeService;

        public EmployeeController(EmployeeService employeeService)
        {
            _employeeService = employeeService;
        }

        [HttpGet("api/v1/GetAllEmployees",Name ="GetAllEmployees")]

        public async Task <IActionResult> GetAllEmployeesList()
        {
            return await _employeeService.GetAllEmployeesService();
        }

        [HttpGet("api/v1/SearchEmployeesByName", Name = "Searchemployees")]
        public async Task <IActionResult> SearchEmployeesByName()
        {
            return await _employeeService.GetEmployeeByName();
        }

        [HttpGet("api/v1/SearchEmployeeById/{Id}",Name="SearchEmployeeByID")]
        public async Task<IActionResult> SearchEmployeesById([FromRoute] string Id)
        {
            return await _employeeService.GetEmployeeById(Id);
        }
        //
        [HttpPost("api/v1/InsertNewEmployee", Name = "InsertEmployee")]
        public async Task<IActionResult> InsertNewEmployee([FromBody] Employee employee)
        {
            return await _employeeService.InsertNewEmployee(employee);
        }

        //
    }
}
