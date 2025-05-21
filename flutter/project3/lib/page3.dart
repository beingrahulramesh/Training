import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  const Page3({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result page"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello  $name", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Text("Your Email: $email", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Text("Phone Number: $phone", style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
