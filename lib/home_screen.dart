import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  static const String routName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text("Islami", style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            backgroundColor: Theme.of(context).primaryColorLight,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/image/radio.png")),
                  label: "Radio",
                  backgroundColor: Theme.of(context).primaryColorLight),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/image/sebha.png")),
                  label: "Sebha",
                  backgroundColor: Theme.of(context).primaryColorLight),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/image/ahadeth.png")),
                  label: "Ahadeth",
                  backgroundColor: Theme.of(context).primaryColorLight),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/image/quran.png")),
                  label: "Quran",
                  backgroundColor: Theme.of(context).primaryColorLight)
            ],
          )),
    );
  }
}
