import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return Scaffold(
      body:Column(
        children: [

          Image.asset(
            "assets/images/splash_pic.jpg",
            fit: BoxFit.cover,
            height: height * .8,
          ),
          SizedBox(height: height * 0.04,),
          Text("TOP HEADLINES", style: GoogleFonts.poppins(textStyle: TextStyle(letterSpacing: 2 , fontWeight: FontWeight.w700, fontSize: 15, color: Colors.orange)),),
          SizedBox(height: height * 0.04,),
          SpinKitChasingDots(
            color: Colors.orange,
            size: 30,
          ),
        ],
      ),
    );
  }
}
