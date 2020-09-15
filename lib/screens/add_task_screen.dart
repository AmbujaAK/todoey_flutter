import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskcallBack;

  AddTaskScreen(this.addTaskcallBack);

  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0,bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newTask){
                  newTaskTitle = newTask;
                },
              ),
              FlatButton(
                onPressed: (){
                  addTaskcallBack(newTaskTitle);
                },
                child: Text('Add',style: TextStyle(color: Colors.white),),
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
