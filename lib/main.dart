import 'package:flutter/material.dart';
import 'package:islamic/suraDetails.dart';

import 'home_screen.dart';
import 'my_them.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraName.rouitNam: (context) => SuraName()
      },
      initialRoute: HomeScreen.routName,
      theme: MyThemData.lightThem,
    );
  }
}
