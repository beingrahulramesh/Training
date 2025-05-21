import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController _controller = TextEditingController();
  String _output = '';

  void _generateTable() {
    final input = int.tryParse(_controller.text);
    if (input != null) {
      StringBuffer buffer = StringBuffer();
      for (int i = 1; i <= 10; i++) {
        buffer.writeln('$input x $i = ${input * i}');
      }
      setState(() {
        _output = buffer.toString();
      });
    } else {
      setState(() {
        _output = 'Please enter a valid number';
      });
    }
  }

  void _clear() {
    _controller.clear();
    setState(() {
      _output = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiplication Table"),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // TextField at the top
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            
            // Buttons below the TextField
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _generateTable,
                  child: Text('Submit'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _clear,
                  child: Text('Clear'),
                ),
              ],
            ),
            SizedBox(height: 24),

            // Output area
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  _output,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
