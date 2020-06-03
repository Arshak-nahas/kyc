import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  static const String id = 'video_screen';

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
    );
  }
}
