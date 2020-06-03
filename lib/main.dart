import 'package:flutter/material.dart';
import 'package:kyc/photo_screen.dart';
import 'package:kyc/splash_screen.dart';
import 'package:kyc/welcome_screen.dart';
import 'package:kyc/video_screen.dart';
import 'package:kyc/my_button_bar.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
//      home: MyButtonBar(),

      home: SplashScreen(),
    );
  }
}
