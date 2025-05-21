import 'package:exam/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Form"),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Name TextField
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                
                // Email TextField
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: "Email"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Password TextField
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: "Password"),
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Confirm Password TextField
                TextFormField(
                  obscureText: true,
                  controller: confirmPasswordController,
                  decoration: const InputDecoration(labelText: "Confirm Password"),
                  validator: (value) {
                    if (value != passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),

                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2(name: nameController.text)),
                      );

                      // If the form is valid, show success Snackbar
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Form submitted successfully!'),
                          backgroundColor: Colors.green,
                        ),
                      //    Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Page2()),
                      // );
                      
                      );
                    } else {
                      // If the form is invalid, show error Snackbar
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please fill out all fields correctly!'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
