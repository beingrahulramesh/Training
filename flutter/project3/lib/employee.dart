class Employee {
  final int Id;
  final String Name;
  final String Designation;
  final String Department;

Employee({required this.Id,required this.Name,required this.Designation,required this.Department});

factory Employee.fromJson(Map<String,dynamic> json){
  return Employee(Id: json['id'], Name: json['name'], Designation: json['designation'], Department: json['department']);
}

}