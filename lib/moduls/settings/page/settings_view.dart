import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("SettingsView",
          style: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 40,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
