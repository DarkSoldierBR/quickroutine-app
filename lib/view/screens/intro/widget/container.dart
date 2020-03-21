import 'package:flutter/material.dart';
import 'package:quick_routine/model/intro_data.dart';
import 'dart:async';


Widget buildContainer(String texto,Color color,String desc,String image){
//Widget buildContainer(){
 return  Container(color: Colors.red,
    child: Column(children: <Widget>[
      Text(texto,
      style: TextStyle(),),
      Image.network(image),
      Text(desc)
    ],)
    
  );
}