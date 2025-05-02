using Microsoft.AspNetCore.Mvc;

namespace exampleapi.Controllers
{
    public class employeecontroller : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
