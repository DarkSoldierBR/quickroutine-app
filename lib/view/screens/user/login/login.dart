import 'package:flutter/material.dart';

import "package:flutter/material.dart";
import 'package:quick_routine/view/screens/user/login/widget/textfield.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(234, 234, 234, 1),
        body: Container(
            child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.red,
                    child: Image.asset('assets/logo/logo-vertical.png')),
                buildTextField('Nome'),
                buildTextField('Email'),
                buildTextField('Senha'),
              ],
            ),
          ),
        )));
  }
}
