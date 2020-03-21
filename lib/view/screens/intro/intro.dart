import "package:flutter/material.dart";
import 'package:quick_routine/model/intro_data.dart';
import 'package:quick_routine/view/screens/intro/widget/container.dart';
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
    Container(
      color: Colors.blue,
    ),

    buildContainer("Titulo", Colors.blueAccent, "Descricao dessa pagina",
        "https://flutter.dev/assets/flutter-lockup-c13da9c9303e26b8d5fc208d2a1fa20c1ef47eb021ecadf27046dea04c0cebf6.png"),
    Container(
      color: Colors.black,
    ),
//buildContainer()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildPageView(context, pages));
  }
}
