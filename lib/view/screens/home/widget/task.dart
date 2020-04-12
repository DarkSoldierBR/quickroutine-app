import 'package:flutter/material.dart';


Widget buildTask(String date,String titulo) {
  return SizedBox(
      width: double.infinity,
      // height: double.infinity,
      child: Container(
          height: 60,
          color: Color.fromRGBO(255, 127, 16, 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                date,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Container(
                  width: 350,
                  child: Center(
                    child: Text(
                      titulo,
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(220, 220, 220, 1.0)),
                    ),
                  ))
            ],
          )));
}