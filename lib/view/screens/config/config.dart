import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child:
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          
         child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
        )
      ],
    ));
  }
}