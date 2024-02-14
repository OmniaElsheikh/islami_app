import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("HadethView",
          style: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 40,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
