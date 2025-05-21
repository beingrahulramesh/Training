import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("Stateful Widget"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Click a button you like",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                count.toString(),
                style: TextStyle(fontSize: 25, color: Colors.blueAccent),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Text("Add"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                    },
                    child: Text("Subtract"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count = 0;
                      });
                    },
                    child: Text("Reset"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
