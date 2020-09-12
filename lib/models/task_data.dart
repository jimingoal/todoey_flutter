import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "buy a milk"),
    Task(name: "buy a iceCream"),
    Task(name: "buy a beer"),
    Task(name: "buy a beer"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  get tasksCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));

    for (var task in _tasks) {
      print(task.name);

      notifyListeners();
    }
  }

  void updateTask(Task task) {
    task.toggleDone();

    notifyListeners();
  }

  void taskDelete(index) {
    _tasks.removeAt(index);

    notifyListeners();
  }
}
