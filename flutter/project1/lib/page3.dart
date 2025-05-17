import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "image",
          style: TextStyle(color: Colors.lime),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                      children: [
              Image(
                image: AssetImage("assets/mbj.jpg"),
                height: 200,
                width: 200,
              ),
              Image(image: AssetImage("assets/mbj2.jpg")),
                            Image(image: AssetImage("assets/mbj2.jpg")),
              Image(image: AssetImage("assets/mbj2.jpg")),

              Image(image: AssetImage("assets/Untitled.jpg"))
                      ],
                    ),
            ),
          )),
    );
  }
}
