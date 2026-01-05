import 'package:flutter/material.dart';
import 'package:travelui/screen/Splash_screen.dart';
import 'package:travelui/screen/login_signup/log_in.dart';
import 'package:travelui/screen/login_signup/signup_screen.dart';
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       scaffoldBackgroundColor: const Color(0xFFE0E0E0),
        primaryColor: Colors.grey.shade700,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16)
          ),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16)
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            fixedSize: Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            backgroundColor: Colors.white70
          )
        )
      ),
   //   home: const SplashScreen(),
      routes: <String,WidgetBuilder>{
        '/':(_)=>SplashScreen(),
        login.name:(_)=>login(),
        signup.name:(_)=>signup(),

      },
      initialRoute: '/',
    );
  }
}
