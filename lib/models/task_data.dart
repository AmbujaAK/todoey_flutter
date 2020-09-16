import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';


class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Chicken'),
    Task(name: 'Buy role'),
    Task(name: 'Buy cold drink'),
  ];

  int get taskCount => tasks.length;
}