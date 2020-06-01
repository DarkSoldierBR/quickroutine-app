import 'package:flutter/material.dart';

Widget buildTask(String date, String titulo) {
  return SizedBox(
      width: double.infinity,
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 3.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0) // <--- border radius aqui
                  ),
              color: Color.fromRGBO(255, 127, 16, 1.0)), //laranja forte
          height: 60,
          margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                          fontFamily: 'Montserrat-Relular',
                          fontSize: 24,
                          color: Color.fromRGBO(220, 220, 220, 1.0)),
                    ),
                  ))
            ],
          )));
}
