class Task {
  String name;
  bool isDone;

  Task(this.name, this.isDone);

  void toggleIsDone() {
    isDone = !isDone;
  }
}
