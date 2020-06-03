import 'package:flutter/material.dart';

Widget buildAppBar(context) {
  return AppBar(
    leading: Builder(builder: (BuildContext context) {
      return Container(
          child: IconButton(
              icon: new Image.asset("assets/logo/menu-icone.png"),
              iconSize: 50.0,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }));
    }),
    title: Container(
        width: double.infinity,
        child: Row(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/logo/logo-horizontal.png",
              width: 250,
            )
          ],
        )),
    backgroundColor: Color.fromRGBO(192, 192, 192, 1.0),
  );
}
