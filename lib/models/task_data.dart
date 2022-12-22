import 'package:flutter/material.dart';
import 'package:todoey_app/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> tasks = [
    Tasks(name: 'task one'),
    Tasks(name: 'task two'),
    Tasks(name: 'task three'),
  ];
}
