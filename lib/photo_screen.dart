import 'package:flutter/material.dart';

class PhotoScreen extends StatefulWidget {
  static const String id = 'photo_screen';

  @override
  _PhotoScreenState createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
    );
  }
}
