using Microsoft.AspNetCore.Mvc;
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
    }
}
