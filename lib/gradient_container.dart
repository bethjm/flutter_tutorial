import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {

  const GradientContainer({super.key});
    //do this to forward key argument GradientContainer({key}): super(key:key);
    //can accept named arguments? a, b could be arguments in {} ex. GradientContainer() {a,b}
  
    @override
	Widget build(context) {
    return Container (
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          ), //LinearGradient
        ), // BoxDecoration
      // says where to put the code in the scaffolding
        child: Center(
        //says what will show
          child: Text('Hello World!', style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
          ) )//TextStyle //Text
         ), //Center
       ); //Container
	}
}

