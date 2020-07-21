import 'package:flutter/material.dart';
import 'package:quick_routine/view/screens/home/store/taskstore.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final TaskStore taskStore = new TaskStore();

Widget buildBottomBar(context) {
  return BottomAppBar(
      color: Color.fromRGBO(220, 220, 220, 1.0), //cinza fraco background
      child: Container(
          height: 60,
          margin: EdgeInsets.only(left: 30, right: 30),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    color: Colors.red,
                    height: 50,
                    width: 50,
                    child: IconButton(
                        // iconSize: 30,
                        icon: Image.asset("assets/icones/search.png"),
                        onPressed: () {})),

                IconButton(
                    icon: Image.asset("assets/icones/home.png"),
                    onPressed: taskStore.increment),

                Container(
                    color: Colors.blueAccent,
                    height: 50,
                    width: 50,
                    child: Expanded(
                        child: IconButton(
                            icon: Image.asset("assets/icones/home.png"),
                            onPressed: () {}))),
                // Container(child: Image.asset("assets/icones/settings.png")),
              ])));
}
