import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kyc/photo_screen.dart';
import 'dart:async';

import 'package:kyc/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheck().then((status) {
      if (status) {
        navigateToHome();
      } else {
        navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheck() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    return true;
  }

  void navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => WelcomeScreen()));
  }

  void navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => PhotoScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/kycc.png'), fit: BoxFit.cover),
              ),
            )
          ],
        ),
      ),
    );
  }
}
