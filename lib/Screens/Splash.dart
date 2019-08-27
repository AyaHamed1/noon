import 'package:flutter/material.dart';
import 'package:noon/Screens/HomePage.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState() {
    Timer(Duration(seconds: 5), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).splashColor,
      body: Center(
        child: Image.asset('assets/logo2.jpg', height: 150, width: 250,),
      ),
    );
  }
}
