import 'package:flutter/material.dart';

Widget buildTextField(titulo) {
  return Container(
      padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
      child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: (titulo),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                  color: Color.fromRGBO(255, 127, 16, 1.0), width: 0.0),
            ),
          )));
}
