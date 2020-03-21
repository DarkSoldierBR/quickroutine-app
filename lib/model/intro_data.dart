import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';



Future<File> _getFile() async {
  final directory = await getApplicationDocumentsDirectory();
  return File("${directory.path}/src/intro_data.json");
}

 getX() async{
    final file = await _getFile();
  //  Map x = json.decode(await file.readAsString());
    Map<String, dynamic> x = jsonDecode(await file.readAsString());
    print(file.readAsStringSync()+"tesseasdassssssssssssssss");
    return x;
}