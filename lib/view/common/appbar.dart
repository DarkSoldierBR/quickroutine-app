import 'package:flutter/material.dart';

Widget buildAppBar(context) {
  return AppBar(
    leading: Builder(builder: (BuildContext context) {
      return Container(color:Colors.blue,
        child:IconButton(
          icon: new Image.asset("assets/logo/menu-icone.png"),
          color: Colors.black54,
          iconSize: 40.0,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          }));
    }),
    title: Center(
        child: Container(color:Colors.red,
        child:
        Row(
      verticalDirection: VerticalDirection.down,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "assets/logo/logo-horizontal.png",
          width: 250,
        )
      ],
    ))),
    backgroundColor: Color.fromRGBO(192, 192, 192, 1.0),
  );
}
