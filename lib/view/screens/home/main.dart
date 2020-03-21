
import 'package:flutter/material.dart';

void main() {
  

  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  var _pages = [

     Text(
      'Index 0: Configurações',
      style: optionStyle,
    ),
    
    Column(children: <Widget>[
              SafeArea(
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(11, 60, 73, 1),
                        border: Border.all(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Stack(
                        // alignment: Alignment.centerLeft,
                        children: <Widget>[
                          Container(
                              color: Colors.amberAccent,
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    "https://raw.githubusercontent.com/Quick-Routine/quick-rotine-design/master/Logos/QuickRoutineApp/QuickRoutineAppLogo.png"),
                              )),
                          Container(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Algo",
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      ))),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 200),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(6, 33, 40, 1),
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(children: <Widget>[
                          Text(
                            "Resumo",
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                          ),
                        ])),
                  )),
            ]),

    Container(color: Colors.amber),
      ];

  var _pageController = PageController();

  

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[


  ];

  void _onItemTapped(int index) {
    setState(() {
            _selectedIndex = index;
      _pageController.animateToPage(_selectedIndex, duration: Duration(milliseconds: 900), curve: Curves.elasticOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Scaffold(
// appBar: AppBar(title: const Text('Bottom App Bar')),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                title: Text('Configurações'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                title: Text('Agenda'),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
          body: PageView(controller: _pageController,children: _pages,onPageChanged: (index){
            setState(() {
              _selectedIndex = index;
            });
          },),
        )
      ],
    );
  }
}
