import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_coffee_app_project/views/custom_order_ui.dart';


import 'package:sau_coffee_app_project/views/splash_screen_ui.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreenUI(),
        theme: ThemeData(
            textTheme:
                GoogleFonts.kanitTextTheme(Theme.of(context).textTheme)));
  }
}
