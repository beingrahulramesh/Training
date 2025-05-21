import 'package:flutter/material.dart';
import 'package:project3/login.dart';
import 'package:project3/page1.dart';
import 'package:project3/page2.dart';
import 'package:project3/page3.dart';
import 'package:project3/radio.dart';
import 'package:project3/select_emp.dart';
import 'calc.dart'; // Make sure this matches the file location

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmployeeTable(), // Set your Calc page as the home screen
    );
  }
  
}
