import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              child: Icon(Icons.list),
              backgroundColor: Colors.white,
              radius: 30,
              foregroundColor: Colors.lightBlueAccent,
            ),
          ],
        ),
      )
    );
  }
}
