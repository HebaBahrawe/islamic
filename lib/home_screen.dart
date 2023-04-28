import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //const Home_Screen({Key? key}) : super(key: key);
  static const String routName = "Home";

  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: double.infinity,
          child: Image.asset("assets/image/background.png", fit: BoxFit.cover)),
      Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
          "islami",
          style: Theme.of(context).textTheme.bodyLarge,
        ))),
      ),
    ]);
  }
}
