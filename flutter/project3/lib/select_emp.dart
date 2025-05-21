import 'package:flutter/material.dart';
import 'package:project3/api_communicate.dart';
import 'package:project3/employee.dart';

class EmployeeTable extends StatefulWidget {
  const EmployeeTable({super.key});

  @override
  State<EmployeeTable> createState() => _EmployeeTableState();
}

class _EmployeeTableState extends State<EmployeeTable> {
 late Future<List<Employee>> futureEmployees;
 @override
 void initState(){
  super.initState();
  futureEmployees = fetchEmployee();
 }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
title: Text("EMployee List"),
      ),

      body:FutureBuilder<List<Employee>>(
        future: futureEmployees,
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator());
          }else if(snapshot.hasError){
            return Center(child: Text('Error:${snapshot.error}'),);
          }else if(!snapshot.hasData || snapshot.data!.isEmpty){
            return const Center(child: Text('no employees found'),);
          }else{
            return DataTable(columns:const[
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name'))
            ] ,
             rows: snapshot.data!.map((employee){
              return DataRow(cells: 
              [
                DataCell(Text(employee.Id.toString())),
                DataCell(Text(employee.Name)),
              ]
              );
            }).toList(),
            );
          }
        },
      ),
    );
  }
}