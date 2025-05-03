using System.Reflection.Metadata.Ecma335;
using Business.Services;
using DataAccess.Repository;
using Microsoft.AspNetCore.Mvc;

namespace exampleapi.Controllers
{
    public class employeecontroller 
    {
        private readonly employeerepo _repo;//create object for the class
        private readonly employeeservice _service;//create object for the class

        public employeecontroller(employeerepo repo, employeeservice service)
        {
            _repo = repo;
            _service = service;
        }

        [HttpGet("Getname/{name}",Name ="Getname")]
       public async Task<dynamic> Getname([FromRoute] string name)
        {
            var res= await _service.GetnameService(name);
            return res;
        }

        //get all details
        [HttpGet("Getallempdetails",Name = "Getallempdetails")]
        public async Task<IActionResult> Getallempdetails()
        {
            var res = await _service.GetallempdetailsServices();
            return res;
        }

       
    }
}
