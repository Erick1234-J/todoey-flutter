import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {Key? key,
      required this.text,
      required this.checked,
      required this.changeBox})
      : super(key: key);

  final String text;
  final bool checked;
  final ValueChanged<bool?> changeBox;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          decoration: checked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: checked,
          onChanged: changeBox),
    );
  }
}
