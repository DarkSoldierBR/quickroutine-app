import 'package:flutter/material.dart';

Widget buildTask(BuildContext context, int index, taskStore) {
  return Container(
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 10.0)],
          borderRadius: BorderRadius.all(
              Radius.circular(25.0)), // <--- border radius aqui
          color: taskStore.colorCodes[index]), //laranja forte
      height: 55, //altura do widget
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0), // Margem do widget
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              width: 100,
              child: Center(
                  child: Text(
                taskStore.date[index],
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ))),
          Container(
              width: 200,
              child: Center(
                child: Text(
                  taskStore.title[
                      index], //O campo titulo deve conter no maximo 15 caracteres
                  style: TextStyle(
                      fontFamily: 'Montserrat-Relular',
                      fontSize: 24,
                      color: Color.fromRGBO(220, 220, 220, 1.0)),
                ),
              )),
        ],
      ));
}
