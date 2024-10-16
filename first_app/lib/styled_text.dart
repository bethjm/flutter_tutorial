import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // this is an option to get dynamic text - not ideal because it's too complicated
  // const StyledText(String text, {super.key}): outputText = text;

  StyledText(this.outputText, {super.key});

  final String outputText;

  @override
  Widget build(BuildContext context) {
    return Text(
      outputText,
      style: TextStyle(
        color: Colors.white,
        fontSize: 28.0,
      ), // TextStyle
    ); // Text
  }
}