import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  bool _hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Hi welcome"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First TextField
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: const Icon(Icons.verified_sharp),
                  suffixIcon: const Icon(Icons.remove_red_eye_sharp),
                  labelText: "Enter Name",
                ),
              ),
              const SizedBox(height: 20),

              // Second TextField with toggle visibility logic
              TextField(
                obscureText: _hide,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: const Icon(Icons.verified_sharp),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _hide = !_hide;
                      });
                    },
                    icon: Icon(
                      _hide ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  labelText: "Enter Email",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
