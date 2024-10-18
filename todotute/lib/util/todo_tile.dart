import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
    final String taskName;
    final bool taskCompleted;
    final Function(bool?) onChanged;

    ToDoTile({
        super.key, 
        required this.taskName,
        required this.taskCompleted,
        required this.onChanged,
        });


    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
                padding: const EdgeInsets.all(24),
                child: Row(
                    children: [
                        //checkbox
                        Checkbox(value: taskCompleted, onChanged: onChanged), //Checkbox
                        //name task
                        Text(taskName),
                    ],
                ),// Row
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                    ), //BoxDecoration
            ), //Container
        ); //Padding
    }
}