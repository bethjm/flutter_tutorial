//need to import runApp to use it
//first make sure flutter is imported in pubsec.yaml to be able to use this
import 'package:flutter/material.dart';
// all statemented must end with ;
import 'package:first_app/gradient_container.dart';

//void = return type
//main = function name
//must be main
//main function is special function- it is main entry point of dart app
//will be executed automatically by dart when app is opened on a device
void main() {
  //function body is inside of {}

//runApp() is function beign called
//provided by flutter and gets the app running
//cannot run alone, it must be wrapped in other functions

  //need 2 core widgets to get UI working: MaterialApp and home:
  runApp(MaterialApp(
    //sets up design for app page
    home: Scaffold(

      //COLOR AND COLORS
      //Colors lets you access predefined colors
      // backgroundColor: Colors.deepPurple,
      //Color lets you set RGB values for the color
      // backgroundColor: Color.fromARGB(255,47,5,120),

      //if you want a gradient....

      body: GradientContainer(),
     ), //Scaffold
    ), //MaterialApp
  );
}

//this code can be lsited here on the same component or on a different component
// class GradientContainer extends StatelessWidget {

//   const GradientContainer({super.key})
//     //do this to forward key argument GradientContainer({key}): super(key:key);
//     //can accept named arguments? a, b could be arguments in {} ex. GradientContainer() {a,b}
  
// @override
// 	Widget build(context) {
//     return Container (
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.deepPurple, Colors.blue],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           ), //LinearGradient
//         ), // BoxDecoration
//       // says where to put the code in the scaffolding
//         child: Center(
//         //says what will show
//           child: Text('Hello World!', style: TextStyle(
//             color: Colors.white,
//             fontSize: 28.0,
//           ) )//TextStyle //Text
//          ), //Center
//        ); //Container
// 	}
// }

