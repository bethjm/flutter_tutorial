import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    // Add const to widgets where possible for memory efficiency
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ), // Image.asset
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ), // TextStyle
          ), // Text
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz, // startQuiz function is called on button press
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ), // OutlinedButton.styleFrom
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ), // OutlinedButton
        ],
      ), // Column
    ); // Center
  }
}
