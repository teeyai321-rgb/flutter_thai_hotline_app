// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/travel_ui.dart';

class SplashScreenUi extends StatefulWidget {
  SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    super.initState();
    var navigator = Navigator.of(context);
    Future.delayed(Duration(seconds: 3), () {
      navigator.pushReplacement<void, void>(
        MaterialPageRoute<void>(builder: (context) => SubAHomeUI()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/icon/icon.png',
              width: 160,
              height: 160,
            ),
            SizedBox(height: 24),
            Text(
              'THAI HOTLINE APP\nสายด่วน',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 32,
              height: 32,
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 1, 35, 128),
                strokeWidth: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
