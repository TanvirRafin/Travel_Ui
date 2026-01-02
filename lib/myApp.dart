import 'package:flutter/material.dart';
import 'package:travelui/screen/Splash_screen.dart';
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       scaffoldBackgroundColor: const Color(0xFFE0E0E0),
        primaryColor: Colors.grey.shade700
      ),
      home: const SplashScreen(),
    );
  }
}
