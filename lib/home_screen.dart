import 'package:flutter/material.dart';
import 'package:islamic/taps/ahadeth.dart';
import 'package:islamic/taps/quran.dart';
import 'package:islamic/taps/radio.dart';
import 'package:islamic/taps/sebha.dart';

class HomeScreen extends StatefulWidget {
  //const Home_Screen({Key? key}) : super(key: key);
  static const String routName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> Tabs = [Quran(), Sebha(), Ahadeth(), RadioTap()];

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            child:
                Image.asset("assets/image/background.png", fit: BoxFit.cover)),
        Scaffold(
          appBar: AppBar(
              title: Center(
                  child: Text(
            "islami",
            style: Theme.of(context).textTheme.bodyLarge,
          ))),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/image/quran.png")),
                    label: "Quran"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/image/ahadeth.png")),
                    label: "Ahadeth"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/image/sebha.png")),
                    label: "Sebha"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/image/radio.png")),
                    label: "Radio")
              ]),
          body: Tabs[index],
        )
      ],
    );
  }
}
