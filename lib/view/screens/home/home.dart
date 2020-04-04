import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        drawer: Drawer(),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: AppBar(
              //  iconTheme: new IconThemeData(size: 15.0,color: Colors.black54),
              leading: IconButton(
                icon: Icon(Icons.dehaze),
                color: Colors.black54,
                iconSize: 40.0,
              ),
              title: Row(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/logo/logo-horizontal.png")
                ],
              ),
              backgroundColor: Color.fromRGBO(192, 192, 192, 1.0),
            )),
        body: Container(
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  width: double.infinity,
                  // height: double.infinity,
                  child: Container(
                    color: Color.fromRGBO(220, 220, 220, 1.0),
                          height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      "Segunda-feira (30/03/2003)",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  )),
              SizedBox(
                  width: double.infinity,
                  // height: double.infinity,
                  child: Container(
                      color: Color.fromRGBO(128, 128, 128, 1.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Tarefas/Atividades/afazeres",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Color.fromRGBO(220, 220, 220, 1.0),
                            fontWeight: FontWeight.bold),
                      ))),
              Column(
                children: <Widget>[
                  SizedBox(
                      width: double.infinity,
                      // height: double.infinity,
                      child: Container(
                          height: 60,
                          color: Color.fromRGBO(255, 127, 16, 1.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "07:00",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            Container(
                                  width: 350,
                                  child: Center(
                                    child: Text(
                                      "Ir para a escola",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Color.fromRGBO(
                                              220, 220, 220, 1.0)),
                                    ),
                                  ))
                            ],
                          ))),
              



              SizedBox(
                      width: double.infinity,
                      // height: double.infinity,
                      child: Container(
                          height: 60,
                          color: Color.fromRGBO(255, 140, 0, 1.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "16:30",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            Container(
                                  width: 350,
                                  child: Center(
                                    child: Text(
                                      "Estudar física",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Color.fromRGBO(
                                              220, 220, 220, 1.0)),
                                    ),
                                  ))
                            ],
                          ))),



                          SizedBox(
                      width: double.infinity,
                      // height: double.infinity,
                      child: Container(
                          height: 60,
                          color: Color.fromRGBO(255, 127, 16, 1.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "07:00",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            Container(
                                  width: 350,
                                  child: Center(
                                    child: Text(
                                      "Estudar Química",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Color.fromRGBO(
                                              220, 220, 220, 1.0)),
                                    ),
                                  ))
                            ],
                          ))),

                          SizedBox(
                      width: double.infinity,
                      // height: double.infinity,
                      child: Container(
                          height: 60,
                          color: Color.fromRGBO(255, 140, 0, 1.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "18:30",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            Container(
                                  width: 350,
                                  child: Center(
                                    child: Text(
                                      "Levar irmão na capoeira",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Color.fromRGBO(
                                              220, 220, 220, 1.0)),
                                    ),
                                  ))
                            ],
                          ))),

                          SizedBox(
                      width: double.infinity,
                      // height: double.infinity,
                      child: Container(
                          height: 60,
                          color: Color.fromRGBO(255, 127, 16, 1.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "19:30",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            Container(
                                  width: 350,
                                  child: Center(
                                    child: Text(
                                      "Pesquisar sobre a França",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Color.fromRGBO(
                                              220, 220, 220, 1.0)),
                                    ),
                                  ))
                            ],
                          ))),

                          SizedBox(
                      width: double.infinity,
                      // height: double.infinity,
                      child: Container(
                          height: 60,
                          color: Color.fromRGBO(255, 140, 0, 1.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "20:00",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            Container(
                                  width: 350,
                                  child: Center(
                                    child: Text(
                                      "Buscar irmão da capoeira",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Color.fromRGBO(
                                              220, 220, 220, 1.0)),
                                    ),
                                  ))
                            ],
                          ))),

                          SizedBox(
                      width: double.infinity,
                      // height: double.infinity,
                      child: Container(
                          height: 60,
                          color: Color.fromRGBO(255, 127, 16, 1.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "22:00",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            Container(
                                  width: 350,
                                  child: Center(
                                    child: Text(
                                      "Dormir",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Color.fromRGBO(
                                              220, 220, 220, 1.0)),
                                    ),
                                  ))
                            ],
                          ))),
                ],
              ),
            ],
          ),
        ));
  }
}
