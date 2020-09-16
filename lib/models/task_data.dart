import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Chicken'),
    Task(name: 'Buy role'),
    Task(name: 'Buy cold drink'),
  ];

  int get taskCount => _tasks.length;

  // getter
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  // setter
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
}