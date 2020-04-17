import 'package:flutter/material.dart';
import 'package:quick_routine/view/common/appbar.dart';
import 'package:quick_routine/view/common/drawer.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: buildDrawer(context),
        appBar: buildAppBar(context),
        body: Container(
          color: Colors.indigoAccent,
          child: Center(
            child: Text("Tarefas"),
          ),
        ));
  }
}
