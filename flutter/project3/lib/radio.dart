import 'package:flutter/material.dart';

// Don't name this class 'Radio' — it's a Flutter widget!
class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? _selectedGender; // Variable to hold selected gender

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gender Selection"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Select Your Gender:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              RadioListTile<String>(
                title: const Text("Male"),
                value: "Male",
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("Female"),
                value: "Female",
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("Other"),
                value: "Other",
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              Text(
                _selectedGender == null
                    ? "No gender selected."
                    : "Selected Gender: $_selectedGender",
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
