import 'package:flutter/material.dart';
import 'package:quick_routine/view/common/appbar.dart';
import 'package:quick_routine/view/common/drawer.dart';
import 'package:quick_routine/view/screens/home/widget/task.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        drawer: buildDrawer(context),
        appBar: buildAppBar(context),
        body: Container(
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  width: double.infinity,
                  // height: double.infinity,
                  child: Container(
                    color: Color.fromRGBO(220, 220, 220, 1.0),
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      "Segunda-feira",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              SizedBox(
                  width: double.infinity,
                  // height: double.infinity,
                  child: Container(
                      color: Color.fromRGBO(128, 128, 128, 1.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Tarefas",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 30.0,
                            color: Color.fromRGBO(220, 220, 220, 1.0),
                            fontWeight: FontWeight.bold),
                      ))),
              Column(
                children: <Widget>[
                  buildTask("9:00", "Acordar"),
                  buildTask("22:00", "Dormir"),
                  buildTask("13:00", "Estudar"),
                ],
              ),
            ],
          ),
        ));
  }
}
