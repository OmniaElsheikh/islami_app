import 'package:flutter/material.dart';

class QuranDetailsView extends StatelessWidget {
  static const String routeName = "QuranDetails";

  const QuranDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
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
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin: const EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            color: const Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة الفاتحة",
                    style: TextStyle(
                      fontFamily: "El Messiri",
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      //theme.textTheme.bodyMedium,
                    ),
                    // style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle_rounded,
                    size: 28,
                  ),
                ],
              ),
              Divider(
                indent: 30,
                endIndent: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
