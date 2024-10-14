import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

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
            child: StyledText()
        //says what will show
        //this is what it look slike if you have text in the Widget
        //   child: Text('Hello World!', style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 28.0,
        //   ) )//TextStyle //Text
         ), //Center
       ); //Container
	}
}

