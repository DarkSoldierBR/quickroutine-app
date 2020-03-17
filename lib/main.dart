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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text('Bottom App Bar')),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(11, 60, 73, 1),
            border: Border.all(color: Colors.greenAccent),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        )),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
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
                            child:Text("Algo",style: TextStyle(color: Colors.blue),))
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
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ])),
              )),
        ])));
  }
}
