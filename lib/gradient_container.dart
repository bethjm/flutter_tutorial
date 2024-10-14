import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

class GradientContainer extends StatelessWidget {

final startAlignment = Alignment.topLeft;
final endAlignment = Alignment.bottomRight;

  const GradientContainer({super.key});
    //do this to forward key argument GradientContainer({key}): super(key:key);
    //can accept named arguments? a, b could be arguments in {} ex. GradientContainer() {a,b}
  
    @override
	Widget build(BuildContext context) {
    return Container (
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.blue],
          begin: startAlignment,
          end: endAlignment,
          ), //LinearGradient
        ), // BoxDecoration
      // says where to put the code in the scaffolding
        child: Center(
            child: StyledText("hello world..")
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

