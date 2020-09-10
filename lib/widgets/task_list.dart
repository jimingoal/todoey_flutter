import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

import 'task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "buy a milk"),
    Task(name: "buy a iceCream"),
    Task(name: "buy a beer"),
    Task(name: "buy a beer2"),
    Task(name: "buy a beer3"),
    Task(name: "buy a beer4"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
