// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FlutterThaiHotlineApp(),
  );
}

class FlutterThaiHotlineApp extends StatelessWidget {
  FlutterThaiHotlineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: GoogleFonts.kanit().fontFamily,
              fontFamilyFallback: GoogleFonts.kanit().fontFamilyFallback,
            ),
      ),
    );
  }
}
