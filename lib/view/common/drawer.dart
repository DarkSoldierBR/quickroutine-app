import 'package:flutter/material.dart';
import 'package:quick_routine/view/screens/config/config.dart';
import 'package:quick_routine/view/screens/home/home.dart';
import 'package:quick_routine/view/screens/rotine/rotine.dart';
import 'package:quick_routine/view/screens/task/task.dart';

Widget buildDrawer(context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        SafeArea(
            child: Container(
                padding: EdgeInsets.all(40),
                color: Color.fromRGBO(192, 192, 192, 1.0),
                child: Center(
                  child: Image.asset("assets/logo/logo-horizontal.png"),
                ))),
        Container(
            height: 700,
            color: Color.fromRGBO(128, 128, 128, 1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  title: Text(
                    'Visão Geral',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Rotine()),
                    );
                  },
                  title: Text(
                    'Rotinas',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Task()),
                    );
                  },
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Config()),
                    );
                  },
                  title: Text(
                    'Configurações',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ],
            ))
      ],
    ),
  );
}
