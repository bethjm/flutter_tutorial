import 'package:flutter/material.dart';
import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    //list of to tasks

    List toDoList = [
        ["Make Tutorial", false],
        ["Exercise", false],
    ];

    //checkbox was tapped

    void checkBoxChanged(bool? value, int index) {
        setState((){
            toDoList[index][1] = !toDoList[index][1];
        });
    }

    @override
    Widget build (BuildContext) {
        return Scaffold(
            backgroundColor: Colors.yellow[200],
            appBar: AppBar(
                title: Text('To Do'),
                elevation: 0,
            ), //AppBar
            body: ListView.builder(
                itemCount:toDoList.length,
                itemBuilder: (context, index) {
                    return ToDoTile(
                        taskName: toDoList[index][0],
                        taskCompleted: toDoList[index][1],
                        onChanged: (value) => checkBoxChanged(value, index),
                    ); // ToDoTile
                }
            ),//ListView.builder
        );
    }
}