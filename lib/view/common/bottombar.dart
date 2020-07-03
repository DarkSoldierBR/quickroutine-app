import 'package:flutter/material.dart';
import 'package:quick_routine/view/screens/home/widget/task.dart';

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
                  color: Colors.blue,
                    child: IconButton(
                  icon: Image.asset("assets/icones/search.png"),
                  onPressed: () {
                    return buildTask("10:00", "Estudar");
                  },
                )),
                Container(child: Image.asset("assets/icones/home.png")),
                // Container(child: Image.asset("assets/icones/settings.png")),
              ])));
}
