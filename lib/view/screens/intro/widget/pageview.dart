import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_routine/view/screens/intro/switchpage.dart';



Widget buildPageView(BuildContext context, var pages) {

SwitchPage switchPage = new SwitchPage();

  return ChangeNotifierProvider<SwitchPage>(
      create: (context) => SwitchPage(),
      child:
          PageView(
            controller: switchPage.pageController,
        children: pages,
      //  controller: switchPage.pageController,
      ));

//   }
// );
}
