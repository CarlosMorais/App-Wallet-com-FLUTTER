import 'dart:async';

import 'package:flutter/material.dart';
import 'login_screen.dart';
import '../../controller/utils/color.dart';
import '../../controller/animations/fade_animation.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [colorPrimary, colorSecondary],
          ),
        ),
        child: Center(
          child: FadeAnimation(
            3,
            Image.asset("assets/logo.png"),
          ),
        ),
      ),
    );
  }
}
