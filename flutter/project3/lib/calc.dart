import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();

  final TextEditingController _addController = TextEditingController();
  final TextEditingController _subController = TextEditingController();
  final TextEditingController _mulController = TextEditingController();
  final TextEditingController _divController = TextEditingController();

  void _clearFields() {
    _num1Controller.clear();
    _num2Controller.clear();
    _addController.clear();
    _subController.clear();
    _mulController.clear();
    _divController.clear();
  }

  double? _parse(String value) => double.tryParse(value);

  void _add() {
    final num1 = _parse(_num1Controller.text);
    final num2 = _parse(_num2Controller.text);
    _addController.text = (num1 != null && num2 != null)
        ? (num1 + num2).toString()
        : 'Invalid input';
  }

  void _subtract() {
    final num1 = _parse(_num1Controller.text);
    final num2 = _parse(_num2Controller.text);
    _subController.text = (num1 != null && num2 != null)
        ? (num1 - num2).toString()
        : 'Invalid input';
  }

  void _multiply() {
    final num1 = _parse(_num1Controller.text);
    final num2 = _parse(_num2Controller.text);
    _mulController.text = (num1 != null && num2 != null)
        ? (num1 * num2).toString()
        : 'Invalid input';
  }

  void _divide() {
    final num1 = _parse(_num1Controller.text);
    final num2 = _parse(_num2Controller.text);
    if (num1 == null || num2 == null) {
      _divController.text = 'Invalid input';
    } else if (num2 == 0) {
      _divController.text = 'Cannot divide by 0';
    } else {
      _divController.text = (num1 / num2).toStringAsFixed(2);
    }
  }

  // Helper method for input decoration with full border
  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      border: const OutlineInputBorder(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _num1Controller,
                keyboardType: TextInputType.number,
                decoration: _inputDecoration('Number 1'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _num2Controller,
                keyboardType: TextInputType.number,
                decoration: _inputDecoration('Number 2'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _clearFields,
                child: const Text('Clear'),
              ),
              const SizedBox(height: 20),
              const Divider(thickness: 4),
              const SizedBox(height: 10),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: _add,
                    child: const Text('Add'),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      controller: _addController,
                      readOnly: true,
                      decoration: _inputDecoration('Result'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: _subtract,
                    child: const Text('Subtract'),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      controller: _subController,
                      readOnly: true,
                      decoration: _inputDecoration('Result'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: _multiply,
                    child: const Text('Multiply'),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      controller: _mulController,
                      readOnly: true,
                      decoration: _inputDecoration('Result'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: _divide,
                    child: const Text('Divide'),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      controller: _divController,
                      readOnly: true,
                      decoration: _inputDecoration('Result'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
