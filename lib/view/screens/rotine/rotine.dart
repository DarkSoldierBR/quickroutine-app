import 'package:flutter/material.dart';
import 'package:quick_routine/view/common/appbar.dart';
import 'package:quick_routine/view/common/drawer.dart';

class Rotine extends StatefulWidget {
  @override
  _RotineState createState() => _RotineState();
}

class _RotineState extends State<Rotine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: buildDrawer(context),
        appBar: buildAppBar(context),
        body: Container(
          color: Colors.deepPurpleAccent,
          child: Center(
            child: Text("Rotina"),
          ),
        ));
  }
}
