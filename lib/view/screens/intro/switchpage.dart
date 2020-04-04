import 'package:flutter/cupertino.dart';

class SwitchPage extends ChangeNotifier {
  var selectedIndex = 0;

  // final StreamController _streamController = StreamController();
  // Sink get input => _streamController.sink;
  // Stream get output => _streamController.stream;

var pageController = PageController();

  void nextPage() {
    pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.linear);
    notifyListeners();
  }
}
