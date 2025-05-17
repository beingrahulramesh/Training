import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
   Page5({super.key});

List<Color> Containercolor=[
Colors.blueGrey,
Colors.amber,
Colors.cyan,
Colors.deepOrange,
Colors.green,
Colors.orangeAccent
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("this is a new title",style: TextStyle(color: Colors.yellow),),
        centerTitle: true,
      ),
    body: SafeArea(
child: ListView.builder(itemCount: Containercolor.length ,
itemBuilder:(context, index) => Container(
  width: double.infinity,
  height: 100,
  color: Containercolor[index],
),

),

    ),
    );
  }
}