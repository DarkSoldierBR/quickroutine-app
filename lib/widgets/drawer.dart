import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white,Colors.blue],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight)

      ),
    );
    return Drawer(
  child: Stack(
    children: <Widget>[
      _buildDrawerBack()
    ],
  )
);
  }
}

