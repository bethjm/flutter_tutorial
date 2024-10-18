import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
    const ToDoTile({super.key});

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
                padding: const EdgeInsets.all(24),
                child: Row(
                    children: [
                        //checkbox
                        CheckBox(value: value, onChange: onChange), //CheckBox
                        //name task
                        Text("Make tutorial"),

                    ]
                ),// Row
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                    ), //BoxDecoration
            ), //Container
        ); //Padding
    }
}