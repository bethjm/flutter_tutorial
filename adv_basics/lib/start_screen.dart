import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
    const StartScreen({super.key});

    @override
    Widget build(context){
        //want to add const becuase it saves memory
        return Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                Image.asset('assets/images/quiz-logo.png', 
                width: 300
                    ), //Image.asset
                    const SizedBox(height: 80),
                    const Text(
                        'Learn Flutter the fun way!', 
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                        ), //TextStyle
                    ), //Text
                    const SizedBox(height: 30),
                    OutlinedButton(
                        onPressed: () {}, 
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                        ), //OutlinedButton
                        child: const Text("Start Quiz"),
                    ), //OutlinedButton
                ],
            ), // Column
        ); //Center
    }
}