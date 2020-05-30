import 'package:flutter/material.dart';

Widget buildTask(String date, String titulo) {
  return SizedBox(
      width: double.infinity,
      child: Container(
          height: 60,
          color: Color.fromRGBO(255, 127, 16, 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  width: 100,
                  child: Center(
                      child: Text(
                    date,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ))),
              Container(
                  width: 200,
                  child: Center(
                    child: Text(
                      titulo, //O campo titulo deve conter no maximo 15 caracteres  
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 24,
                          color: Color.fromRGBO(220, 220, 220, 1.0)),
                    ),
                  ))
            ],
          )));
}
