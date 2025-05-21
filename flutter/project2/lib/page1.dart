import 'package:flutter/material.dart';
import 'package:project2/page2.dart';
import 'package:project2/page3.dart';
import 'package:project2/page4.dart';
import 'package:project2/sum2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Welcome"),
        centerTitle: true,
      ),

      body: Container(
        height: 20,
        
        child: Row(
          
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>  Page1()));
            }, child: Text("1st elevated btn")),
             ElevatedButton(onPressed: (){
               Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>  Page2()));
             }, child: Text("2st elevated btn")),
            ElevatedButton(onPressed: (){
               Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>  Sum2()));
            }, child: Text("3st elevated btn")),

          ],
        ),
      ),
    );
  }
}