import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = [
      Task(
        name: "buy a milk",
      ),
      Task(
        name: "buy a iceCream",
      ),
      Task(
        name: "buy a beer",
      ),
    ];

    return ListView(
      children: [
        TaskTile(tasks[0].name, tasks[0].isDone),
        TaskTile(tasks[1].name, tasks[1].isDone),
        TaskTile(tasks[2].name, tasks[2].isDone),
      ],
    );
  }
}
