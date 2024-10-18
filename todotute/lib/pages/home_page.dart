import 'package:flutter/material.dart';
import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    @override
    Widget build (BuildContext) {
        return Scaffold(
            backgroundColor: Colors.yellow[200],
            appBar: AppBar(
                title: Text('To Do'),
                elevation: 0,
            ), //AppBar
            body: ListView(
                children: [
                    ToDoTile(),
                ]
            ),//ListView
        );
    }
}