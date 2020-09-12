import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task tasks = taskData.tasks[index];
            return TaskTile(
                taskTitle: tasks.name,
                isChecked: tasks.isDone,
                checkboxCallback: (e) {
                  taskData.updateTask(tasks);
                },
                longPressCallback: () {
                  taskData.deleteTask(tasks);
                });
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
