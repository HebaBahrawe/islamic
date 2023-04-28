import 'package:flutter/material.dart';
import 'package:islamic/suraDetailsArgs.dart';

class SuraName extends StatelessWidget {
  const SuraName({Key? key}) : super(key: key);
  static const String rouitNam = "SuraDetail";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/background.png"))),
        child: Scaffold());
  }
}
