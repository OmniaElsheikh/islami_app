import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({Key? key}) : super(key: key);

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  late double? turns = 0.0;
  int counter = 0;
  int index = 0;
  final List<String> tasbehList = [
    "سبحان الله",
    "الحمدلله",
    "الله اكبر",
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Stack(children: [
              AnimatedRotation(
                turns: turns!,
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 232,
                  height: 234,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50), //look
                    child: Image.asset(
                      "assets/images/sebha_header.png",
                      height: mediaQuery.height * 0.1,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 109,
                top: -27,
                child: Container(
                  width: 73,
                  height: 105,
                  child: Image.asset(
                    "assets/images/head_of_sebha.png",
                    height: mediaQuery.height,
                    width: mediaQuery.width,
                  ),
                ),
              ),
            ]),
          ),
          const Text(
            "عدد التسبيحات",
            style: TextStyle(
                fontFamily: "El Messiri",
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Container(
                    height: 50,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFB7935F),
                    ),
                    child: Text(
                      "$counter",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text(
                    tasbehList[index],
                    style: TextStyle(
                        color: Colors.white70,
                        fontFamily: "El Messiri",
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: theme.primaryColor,
                  ),
                  onPressed: () {
                    // setState(() => turns=(turns! + 0.1)!);
                    setState(() {
                      if (counter < 33) {
                        counter++;
                      } else {
                        if (index < tasbehList.length - 1) {
                          counter = 0;
                          index++;
                        } else {
                          index = 0;
                          counter = 0;
                        }
                      }
                    });
                    setState(() => turns = (turns! + 0.01)!);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
