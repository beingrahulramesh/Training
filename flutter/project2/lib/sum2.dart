import 'package:flutter/material.dart';

class Sum2 extends StatefulWidget {
  const Sum2({super.key});

  @override
  State<Sum2> createState() => _Sum2State();
}

class _Sum2State extends State<Sum2> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  final TextEditingController _resultController = TextEditingController();

  void _addNumbers() {
    final double num1 = double.tryParse(_num1Controller.text) ?? 0;
    final double num2 = double.tryParse(_num2Controller.text) ?? 0;
    final double sum = num1 + num2;

    setState(() {
      _resultController.text = sum.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sum of Two Numbers"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter First Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Second number input
            TextField(
              controller: _num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter Second Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Result output (read-only)
            TextField(
              controller: _resultController,
              readOnly: true,
              decoration: const InputDecoration(
                labelText: "Result",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),

            // Add button
            ElevatedButton(
              onPressed: _addNumbers,
              child: const Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
