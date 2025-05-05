using Microsoft.AspNetCore.Mvc;
using webapi2.Repository;

namespace webapi2.Service
{
    public class EmployeeService
    {
        private EmployeeRepo _employeeRepo;

        public EmployeeService(EmployeeRepo employeeRepo)
        {
            _employeeRepo = employeeRepo;
        }

        public async Task<IActionResult> GetAllEmployeesService()
        {
            return await _employeeRepo.Getemployee();
        }
    }
}
