// import 'package:flutter/material.dart';
// import 'package:quick_routine/view/screens/home/store/counter.dart';

// final Counter counter = new Counter();
// Widget buildTask() {
//   return ListView.builder(
//       padding: const EdgeInsets.all(8),
//       itemCount: counter?.entries?.length ?? 0,
//       itemBuilder: (BuildContext context, int index) {
//         return Container(
//             decoration: BoxDecoration(
//                 boxShadow: [BoxShadow(blurRadius: 10.0)],
//                 borderRadius: BorderRadius.all(
//                     Radius.circular(25.0)), // <--- border radius aqui
//                 color: counter.colorCodes[index]), //laranja forte
//             height: 55, //altura do widget
//             margin: EdgeInsets.fromLTRB(5, 0, 5, 0), // Margem do widget
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 Container(
//                     width: 100,
//                     child: Center(
//                         child: Text(
//                       counter.date[index],
//                       style: TextStyle(
//                           fontSize: 26,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Montserrat'),
//                     ))),
//                 Container(
//                     width: 200,
//                     child: Center(
//                       child: Text(
//                         counter.title[
//                             index], //O campo titulo deve conter no maximo 15 caracteres
//                         style: TextStyle(
//                             fontFamily: 'Montserrat-Relular',
//                             fontSize: 24,
//                             color: counter.colorCodes[index]),
//                       ),
//                     )),
//               ],
//             ));
//       });
// }
