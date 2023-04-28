import 'package:flutter/material.dart';

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
      },
      initialRoute: HomeScreen.routName,
      theme: MyThemData.lightThem,
    );
  }
}
