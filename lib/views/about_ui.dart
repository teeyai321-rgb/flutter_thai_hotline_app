import 'package:flutter/material.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        centerTitle: true,
        backgroundColor: Color(0xFFD9D9D9),
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 28),
        children: [
          Text(
            'ผู้จัดทำ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 28),
          Image.asset(
            'assets/images/aboutme/saulogo.png',
            width: 180,
            height: 150,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 18),
          Text(
            'มหาวิทยาลัยเอเชียอาคเนย์',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Image.asset(
            'assets/images/aboutme/me.png',
            width: 240,
            height: 240,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Text(
                'รหัสนักศึกษา : 6819410043',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 22),
              Text(
                'ชื่อ-นามสกุล : นายกิตติพงศ์ ศรีชัย',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 22),
              Text(
                'อีเมล : s6819410043@sau.ac.th',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 22),
              Text(
                'ชื่อสาขา : วิศวะคอมพิวเตอร์',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 22),
              Text(
                'ชื่อคณะ : วิศวกรรมศาสตร์',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
