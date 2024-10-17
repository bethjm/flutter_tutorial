import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
    const StartScreen({super.key});

    @override
    Widget build(context){
        //want to add const becuase it saves memory
        return Center(
            child: const Text('Start Screen'), //Text
        ); //Center
    }
}