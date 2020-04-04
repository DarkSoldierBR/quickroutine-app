import 'package:flutter/material.dart';
import 'package:quick_routine/view/screens/intro/switchpage.dart';

SwitchPage switchPage = SwitchPage();

Widget buildFloatingButton() {
  return FloatingActionButton.extended(
      splashColor: Colors.deepPurpleAccent,
      backgroundColor: Colors.red,
      onPressed: switchPage.nextPage,
      label: Text("Next"),
      icon: Icon(Icons.arrow_forward_ios));
}
