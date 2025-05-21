import 'package:flutter/material.dart';
import 'page3.dart'; // Make sure to import Page3

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fieldWidth = screenWidth * 0.4;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DATA TRANSFER"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: fieldWidth,
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: fieldWidth,
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: fieldWidth,
                child: TextField(
                  controller: _phoneController,
                  decoration: const InputDecoration(labelText: 'Phone Number'),
                  keyboardType: TextInputType.phone,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Get values
                  String name = _nameController.text;
                  String email = _emailController.text;
                  String phone = _phoneController.text;

                  // Navigate to Page3 with data
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page3(
                        name : name,
                        email: email,
                        phone: phone,
                      ),
                    ),
                  );
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
