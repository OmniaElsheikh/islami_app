import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Column(children: [
      Image.asset(
        "assets/images/radio_header.png",
        height: mediaQuery.height * 0.6,
        alignment: Alignment.center,
      ),
      Padding(
        padding: EdgeInsets.all(15),
        child: const Text(
          "إذاعة القران الكريم",
          style: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Center(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                  child: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/images/back.png",
                      ))),
            ),
            Expanded(
              child: InkWell(
                  child: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/images/play.png",
                      ))),
            ),
            Expanded(
              child: InkWell(
                  child: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/images/next.png",
                      ))),
            ),
          ],
        ),
      )
    ]);
  }
}
