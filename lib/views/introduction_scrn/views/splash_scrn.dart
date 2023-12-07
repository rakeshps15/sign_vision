import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sign_vision/views/introduction_scrn/views/pages.dart';
import '../../../utils/colors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState() {
    //what will happen when the app or page is first launched
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Intro()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('asset/logo.png'),
          ),
          SizedBox(height: 40,),
          Text("Welcome",style: TextStyle(fontSize: 50,fontStyle: FontStyle.italic,color: MyColors.titleTextColor))
        ],
      ),
    );
  }
}
