import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'my_them.dart';

void main() {
  runApp(MyAplication());
}

class MyAplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThem.lightmode,
      darkTheme: MyThem.darkthem,
      themeMode: ThemeMode.light,
      //كدا الابليكيشن مفيهوش darkmode
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
      },
    );
  }
}
