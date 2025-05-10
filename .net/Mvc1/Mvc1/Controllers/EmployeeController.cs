using System.Text;
using AspNetCoreGeneratedDocument;
using Microsoft.AspNetCore.Mvc;
using Mvc1.Models;
using Newtonsoft.Json;

namespace Mvc1.Controllers
{
    public class EmployeeController : Controller
    {
       

        //IActionResult=return type
        public IActionResult Homepage() {
        
            return View();
        }


        public IActionResult ViewEmployeeReport()
        {
            return View();
        }

        public string getAPIData(string datas)     //Get API Response
        {
            // Split the input string 'datas' using '$' as the delimiter
            //string[] datastring = datas.Split("$");
            // Construct the API path using the second and first elements of the split array
            string ApiPath = "https://localhost:7286/api/v1/" + datas;

            // Create an instance of HttpClient to make the HTTP request
            using (var client = new HttpClient())
            {
                // Initialize a variable to hold the response data
                string data = "";
                // Set the base address of the HttpClient to the constructed API path
                client.BaseAddress = new Uri(ApiPath);
                // Make a GET request to the API and wait for the result
                HttpResponseMessage result = client.GetAsync(client.BaseAddress).Result;
                // Check if the response indicates success
                if (result.IsSuccessStatusCode)
                {
                    // Read the response content as a string
                    data = result.Content.ReadAsStringAsync().Result;
                }
                // Return the response data 
                return data;
            }
        }

        public IActionResult SearchEmployee()
        {
            return View();
        }

        //


        public IActionResult InsertEmployee()
        {
            return View();
        }
        public async Task<dynamic> InsertNewEmployee(string dataString)
        {
            string apiEndPoint = "https://localhost:7286/api/v1/InsertNewEmployee";
            string[] inputArray = dataString.Split("$");
            var data = "";
            using (var client = new HttpClient())
            {
                string requestContent = JsonConvert.SerializeObject(new
                {
                    id = inputArray[0],
                    name = inputArray[1],
                    department = inputArray[2],
                    designation = inputArray[3]
                });

                var buffer = Encoding.UTF8.GetBytes(requestContent);

                var byteContent = new ByteArrayContent(buffer);

                byteContent.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("application/json");
                HttpResponseMessage result = await client.PostAsync(apiEndPoint, byteContent);

                if (result.IsSuccessStatusCode)
                {
                    data = result.Content.ReadAsStringAsync().Result;
                }
            }
            return data;
        }


        //

        public async Task<dynamic> postAPIDData_model([FromBody] Employee employee)
        {
            string apiEndPoint = "https://localhost:7286/api/v1/InsertNewEmployee";

            var apiData = new
            {
                id = employee.Id,
                name = employee.Name,
                department = employee.Department,
                designation = employee.Designation,
            };
                    

            var data = "";
            using (var client = new HttpClient())
            {
                string content = JsonConvert.SerializeObject(apiData);


                var buffer = Encoding.UTF8.GetBytes(content);

                var byteContent = new ByteArrayContent(buffer);

                byteContent.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("application/json");
                HttpResponseMessage result = await client.PostAsync(apiEndPoint, byteContent);

                if (result.IsSuccessStatusCode)
                {
                    data = result.Content.ReadAsStringAsync().Result;
                }
            }
            return data;
        }


        //
        public IActionResult ViewEmployeeReportUsingModel()
        {
            return View();
        }

        public List<Employee> getEmployeeDataToModel(string datas)     //Get API Response
        {
            // Split the input string 'datas' using '$' as the delimiter
            //string[] datastring = datas.Split("$");
            // Construct the API path using the second and first elements of the split array
            string ApiPath = "https://localhost:7045/api/v1/" + datas;

            // Create an instance of HttpClient to make the HTTP request
            using (var client = new HttpClient())
            {
                // Initialize a variable to hold the response data
                List<Employee> employees = new List<Employee>();

                // Set the base address of the HttpClient to the constructed API path
                client.BaseAddress = new Uri(ApiPath);
                // Make a GET request to the API and wait for the result
                HttpResponseMessage result = client.GetAsync(client.BaseAddress).Result;
                // Check if the response indicates success
                if (result.IsSuccessStatusCode)
                {
                    // Read the response content as a string
                    var jsonData = result.Content.ReadAsStringAsync().Result;
                    var apiResponse = JsonConvert.DeserializeObject<List<dynamic>>(jsonData);
                    foreach (var item in apiResponse)
                    {
                        var employee = new Employee
                        {
                            Id = item.id,
                            Name = item.name,
                            Designation = item.designation,
                            Department = item.dept
                        };
                        employees.Add(employee);
                    }
                }
                // Return the response data 
                return employees;
            }
        }


        public IActionResult InsertEmployeeModel()
        {
            return View();
        }
        //
        


    }
}
