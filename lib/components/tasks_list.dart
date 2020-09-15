import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Chicken'),
    Task(name: 'Buy role'),
    Task(name: 'Buy cold drink'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkBoxCallBack: (checkBoxState){
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