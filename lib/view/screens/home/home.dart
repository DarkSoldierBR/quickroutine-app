import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:quick_routine/view/common/appbar.dart';
import 'package:quick_routine/view/common/drawer.dart';
import 'package:quick_routine/view/common/bottombar.dart';
import 'package:quick_routine/view/screens/home/widget/task.dart';
import 'package:quick_routine/view/screens/home/store/taskstore.dart';

final TaskStore taskStore = new TaskStore();

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
        bottomNavigationBar: buildBottomBar(context),
        body: Container(
          alignment: Alignment.bottomCenter,
          color: Color.fromRGBO(220, 220, 220, 1.0), //cinza fraco background
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
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 5.0,
                    color: Color.fromRGBO(128, 128, 128, 1), //cinza
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 350,
                        height: 40,
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
                    Expanded(
                        child: Observer(
                            builder: (context) => ListView.builder(
                                padding: const EdgeInsets.all(8),
                                itemCount: taskStore?.entries?.length ?? 0,
                                itemBuilder: (BuildContext context, int index) {
                                  return buildTask(context, index, taskStore);
                                }))),
                    FloatingActionButton(
                        onPressed: taskStore.increment, child: Icon(Icons.add)),
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}
