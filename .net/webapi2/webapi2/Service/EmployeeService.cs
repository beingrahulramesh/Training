using Microsoft.AspNetCore.Mvc;
using webapi2.Model;
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

        public async Task <IActionResult> GetEmployeeByName() { 
        
            return await _employeeRepo.SearchEmployeesByName();
        }

        public async Task<IActionResult> GetEmployeeById(string Id)
        {

            return await _employeeRepo.SearchById(Id);
        }

        public async Task<IActionResult> InsertNewEmployee(Employee employee)
        {
            return await _employeeRepo.InsertNewEmployee(employee);
        }
    }
}
