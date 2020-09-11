import 'package:todoeyflutter/models/task.dart';

class Tasks {
  List<Task> tasks = [
    Task(name: "buy a milk"),
    Task(name: "buy a iceCream"),
    Task(name: "buy a beer"),
  ];

  get tasksList {
    return tasks;
  }

  void taskAdd(value) {
    tasks.add(Task(name: value));

    for(var task in tasks) {
      print(task.name);
    }

  }
}
