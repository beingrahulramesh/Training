import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  // Optional: Controller to read input from the TextField
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFields"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0), // Padding for TextField
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Name ",
                ),
              ),
                            SizedBox(height: 20),


            Text(_controller.text.toString())


              ,SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Example action: Print text to text
setState(() {
  _controller.text;
});


                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
