import 'package:flutter/material.dart';
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
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.

          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(192, 192, 192, 1.0),
                  ),
                  child: Center(
                    child: Image.asset("assets/logo/logo-horizontal.png"),
                  )),
              Container(
                  height: 700,

                  //height: 700,
                  color: Color.fromRGBO(128, 128, 128, 1.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Visão Geral',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Rotinas',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Tarefas',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      Divider(
                        color: Colors.white30,
                        thickness: 5,
                        indent: 50,
                        endIndent: 50,
                      ),
                      ListTile(
                        title: Text(
                          'Configurações',
                          style: TextStyle(fontSize: 25),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: AppBar(
              //  iconTheme: new IconThemeData(size: 15.0,color: Colors.black54),
              //         leading: IconButton(
              //           icon: Icon(Icons.dehaze),
              //           color: Colors.black54,
              //           iconSize: 40.0,
              //             onPressed: () {
              //  //     Scaffold.of(context).openDrawer();

              //     },

              leading: Builder(builder: (BuildContext context) {
                return IconButton(
                    icon: Icon(Icons.dehaze),
                    color: Colors.black54,
                    iconSize: 40.0,
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    });
              }),

              title: Row(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/logo/logo-horizontal.png")
                ],
              ),
              backgroundColor: Color.fromRGBO(192, 192, 192, 1.0),
            )),
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
                      "Segunda-feira (30/03/2003)",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
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
