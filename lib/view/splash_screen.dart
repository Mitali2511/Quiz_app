import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/download.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
//1 way of images
// Container(
//         alignment: Alignment.center,
//         child: Image.asset('assets/images/download.png',
//         fit: BoxFit.fill,),
//       ),