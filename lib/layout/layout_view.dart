import 'package:flutter/material.dart';
import 'package:islam_app/moduls/hadeth/page/hadeth_view.dart';
import 'package:islam_app/moduls/quran/page/quran_view.dart';
import 'package:islam_app/moduls/radio/page/radio_view.dart';
import 'package:islam_app/moduls/settings/page/settings_view.dart';
import 'package:islam_app/moduls/tasbeh/page/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({Key? key}) : super(key: key);

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/main_background.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامي",
            style: TextStyle(
              fontFamily: "El Messiri",
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/quran.png")),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/hadeth.png")),
              label: "Hadeth",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/sebha.png")),
              label: "Tasbeh",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/radio.png")),
              label: "Radio",
              // backgroundColor: Color(#B7935F),
            ),
            BottomNavigationBarItem(
                icon: (Icon(Icons.settings)), label: "Setting"),
          ],
        ),
      ),
    );
    //   Stack(
    //   children: [
    //     Image.asset("assets/images/background.png",
    //       height: mediaQuery.height,
    //       width: mediaQuery.width,
    //       fit: BoxFit.cover,
    //     ),
    // Scaffold(
    //     appBar: AppBar(
    //       title: Text("إسلامي"),
    //     ),
    //     ),
    //
    //   ],
    // );
  }
}
