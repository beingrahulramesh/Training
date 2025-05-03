using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.Repository;
using Microsoft.AspNetCore.Mvc;

namespace Business.Services
{
    public class employeeservice
    {
        private readonly employeerepo _repo;//local object initializtion 
        

        public employeeservice(employeerepo repo) {//oru constructor for initialization value and parameterized construcotr bring & assign value to local object  
            _repo = repo;
        }

        public async Task <dynamic> GetnameService(string name)
        {
            var res=await _repo.GetnameRepo(name);
            return res;
        }

        public async Task<IActionResult> GetallempdetailsServices()
        {
            var res = await _repo.GetAllempdetailsrepo();
            return res;
        }
    }
}
