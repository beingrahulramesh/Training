import 'package:exam/page3.dart';
import 'package:flutter/material.dart';
// import 'package:your_app/page3.dart';

import 'page3.dart';
 // Import Page3.dart

class Page2 extends StatefulWidget {
  final String name;
  const Page2({super.key, required this.name});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  // To store the selected answers for each question
  int? question1Answer = -1;
  int? question2Answer = -1;
  int? question3Answer = -1;

  // Dummy answers
  final List<String> question1Options = [
    "Eagle",
    "Peacock", // Correct answer
    "Sparrow",
    "Crow",
    "Pigeon",
  ];

  final List<String> question2Options = [
    "Lion",
    "Elephant",
    "Tiger", // Correct answer
    "Deer",
    "Bear",
  ];

  final List<String> question3Options = [
    "Nehru",
    "Gandhi", // Correct answer
    "Tagore",
    "Ambedkar",
    "Subhas Chandra Bose",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Questionnaire"),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Question 1
                const Text('1. Which is the national bird of India?'),
                _buildRadioButton(question1Answer, question1Options, (value) {
                  setState(() {
                    question1Answer = value;
                  });
                }),

                const SizedBox(height: 16),

                // Question 2
                const Text('2. Which is the national animal of India?'),
                _buildRadioButton(question2Answer, question2Options, (value) {
                  setState(() {
                    question2Answer = value;
                  });
                }),

                const SizedBox(height: 16),

                // Question 3
                const Text('3. Who is the Father of the Nation of India?'),
                _buildRadioButton(question3Answer, question3Options, (value) {
                  setState(() {
                    question3Answer = value;
                  });
                }),

                const SizedBox(height: 24),

                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    // Calculate the score
                    int score = 0;
                    if (question1Answer == 1) score++; // Correct answer is "Peacock"
                    if (question2Answer == 2) score++; // Correct answer is "Tiger"
                    if (question3Answer == 1) score++; // Correct answer is "Gandhi"

                    // Determine pass/fail status
                    String result = (score == 3) ? "Passed" : "Failed";

                    // Navigate to Page3 and pass the results
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page3(
                          name : widget.name,
                          score: score,
                          result: result,
                        ),
                      ),
                    );
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // A helper function to create the radio buttons for each question
  Widget _buildRadioButton(int? selectedAnswer, List<String> options, ValueChanged<int?> onChanged) {
    return Column(
      children: List.generate(options.length, (index) {
        return Row(
          children: [
            Radio<int>(
              value: index,
              groupValue: selectedAnswer,
              onChanged: onChanged,
            ),
            Text(options[index]),
          ],
        );
      }),
    );
  }
}
