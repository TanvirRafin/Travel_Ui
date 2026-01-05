import 'package:flutter/material.dart';
import 'package:travelui/screen/login_signup/signup_screen.dart';

class login extends StatefulWidget {
  const login({super.key});
  static const String name = '/login';

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/login.jpg',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black.withOpacity(0.3)),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login page",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Enter your enail.."),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Password...",
                    ),
                  ),
                  SizedBox(height: 60),
                  FilledButton(onPressed: () {}, child: Text("login")),
                  SizedBox(height: 15,),
                  Center(
                    child: Column(
                      children: [
                        TextButton(onPressed: (){}, child: Text("Forget password?", style: TextStyle(color: Colors.white,
                        fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("Dont have any account  ?",style: TextStyle(color: Colors.white),),
                          SizedBox(width: 6,),
                          TextButton(onPressed: _ontapsignup, child: Text("sign up", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white

                          ),))
                        ],)
                       

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void _ontapsignup(){
    Navigator.pushReplacementNamed(context, signup.name);
  }
}
