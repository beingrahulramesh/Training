import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: const Color.fromRGBO(2, 3, 66, 8),
        title: const Text("this is new title",
        style:TextStyle(color: Colors.blue),
      ),centerTitle: true,
      
      ),

        
body: SafeArea(child: Column(
  
)),
      
    );
  }
}