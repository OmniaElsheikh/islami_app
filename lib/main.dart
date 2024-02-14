import 'package:flutter/material.dart';
import 'package:islam_app/config/application_theme_manager.dart';
import 'package:islam_app/layout/layout_view.dart';
import 'package:islam_app/moduls/quran/page/quran_details_view.dart';
import 'package:islam_app/moduls/splash/page/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami App',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightTheme,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        SplashView.routeName: (context) => const LayoutView(),
        QuranDetailsView.routeName: (context) => const QuranDetailsView(),
      },
    );
  }
}
