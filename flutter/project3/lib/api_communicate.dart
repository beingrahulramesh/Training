import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project3/employee.dart';

Future<List<Employee>>fetchEmployee() async {
  final response = await http.get(Uri.parse('https://localhost:7015/Getallempdetails'));

  if (response.statusCode ==200){
    List<dynamic> jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) =>Employee.fromJson(data)).toList();
  }else{   
    throw Exception('faliled to  load employees');
  }
}