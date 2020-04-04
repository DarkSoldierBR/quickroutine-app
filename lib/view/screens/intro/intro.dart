import "package:flutter/material.dart";
import 'package:quick_routine/view/screens/intro/widget/container.dart';
import 'package:quick_routine/view/screens/intro/widget/floatingbutton.dart';
import 'package:quick_routine/view/screens/intro/widget/pageview.dart';

void main() {
  runApp(MaterialApp(
    home: Intro(),
  ));
}

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  var pages = [
    buildContainer(
        "Titulo",
        Colors.blueAccent,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et blandit tellus. In ac ex tellus. Nam euismod lacinia velit id mollis. Etiam fermentum dolor erat, vel feugiat sem pellentesque non.",
        'assets/logo/logo-horizontal.png'),
    buildContainer(
        "Titulo2",
        Colors.yellow,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et blandit tellus. In ac ex tellus. Nam euismod lacinia velit id mollis. Etiam fermentum dolor erat, vel feugiat sem pellentesque non.",
        'assets/logo/logo-horizontal.png'),
    buildContainer(
        "Lorem ipsum",
        Colors.greenAccent,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et blandit tellus. In ac ex tellus. Nam euismod lacinia velit id mollis. Etiam fermentum dolor erat, vel feugiat sem pellentesque non.",
        'assets/logo/logo-horizontal.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: buildFloatingButton(),
        body: buildPageView(context, pages));
  }
}
