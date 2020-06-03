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
        backgroundColor: Colors.black,
        drawer: buildDrawer(context),
        appBar: buildAppBar(context),
        body: Container(
          alignment: Alignment.bottomCenter,
          color: Color.fromRGBO(220, 220, 220, 1.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                  width: double.infinity,
                  child: Container(
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      "Segunda-feira",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Container(
                height: 390,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 5.0,
                      color: Color.fromRGBO(128, 128, 128, 1)), //cinza
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 350,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          "Tarefas",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 25.0,
                              color:
                                  Color.fromRGBO(79, 79, 79, 1.0), //cinza forte
                              fontWeight: FontWeight.bold),
                        )),
                    Container(
                        height: 330,
                        padding: EdgeInsets.all(5),
                        child: ListView(
                          children: <Widget>[
                            buildTask("9:00", "Acordar"),
                            buildTask("10:00", "Estudar"),
                            buildTask("12:00", "Almoçar"),
                            buildTask("12:00", "Almoçar"),
                            buildTask("12:30", "Dormir"),
                            buildTask("13:00", "Acordar"),
                            buildTask("13:10", "Estudar"),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
