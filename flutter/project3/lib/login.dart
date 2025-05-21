import 'package:flutter/material.dart';
import 'package:project3/page1.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _basicFormKey = GlobalKey<FormState>();
  final _confidentialFormKey = GlobalKey<FormState>();

  // Controllers for the text fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _placeController = TextEditingController();
  final TextEditingController _qualificationController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  // === VALIDATION FUNCTIONS FOR CONFIDENTIAL SECTION ===
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return "Enter a valid email address";
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
     if (value.length < 8) {
      return "Password must be at least 6 characters";
    }
    
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Please confirm your password";
    }
    if (value != _passwordController.text) {
      return "Passwords do not match";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // === Basic Info Form (Unchanged) ===
            Form(
              key: _basicFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value) =>
                        value!.isEmpty ? "Name is required" : null,
                  ),
                  TextFormField(
                    controller: _placeController,
                    decoration: InputDecoration(labelText: 'Place'),
                    validator: (value) =>
                        value!.isEmpty ? "Place is required" : null,
                  ),
                  TextFormField(
                    controller: _qualificationController,
                    decoration: InputDecoration(labelText: 'Qualification'),
                    validator: (value) =>
                        value!.isEmpty ? "Qualification is required" : null,
                  ),
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(labelText: 'Phone Number'),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "phone no is required";
                      } else if (_phoneController.text.length != 10) {
                        return "phone number should be 10 digits";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_basicFormKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Basic Info Submitted'),
                              action: SnackBarAction(
                                label: "Continue",
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => Page1()),
                                  );
                                },
                              ),
                            ),
                          );
                        }
                      },
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),
            Divider(thickness: 2),
            SizedBox(height: 20),

            // === Confidential Info Section ===
            Text(
              "Confidential Information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            Form(
              key: _confidentialFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                    validator: _validateEmail,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: _validatePassword,
                  ),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(labelText: 'Confirm Password'),
                    obscureText: true,
                    validator: _validateConfirmPassword,
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_confidentialFormKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Confidential Info Submitted'),
                              action: SnackBarAction(
                                label: "Continue",
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => const Page1()),
                                  );
                                },
                              ),
                            ),
                          );
                        }
                      },
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
