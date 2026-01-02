import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
  super.initState();
  Timer(const Duration(seconds: 4), (){
    Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=> const homescreen()),
    );
  });
  }
  // void initState() {
  //   super.initState();
  //
  //   Timer(const Duration(seconds: 5), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => const homescreen()),
  //     );
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: Image.asset('assets/images/backphoto.png', fit: BoxFit.cover,),
      )
    );
  }
}

