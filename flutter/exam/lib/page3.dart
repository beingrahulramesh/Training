import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  final String name;
  final int score;
  final String result;

  const Page3({
    super.key,
    required this.name,
    required this.score,
    required this.result,
  });

  @override
  Widget build(BuildContext context) { 
    String imageUrl = result == "Passed"
        ? 'https://i.ytimg.com/vi/fem1H6_jKu0/oardefault.jpg?sqp=-oaymwEkCJUDENAFSFqQAgHyq4qpAxMIARUAAAAAJQAAyEI9AICiQ3gB&rs=AOn4CLAHIMIasywp32umzYGvZNy84bO-CA' // Replace with actual URL
        : 'https://png.pngtree.com/png-clipart/20230804/original/pngtree-failed-fail-vector-sign-vector-picture-image_9565942.png'; // Replace with actual URL
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result Page"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Display user's name
              Text(
                "Hello, $name!",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Display score
              Text(
                "Your Score: $score / 3",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),

              // Display pass or fail status
              Text(
                "Result: $result",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: result == "Passed" ? Colors.green : Colors.red,
                ),
              ),

                            const SizedBox(height: 20),
//image

  Image.network(
                imageUrl,
                height: 150,
                errorBuilder: (context, error, stackTrace) => const Text(
                  'Could not load image',
                  style: TextStyle(color: Colors.red),
                ),
              ),



//image 
              const SizedBox(height: 40),

              // Optionally, a button to go back to the home page or previous page
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Go back to previous page
                },
                child: const Text("Go Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
