import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
                  backgroundColor: const Color.fromARGB(93, 227, 89, 163),

        title: Text("Image full length",style: TextStyle(color: Colors.orange),),
        centerTitle: true,
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,image: AssetImage("assets/mbj2.jpg"))
        ),
      ),
    );
  }
}