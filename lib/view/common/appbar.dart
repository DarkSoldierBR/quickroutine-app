import 'package:flutter/material.dart';

Widget buildAppBar(context) {
  return PreferredSize(
      preferredSize: Size.fromHeight(70.0),
      child: AppBar(
        //  iconTheme: new IconThemeData(size: 15.0,color: Colors.black54),
        //         leading: IconButton(
        //           icon: Icon(Icons.dehaze),
        //           color: Colors.black54,
        //           iconSize: 40.0,
        //             onPressed: () {
        //  //     Scaffold.of(context).openDrawer();

        //     },

        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: Icon(Icons.dehaze),
              color: Colors.black54,
              iconSize: 40.0,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),

        title: Row(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Image.asset("assets/logo/logo-horizontal.png")],
        ),
        backgroundColor: Color.fromRGBO(192, 192, 192, 1.0),
      ));
}
