import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project1/page2.dart';
import 'package:project1/page3.dart';
import 'package:project1/page4.dart';
import 'package:project1/page5.dart';
import 'package:project1/page6.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(245, 168, 4, 0.365),
          title: const Text("my first page flutter",
              style: TextStyle(color: Colors.blue)),
          centerTitle: true,
          leading: Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.access_alarm_sharp))
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.access_alarms_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.access_time)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.zoom_out_sharp))
          ]),
      body: SafeArea(
          child: Column(
        children: [
          TextButton(onPressed: () {}, child: const Text("this is a text btn")),

          const SizedBox(
            height: 60,
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>  Page6()));
            },
            style: ElevatedButton.styleFrom(
                elevation: 20,
                backgroundColor: const Color.fromARGB(255, 195, 160, 4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6))),
            child: Text("example of elevated btn"),
          )

          //another elevated btn
        ],
      )),
    );
  }
}
