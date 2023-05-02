import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic/suraDetailsArgs.dart';

class SuraName extends StatefulWidget {
  static const String rouitNam = "SuraDetail";

  @override
  State<SuraName> createState() => _SuraNameState();
}

class _SuraNameState extends State<SuraName> {
  //const SuraName({Key? key}) : super(key: key);
  List verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      //معني أنها فاضيه أنه هيحمل الفايل
      loadFiel(args
          .index); //هينده علي load fielلما تشتغل هتخزن الايات في الverses list
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/background.png"))),
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                args.suraName,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          body: ListView.separated(
              itemBuilder: (context, index) {
                return Center(
                    child: Text(
                  verses[index],
                  style: GoogleFonts.elMessiri(
                      fontSize: 20, color: Color(0XFF242424)),
                ));
              },
              separatorBuilder: (context, index) => Divider(
                  color: Colors.black, thickness: 2, endIndent: 20, indent: 20),
              itemCount: verses.length),
        ));
  }

  void loadFiel(int index) async {
    String sura = await rootBundle.loadString("assets/fiels/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    print(lines);
    verses = lines;
    setState(() {});
  }
}
