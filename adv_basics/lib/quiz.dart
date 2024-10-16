import 'package:flutter/material.dart';

import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';


  void switchScreen() {
    setState(() {
      activeScreen = 'questions-sceen';
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidget = StartScreen(switchScreen) == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen(),


    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ), //LinearGradient
          ), //Box Decoration
        ), // Container
      ), // Scaffold
    ); // MaterialApp
  }
}
