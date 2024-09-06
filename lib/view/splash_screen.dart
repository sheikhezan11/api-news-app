import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app/view/home/home_screen.dart';
import '../res/colors/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen(),));
    });
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/news.jpg',
              height: height * 0.4,
              width: width * 0.8,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              "TOP HEADING",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 5,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            SpinKitFadingCube(
              color: AppColor.mainBlueColor,
            ),
          ],
        ),
      ),
    );
  }
}

class DummyImg {
  static const String splashScreen = 'assets/images/news.jpg';
}
