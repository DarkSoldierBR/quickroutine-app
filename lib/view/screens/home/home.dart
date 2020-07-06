import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:quick_routine/view/common/appbar.dart';
import 'package:quick_routine/view/common/drawer.dart';
import 'package:quick_routine/view/common/bottombar.dart';
import 'package:quick_routine/view/screens/home/widget/task.dart';
import 'package:quick_routine/view/screens/home/store/counter.dart';

final Counter counter = new Counter();

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
                    Expanded(child: Observer(builder: (_) =>ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: counter?.entries?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 10.0)],
                borderRadius: BorderRadius.all(
                    Radius.circular(25.0)), // <--- border radius aqui
                color: counter.colorCodes[index]), //laranja forte
            height: 55, //altura do widget
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0), // Margem do widget
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                    width: 100,
                    child: Center(
                        child: Text(
                      counter.date[index],
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ))),
                Container(
                    width: 200,
                    child: Center(
                      child: Text(
                        counter.title[
                            index], //O campo titulo deve conter no maximo 15 caracteres
                        style: TextStyle(
                            fontFamily: 'Montserrat-Relular',
                            fontSize: 24,
                            color: Color.fromRGBO(220, 220, 220, 1.0)),
                      ),
                    )),
              ],
            ));
      }))),
                    FloatingActionButton(
                        onPressed: counter.increment, child: Icon(Icons.add))
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}
