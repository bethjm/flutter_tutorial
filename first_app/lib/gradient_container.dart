import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

class GradientContainer extends StatefulWidget {
  final List<Color> colors;

  // Constructor with key forwarding
  const GradientContainer({super.key, required this.colors});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
