import 'package:flutter/material.dart';

Widget buildAppBar(context) {
  return AppBar(
    leading: Builder(builder: (BuildContext context) {
      return IconButton(
          icon: Icon(Icons.dehaze),
          color: Colors.black54,
          iconSize: 40.0,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          });
    }),
    title: Center(
        child: Row(
      verticalDirection: VerticalDirection.down,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "assets/logo/logo-horizontal.png",
          width: 180,
        )
      ],
    )),
    backgroundColor: Color.fromRGBO(192, 192, 192, 1.0),
  );
}
