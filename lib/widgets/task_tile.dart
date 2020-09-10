import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;

  TaskTile({this.taskTitle, this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
//
// TaskCheckbox(
// checkboxState: isChecked,
// toggleCheckboxState: (checkboxState) {
// setState(() {
// isChecked = checkboxState;
// });
// },
// ),

// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final Function toggleCheckboxState;
//
//   TaskCheckbox({this.checkboxState, this.toggleCheckboxState});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged: toggleCheckboxState,
//     );
//   }
