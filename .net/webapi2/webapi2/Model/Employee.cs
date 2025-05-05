namespace webapi2.Model
{
    public class Employee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Designation { get; set; }

        public string Department { get; set; }

        //created model.after that create repository
    }
}
