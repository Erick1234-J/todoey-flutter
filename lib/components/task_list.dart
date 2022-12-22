import 'package:flutter/material.dart';
import 'package:todoey_app/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  // final List<Tasks> tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            itemBuilder: (context, index) {
              return TaskTile(
                text: taskData.tasks[index].name,
                checked: taskData.tasks[index].isSelected,
                changeBox: (checkBoxState) {
                  setState(() {
                    taskData.tasks[index].toggleBox();
                  });
                },
              );
            },
            itemCount: taskData.tasks.length);
      },
    );
  }
}
