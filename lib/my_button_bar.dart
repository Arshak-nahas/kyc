import 'package:flutter/material.dart';
import 'package:kyc/photo_screen.dart';
import 'package:kyc/video_screen.dart';
import 'package:kyc/welcome_screen.dart';

class MyButtonBar extends StatefulWidget {
  @override
  _MyButtonBarState createState() => _MyButtonBarState();
}

class _MyButtonBarState extends State<MyButtonBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    WelcomeScreen(),
    PhotoScreen(),
    VideoScreen(),
    PhotoScreen()
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Settings')),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('Add'))
        ],
      ),
    );
  }
}
